$pdf_mode = 4;
$lualatex = 'lualatex %O -interaction=nonstopmode -halt-on-error -file-line-error %S';
$out_dir = 'build';
$max_repeat = 6;
$makeindex = 'texindy -L english -C utf8 -o %D %S';

# Relocated Xindy installations can expose their root without its base modules.
# Preserve existing search roots and add their base directory when present.
if (defined $ENV{'XINDY_SEARCHPATH'}) {
  my @roots = split /:/, $ENV{'XINDY_SEARCHPATH'};
  $ENV{'XINDY_SEARCHPATH'} = join ':', map {
    -d "$_/base" ? ($_, "$_/base") : ($_)
  } @roots;
}
