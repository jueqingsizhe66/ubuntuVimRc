call plug#begin('~/.vim/bundle')

"" where to store the plugins
"------------------
" Code Completions
"------------------
Plug 'Shougo/neocomplcache'
"Plug 'Shougo/neocomplete'
Plug 'garbas/vim-snipmate'
Plug 'ervandew/supertab'
"Plug 'honza/snipmate-snippets'
Plug 'scrooloose/snipmate-snippets' 
"python
Plug 'honza/vim-snippets'
"Plug 'mattn/zencoding-vim'
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'
Plug 'Raimondi/delimitMate'
"------ snipmate dependencies -------
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
"Plug 'edsono/vim-matchit'
Plug 'jwhitley/vim-matchit'

Plug 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Plug 'scrooloose/nerdtree'
"Plug 'humiaozuzu/TabBar'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-powerline'
Plug 'scrooloose/syntastic'
Plug 'bronson/vim-trailing-whitespace'

"-------------
" Other Utils
"-------------
" Plug 'humiaozuzu/fcitx-status'
Plug 'nvie/vim-togglemouse'


"--------------
" Color Schemes
"--------------
Plug 'rickharris/vim-blackboard'
Plug 'altercation/vim-colors-solarized'
Plug 'rickharris/vim-monokai'
Plug 'tpope/vim-vividchalk'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'fisadev/fisa-vim-colorscheme'
"Plug 'https://github.com/jueqingsizhe66/Pydiction.git'
Plug 'rkulla/pydiction'
"Plug 'https://github.com/jueqingsizhe66/cscope.vim'
Plug 'brookhong/cscope.vim'

"-----------------Here it all works without python

"------- web frontend ----------
Plug 'othree/html5.vim'
" Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'nono/jquery.vim'
" Plug 'groenewege/vim-less'
" Plug 'wavded/vim-stylus'
" Plug 'nono/vim-handlebars'

"------- markup language -------
Plug 'tpope/vim-markdown'
" Plug 'timcharper/textile.vim'

"-----------------Here it all works without python
"
"

"------- FPs ------
Plug 'kien/rainbow_parentheses.vim'
" Plug 'wlangstroth/vim-racket'
" Plug 'vim-scripts/VimClojure'
" Plug 'rosstimson/scala-vim-support'


"fortran"
"Plug 'https://github.com/jueqingsizhe66/fortran_line_length.vim'
"Plug 'caglartoklu/fortran_line_length.vim'
"Plug 'https://github.com/jueqingsizhe66/fortran.vim'
"Plug 'https://github.com/jueqingsizhe66/fortran_codecomplete.vim'
"Plug 'vim-scripts/fortran.vim'
"something wrong 5/6
"Plug 'vim-scripts/fortran_codecomplete.vim'
" fortran
Plug 'xiexinyls/vim'

"matlab
Plug 'elmanuelito/vim-matlab-behave'

"" -------------------Here above all can be done without python
"I increase
"2015-4-29

" bash and perl support has been existed in the WolfgangMehner/vim-plugins
"Plug 'vim-scripts/bash-support.vim'
"Plug 'vim-scripts/perl-support.vim'

"---Ok
"Plug 'artur-shaik/vim-javacomplete2'
"Plug 'kovisoft/slimv'

Plug 'vim-perl/vim-perl'
Plug 'WolfgangMehner/vim-plugins'

Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'lukerandall/haskellmode-vim'
"Plug 'vim-scripts/LaTex-Suite-aka-Vim-LaTex'
Plug 'lervag/vimtex'
Plug 'jcf/vim-latex'



Plug 'adimit/prolog.vim'

"marker
"Plug 'xsunsmile/showmarks'
Plug 'kshenoy/vim-signature'
Plug 'dimasg/vim-mark'
"git 1
Plug 'airblade/vim-gitgutter'

Plug 'skwp/greplace.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

