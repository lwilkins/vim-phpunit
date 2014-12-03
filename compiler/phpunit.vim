" Vim compiler file
" Compiler:	    PHPUnit
" Maintainer:	  Ben Godfrey <ben@ben2.com>
" URL:		      https://github.com/afternoon/vim-phpunit
" Last Change:	2013 Dec 3

if exists("current_compiler")
  finish
endif
let current_compiler = "phpunit"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=rake\ test\[$*\]

CompilerSet errorformat=
            \%E%n)\ %.%#,
            \%Z/vagrant/%f:%l,
            \%C%m,
            \%-G%.%#%m,
            \%-G,
"First line captures the error number
"Second line captures the file path and line number
"Third line captures the test error message
"Last two patterns ignore any other lines with any character on an empty lines
"respectively
