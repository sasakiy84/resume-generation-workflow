#!/usr/bin/env perl

# tex options
$lualatex     = 'lualatex -interaction=nonstopmode';
$pdflualatex  = $lualatex;
$biber        = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex       = 'bibtex %O %B';
$makeindex    = 'mendex %O -o %D %S';
$max_repeat   = 5;
$pdf_mode     = 4;

# local config
$local_latexmkrc_path = './.latexmkrc.local';
require $local_latexmkrc_path if -e $local_latexmkrc_path;