"multicursor
Plug 'terryma/vim-multiple-cursors'
"python snippts~important
"Plug 'SirVer/ultisnips'
"racket
Plug 'wlangstroth/vim-racket'
Plug 'vim-scripts/scribble.vim'
"Plug 'http://www.vim.org/scripts/script.php?script_id=197'
"delete parts for lookupfile ,use CtrlP instead  and CtrlPFunc
"Plug 'vim-scripts/genutils'
"Plug 'vim-scripts/multvals.vim'
"Plug 'vim-scripts/lookupfile'  "2010 deleted
" genutils can create tag for vim and lookupfile
"Plug 'oldguan/CreateTags'


Plug 'dbmrq/vim-chalk'

""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""support csv


Plug 'chrisbra/csv.vim'

Plug 'tacahiroy/ctrlp-funky'

" For java
Plug 'yuratomo/java-api-complete'
Plug 'yuratomo/java-api-javax'
Plug 'yuratomo/java-api-org'
Plug 'yuratomo/java-api-sun'
Plug 'yuratomo/java-api-servlet2.3'
"Plug 'yuratomo/java-api-android'
Plug 'yuratomo/java-api-junit'

"strength the NerdTree, multiTags with one NerdTree
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'tpope/vim-repeat'

"strength the tarbar
"Plug 'xolox/vim-easytags'
"Plug 'xolox/vim-misc'
"Plug 'elentok/todo.vim'
Plug 'freitass/todo.txt-vim'

Plug 'mhinz/vim-startify'

":MRU
Plug 'vim-scripts/mru.vim'

Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
"sources for unite
Plug 'Shougo/unite-outline'
Plug 'Shougo/neomru.vim'
Plug 'sgur/unite-everything'
" Plug 'Shougo/vimproc.vim', {
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
Plug 'chip/vim-fat-finger'

Plug 'wannesm/wmgraphviz.vim'
Plug 'vim-scripts/gnuplot.vim'
Plug 'mdlerch/vim-gnuplot'
" R lanagage
Plug 'jalvesaq/Nvim-R'
"Plug 'vim-scripts/Vim-R-plugin'
Plug 'wdicarlo/vim-notebook'
Plug 'vimoutliner/vimoutliner'

Plug 'vimwiki/vimwiki'
"" code align vertical bar
Plug 'Yggdroot/indentLine'

" modve the code textobject
Plug 'matze/vim-move'

"" update the operation of f and F t and T
Plug 'rhysd/clever-f.vim'

"" color to let you look better  set termguicolors
Plug 'romainl/Apprentice'

"Plug 'itchyny/calendar.vim'
Plug 'mattn/calendar-vim'


Plug 'junegunn/vim-easy-align'
Plug 'junegunn/gv.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'roosta/vim-srcery'

""
" If installed using git
Plug '~/.fzf'


Plug 'tpope/vim-rhubarb'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-speeddating'

Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
""for conventer
Plug 'haya14busa/incsearch-fuzzy.vim'

Plug 'haya14busa/vim-asterisk'
"" see your yawed part
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'

"" underline the word at the current current
Plug 'itchyny/vim-cursorword'
Plug 'henrik/vim-indexed-search'

Plug 'AndrewRadev/splitjoin.vim'

" another kana object

Plug 'kana/vim-textobj-user'
"" va` vi`
""Plug 'fvictorio/vim-textobj-backticks'
Plug 'jceb/vim-textobj-uri'
Plug 'kana/vim-textobj-fold'


Plug 'AdamWhittingham/vim-copy-filename'


Plug 'vim-scripts/txt.vim'
Plug 'vim-scripts/SQLComplete.vim'
Plug 'will133/vim-dirdiff'


Plug 'vim-scripts/sketch.vim'
Plug 'hrj/vim-DrawIt'

Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'


Plug 'vim-scripts/paredit.vim'



Plug 'bronson/vim-trailing-whitespace'

Plug 'rking/ag.vim'

call plug#end()




filetype plugin indent on     " required!
