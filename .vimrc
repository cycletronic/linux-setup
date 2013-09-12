set nocompatible
call pathogen#infect()
filetype plugin indent on
syntax enable
setlocal nospell spelllang=en_us
set spellfile=~/research/spelling.add
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

set guifont=Liberation\ Mono\ 12
set ruler
set history=200
set wrap linebreak textwidth=0
set scrolloff=10
set nu!
set smartcase
syntax on
set lazyredraw
let g:scaleFontSize=12
let g:scaleFontWidth=9

set tags+=tags;~
set path+=**
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

let mapleader=","

" Commands specific to 5D Robotics
command -nargs=1 FindInBehaviorEngine vimgrep <args> **/*.cpp **/*.c **/*.h **/*.txt **/*.config **/*.disabled
command FindCurrentWordInBehaviorEngine vimgrep <cword> **/*.cpp **/*.c **/*.h **/*.txt **/*.config **/*.disabled
map <leader>f :FindCurrentWordInBehaviorEngine<CR>

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
set showmatch
set ignorecase
set showmode
set ts=4
set sw=4
set autoindent
set smartindent
let g:pydiction_menu_height = 10
let g:pydiction_location = '/home/alan/pydiction-1.2/complete-dict'
let g:Tex_FormatDependency_pdf = 'pdf'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'
let g:Tex_CompileRule_dvi = 'latex -interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Pdownload35 -t letter -o $*.ps $*.dvi'
"let g:Tex_CompileRule_pdf = 'ps2pdf -dCompatibilityLevel=1.4 -dAlwaysEmbed=true -dEmbedAllFonts=true -dAutoFilterGrayImages=false -dAutoFilterColorImages=false -dColorImageFilter=/FlateEncode -dGrayImageFilter=/FlateEncode -dModoImageFilter=/FlateEncode $*.ps'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
"let g:Tex_CompileRule_pdf = 'ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.4 -dSubsetFonts=true -dEmbedAllFonts=true -dAutoFilterGrayImages=false -dAutoFilterColorImages=false -dColorImageFilter=/FlateEncode -dGrayImageFilter=/FlateEncode -dMonoImageFilter=/FlateEncode $*.ps'
let g:Tex_ViewRule_pdf='okular'
let g:tex_comment_nospell=1

set background=light
colorscheme solarized

set t_Co=256
let g:solarized_termcolors=256
