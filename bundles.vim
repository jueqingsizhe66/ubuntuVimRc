set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/neocomplete'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
"Bundle 'honza/snipmate-snippets'
Bundle 'scrooloose/snipmate-snippets' 
"python
"Bundle 'honza/vim-snippets'
"Bundle 'mattn/zencoding-vim'
Bundle 'mattn/emmet-vim'
Bundle 'mattn/webapi-vim'
Bundle 'Raimondi/delimitMate'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
"Bundle 'edsono/vim-matchit'
Bundle 'jwhitley/vim-matchit'
    
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'

"-------------
" Other Utils
"-------------
" Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'


"--------------
" Color Schemes
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'
"Bundle 'https://github.com/jueqingsizhe66/Pydiction.git'
Bundle 'rkulla/pydiction'
"Bundle 'https://github.com/jueqingsizhe66/cscope.vim'
Bundle 'brookhong/cscope.vim'

"-----------------Here it all works without python

"------- web frontend ----------
Bundle 'othree/html5.vim'
" Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nono/jquery.vim'
" Bundle 'groenewege/vim-less'
" Bundle 'wavded/vim-stylus'
" Bundle 'nono/vim-handlebars'

"------- markup language -------
Bundle 'tpope/vim-markdown'
" Bundle 'timcharper/textile.vim'

"-----------------Here it all works without python
"
"

"------- FPs ------
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'wlangstroth/vim-racket'
" Bundle 'vim-scripts/VimClojure'
" Bundle 'rosstimson/scala-vim-support'


"fortran"
"Bundle 'https://github.com/jueqingsizhe66/fortran_line_length.vim'
"Bundle 'caglartoklu/fortran_line_length.vim'
"Bundle 'https://github.com/jueqingsizhe66/fortran.vim'
"Bundle 'https://github.com/jueqingsizhe66/fortran_codecomplete.vim'
"Bundle 'vim-scripts/fortran.vim'
"something wrong 5/6
"Bundle 'vim-scripts/fortran_codecomplete.vim'
" fortran
Bundle 'xiexinyls/vim'

"matlab
Bundle 'elmanuelito/vim-matlab-behave'

"" -------------------Here above all can be done without python
"I increase
"2015-4-29

" bash and perl support has been existed in the WolfgangMehner/vim-plugins
"Bundle 'vim-scripts/bash-support.vim'
"Bundle 'vim-scripts/perl-support.vim'

"---Ok
"Bundle 'artur-shaik/vim-javacomplete2'
Bundle 'kovisoft/slimv'

Bundle 'vim-perl/vim-perl'
Bundle 'WolfgangMehner/vim-plugins'

Bundle 'jceb/vim-orgmode'
Bundle 'tpope/vim-speeddating'
Bundle 'lukerandall/haskellmode-vim'
"Bundle 'vim-scripts/LaTex-Suite-aka-Vim-LaTex'
Bundle 'lervag/vimtex'
Bundle 'jcf/vim-latex'



Bundle 'adimit/prolog.vim'

"marker
"Bundle 'xsunsmile/showmarks'
Bundle 'kshenoy/vim-signature'
Bundle 'dimasg/vim-mark'
"git 1
Bundle 'airblade/vim-gitgutter'

Bundle 'skwp/greplace.vim'
Bundle 'Xuyuanp/nerdtree-git-plugin'

"multicursor
Bundle 'terryma/vim-multiple-cursors'
"python snippts~important
"Bundle 'SirVer/ultisnips'
"racket
Bundle 'wlangstroth/vim-racket'
Bundle 'vim-scripts/scribble.vim'
"Bundle 'http://www.vim.org/scripts/script.php?script_id=197'
"delete parts for lookupfile ,use CtrlP instead  and CtrlPFunc
"Bundle 'vim-scripts/genutils'
"Bundle 'vim-scripts/multvals.vim'
"Bundle 'vim-scripts/lookupfile'  "2010 deleted
" genutils can create tag for vim and lookupfile
"Bundle 'oldguan/CreateTags'


Bundle 'dbmrq/vim-chalk'

""
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

""support csv


Bundle 'chrisbra/csv.vim'

Bundle 'tacahiroy/ctrlp-funky'

" For java
Bundle 'yuratomo/java-api-complete'
Bundle 'yuratomo/java-api-javax'
Bundle 'yuratomo/java-api-org'
Bundle 'yuratomo/java-api-sun'
Bundle 'yuratomo/java-api-servlet2.3'
"Bundle 'yuratomo/java-api-android'
Bundle 'yuratomo/java-api-junit'

"strength the NerdTree, multiTags with one NerdTree
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'vim-ctrlspace/vim-ctrlspace'

Bundle 'tpope/vim-repeat'

"strength the tarbar
"Bundle 'xolox/vim-easytags'
"Bundle 'xolox/vim-misc'
"Bundle 'elentok/todo.vim'
Bundle 'freitass/todo.txt-vim'

Bundle 'mhinz/vim-startify'

":MRU
Bundle 'vim-scripts/mru.vim'

Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler.vim'
"sources for unite
Bundle 'Shougo/unite-outline'
Bundle 'Shougo/neomru.vim'
Bundle 'sgur/unite-everything'
" Bundle 'Shougo/vimproc.vim', {
" \ 'build' : {
" \     'windows' : 'tools\\update-dll-mingw',
" \     'cygwin' : 'make -f make_cygwin.mak',
" \     'mac' : 'make',
" \     'linux' : 'make',
" \     'unix' : 'gmake',
" \    },
" \ }
"
"
"" abbre
Bundle 'chip/vim-fat-finger'

Bundle 'wannesm/wmgraphviz.vim'
Bundle 'vim-scripts/gnuplot.vim'
Bundle 'mdlerch/vim-gnuplot'

Bundle 'jalvesaq/Nvim-R'
Bundle 'wdicarlo/vim-notebook'
Bundle 'vimoutliner/vimoutliner'

"" create a beautiful wiki in your local machine
Bundle 'vimwiki/vimwiki'

"" indent code with vertical bar
Bundle 'Yggdroot/indentLine'

" move the text object
Bundle 'matze/vim-move'

" update the function of F f T t

Bundle 'rhysd/clever-f.vim'

Bundle 'romainl/Apprentice'

"Bundle 'itchyny/calendar.vim'
Bundle 'mattn/calendar-vim'
filetype plugin indent on     " required!
