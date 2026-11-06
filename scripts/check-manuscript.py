#!/usr/bin/env python3
"""Check the book's source graph, citations, labels, and substantive chapters."""
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
errors = []


def fail(message):
    errors.append(message)


main = (ROOT / 'from-cat-to-android.ltx').read_text()
inputs = re.findall(r'\\(?:input|include)\{([^}]+)\}', main)
texts = [main]
for name in inputs:
    path = ROOT / (name if name.endswith('.ltx') else name + '.ltx')
    if not path.is_file():
        fail(f'Missing input: {path.relative_to(ROOT)}')
    else:
        texts.append(path.read_text())

chapter_paths = [ROOT / f'chapters/chapter-{number}.ltx' for number in range(1, 21)]
for number, path in enumerate(chapter_paths, 1):
    if not path.exists():
        fail(f'Missing chapter {number}')
        continue
    text = path.read_text()
    if len(re.findall(r'\\chapter\{', text)) != 1:
        fail(f'{path.name}: expected one chapter heading')
    if len(re.findall(r'\\section\{', text)) < 5:
        fail(f'{path.name}: expected a developed section structure')
    if len(re.findall(r"\b[\w'-]+\b", text)) < 1200:
        fail(f'{path.name}: chapter appears incomplete')
    if not re.search(r'\\(?:paren|text)cite', text):
        fail(f'{path.name}: missing source attribution')
    if [name.removesuffix('.ltx') for name in inputs].count(f'chapters/chapter-{number}') != 1:
        fail(f'{path.name}: must be loaded exactly once')

loaded_paths = {name.removesuffix('.ltx') for name in inputs}
for path in (ROOT / 'chapters').glob('*.ltx'):
    if path.relative_to(ROOT).with_suffix('').as_posix() not in loaded_paths:
        fail(f'Unloaded manuscript file: {path.name}')

all_text = '\n'.join(texts)
keys = set(re.findall(r'@\w+\s*\{\s*([^,\s]+)', (ROOT / 'references.bib').read_text()))
used_keys = set()
for group in re.findall(r'\\(?:paren|text|auto|foot)?cite\*?(?:\[[^]]*\])*\{([^}]+)\}', all_text):
    used_keys.update(key.strip() for key in group.split(','))
for key in sorted(used_keys - keys):
    fail(f'Undefined citation: {key}')

labels = re.findall(r'\\label\{([^}]+)\}', all_text)
for label in set(labels):
    if labels.count(label) > 1:
        fail(f'Duplicate label: {label}')
for group in re.findall(r'\\(?:c|C|page)?ref\{([^}]+)\}', all_text):
    for label in group.split(','):
        if label.strip() not in labels:
            fail(f'Undefined reference: {label}')

for name, text in zip(['main'] + inputs, texts):
    for token in ['TODO', 'FIXME', 'TBD', 'Include chapters here', 'placeholder']:
        if token in text:
            fail(f'{name}: unfinished marker {token!r}')
    for begin in re.findall(r'\\begin\{([^}]+)\}', text):
        if len(re.findall(r'\\begin\{' + re.escape(begin) + r'\}', text)) != len(
                re.findall(r'\\end\{' + re.escape(begin) + r'\}', text)):
            fail(f'{name}: unbalanced {begin} environment')

if errors:
    print('\n'.join('ERROR: ' + error for error in errors), file=sys.stderr)
    sys.exit(1)
print(f'Checked 20 chapters, {len(inputs)} manuscript inputs, '
      f'{len(used_keys)} citation keys, and {len(labels)} labels.')
