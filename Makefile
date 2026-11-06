.PHONY: all book check clean

all: book

book:
	latexmk from-cat-to-android.ltx

check:
	python3 scripts/check-manuscript.py

clean:
	latexmk -C from-cat-to-android.ltx
