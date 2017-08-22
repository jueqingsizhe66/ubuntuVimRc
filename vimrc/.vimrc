"source ~/.vim/bundles.vim
source ~/.vim/myPlugManage.vim
let mapleader=','
"default mapleader is \ ,but I don't like it

"MyInfoMation
let g:BASH_AuthorName ='Ye Zhaoliang'
let g:BASH_Email      ='zhaoturkkey@163.com'
let g:BASH_Company    ='NCEPU'
let g:BASH_SyntaxCheckOptionsGlob  = "-O extglob"
let g:BASH_Debugger     = 'ddd'


"guangbiao
"if guangbiao is stoped for a while ,then no highlight
autocmd CursorHold * set nohlsearch

noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
"noremap * :set hlsearch<cr>*
"noremap # :set hlsearch<cr>#

"emmet vim
let g:user_emmet_leader_key='<leader>q'
let g:user_emmet_install_global =0

"for  Todo.txt
let g:todo_root="D:\Todo"
autocmd FileType html,css EmmetInstall
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
"let g:user_emmet_leader_key='<C-Z>,'
" encoding dectection
"Plugin 'mattn/emmet-vim'
"racket
au! BufRead,BufNewFile *.scrbl setfiletype scribble
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set foldmethod=manual
"set foldmethod=indent
"set foldmethod=marker
"gitgutter
let g:gitgutter_max_signs=1000
"vim-mark hightlight
let g:mwDefaultHighlightingPalette='extended'
let g:mwDefaultHighlightingNum=9
let g:mwDefaultHighlightPalette = [{'ctermbg':'Cyan','ctermfg':'Black','guibg':'#8CCBEA','guifg':'Black'}]
let g:mwAutoLoadMarks=1
let g:mwAutoSaveMarks=1
set viminfo+=%
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8 
" enable filetype dectection and ft specific plugin/indent
if has("autocmd")
    filetype plugin indent on
endif

if has('mouse')
    set mouse=a
endif

" enable syntax hightlight and completion
syntax on


"--------
" Vim UI
"--------
" color scheme
"set background=light
set background=dark
"let TERM=xterm
"set background=""

"color vividchalk  "the default setting  But Ichange it by zhaolaing
"color distinguished
"color monakai
"color blackboard
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"    "default value is normal
"g:solarized_termcolors=   16      |   256
"g:solarized_termtrans =   0       |   1
"g:solarized_degrade   =   0       |   1
"g:solarized_bold      =   1       |   0
"g:solarized_underline =   1       |   0
"g:solarized_italic    =   1       |   0
"g:solarized_contrast  =   "normal"|   "high" or "low"
"g:solarized_visibility=   "normal"|   "high" or "low"
"g:solarized_hitrail   =   0       |   1
"g:solarized_menu      =   1       |   0

"color apprentice
"set termguicolors will effect your vision
set termguicolors
let g:solarized_termcolors=256
let g:solarized_termtrans =1
let g:solarized_degrade   =1
let g:solarized_bold      =1
let g:solarized_underline =0
let g:solarized_italic    =0
let g:solarized_contrast  ="high"
let g:solarized_visibility="low"
let g:solarized_hitrail   =1
let g:solarized_menu      =0


"let g:solarized_contrast="low"    "default value is normal
" normal  high low
"let g:solarized_visibility="low"
let g:solarized_visibility="normal"
colorscheme solarized
"colorscheme desert
"colorscheme violet
"color desert
"color fisa

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

set nobackup 
" editor settings
set history=1000
set nocompatible
"set nofoldenable                                                 "disable folding
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
" I try to modify withe wrap
set wrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber


"fortran setting by zhaoliang"
"fortran's setting for rules
 "去掉固定格式每行开头的红色填充
let fortran_have_tabs = 1
"fortran folder setting"
let fortran_fold =1
let fortran_more_precise=1
let fortran_do_enddo=1
"auto to open the neocomplet"
"let g:NeoComplCache_EnableAtStartup=1
""""""""""""""""""""""""""""""""""""""""""""""""''''"
" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion, which require computational power and may stall the vim. 
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

let g:pydiction_menu_height = 20

"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

" cscope setting
" 2014-5-4x xintianjia 

if has("cscope")
   set csprg="D:\Program Files (x86)\Vim\vim80\cscope"              "指定用来执行 cscope 的命令
   set csto=1                             "先搜索tags标签文件，再搜索cscope数据库
   set cst                                "使用|:cstag|(:cs find g)，而不是缺省的:tag
   set nocsverb                           "不显示添加数据库是否成功
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out                   "添加cscope数据库
   endif
   set csverb                             "显示添加成功与否
endif
"cscope"
   " in case your cscope execute is not in system path.
    " let g:cscope_cmd = 'D:/tools/vim/cscope.exe'
    " s: Find this C symbol
    map <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
    " g: Find this definition
    map <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
    " d: Find functions called by this function
    map <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
    " c: Find functions calling this function
    map <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
    " t: Find this text string
    map <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
    " e: Find this egrep pattern
    map <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
    " f: Find this file
    map <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
    " i: Find files #including this file
    map <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
    map <leader>l :call ToggleLocationList()<CR>

"quickfix"
nmap <F7> :cn<cr>
nmap <F8> :cp<cr>

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

" powerline
"let g:Powerline_symbols = 'fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

" 
set path=**,e:/matlab-develop/**;

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" SuperTab
"let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
"nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nmap  <D-/> :
"nnoremap <leader>a :Ack
nnoremap <leader>a :Ack!<SPACE>
vmap <C-c> "+y    
nmap <C-v> "+p    
"nmap <C-a> gg0vG$


nnoremap <leader>v V`]

nmap <F8> ggO!!-*-coding:utf8-*-<CR>!     @Date    : <Esc>:read !date<CR>kJ<CR>i!     @email   : zhaoturkkey@163.com<CR>!     @author  : Ye zhaoliang<CR>!     @usage   :<CR>!          <CR>!     @input   : <CR>!          <CR>!     @outcome : <CR>!         <CR>!     @purpose : <CR>!        

"map by zhaoliang~~
"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guifont=Monaco:h13
    set showtabline=2
    set columns=140
    set lines=40
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt 
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif
"Bundle "https://github.com/vim-scripts/indentpython.vim--nianyang.git" 
let g:haddock_browser="/usr/bin/opera"
let g:haddock_docdir="/home/happycamp-of-lisp/doc"

"map <F11> :call AddFortranTitle()<cr>' s
"function AddFortranTitle()
"   call append(0,"!zhao*****************************************************!")
"   call append(1,"!                       DATA_READER                       !")
"   call append(2,"!            ---------------------------------            !")
"   call append(3,"!                     >>>>> SUBS <<<<<                    !")
"   call append(4,"!*********************************************************!")
"   echohl WarningMsg | echo "Successful in adding  the copyright."|echohl None
"endf
map <F8> o!zhao*****************************************************!<CR>!                       DATA_READER                       !<CR>!            ---------------------------------            !<CR>!                     >>>>> SUBS <<<<<                    !<CR>!*********************************************************!<CR><ESC>

"function AddFortranTitle()
"   i!zhao*****************************************************!<CR>
"   !                       DATA_READER                       !<CR>
"   !            ---------------------------------            !<CR>
"   !                     >>>>> SUBS <<<<<                    !<CR>
"   !*********************************************************!<CR>
"endf


"map <F9> :call AddFortranPart()<cr>' s
"function AddFortranPart()
"    call append(0,"!            ---------------------------------            !")
"    call append(1,"!                   PART1. FAST_WT MODEL                  !")
"    call append(2,"!            ---------------------------------            !")
"    call append(3,"!            ---------------------------------            !")
"    call append(4,"!                         LOAD DATA                       !")
"    call append(5,"!            ---------------------------------            !")
"    echohl WarningMsg | echo "Successful in adding  the copyright."|echohl None
"endf

map <F10> o!            ---------------------------------            !<CR>!                   PART1. FAST_WT MODEL                  !<CR>!            ---------------------------------            !<CR>!            ---------------------------------            !<CR>!                         LOAD DATA                       !<CR>!            ---------------------------------            !<CR><ESC>




" add and update the tile
map <F9> :call TitleDet()<cr>' s


function AddTitle()
    call append(0,"/*===================================================================")
    call append(1,"#")
    call append(2,"# Author : Ye Zhaoliang -- zhaoturkkey@163.com")
    call append(3,"#")
    call append(4,"# QQ : 977962857@qq.com ")
    call append(5,"#")
    call append(6,"# Last modified:	".strftime("%Y-%m-%d %H:%M"))
    call append(7,"#")
    call append(8,"# Filename:    ".expand("%:t"))
    call append(9,"#")
    call append(10,"# Description: ")
    call append(11,"#")
    call append(12,"===================================================================*/")
    echohl WarningMsg | echo "Successful in adding  the copyright."|echohl None
endf

" update the newest modified time and filename
"" the same  to normal '' to signal the position by vim(gvim)
function UpdateTitle()
    normal m'   
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updateing the copyright." | echohl None
endfunction

" determine whether there are "Last modified" words before the first 10 lines
" or not/
" If not ,it means there are no author information
" If yes, update it

function TitleDet()
    let n=1
    " default add
    while n < 10
        let line=getline(n)
        if line=~'^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n+1
    endwhile
    call AddTitle()
endfunction

"""""""""""""""""""""""""""""""""
"           其他设置            "
"""""""""""""""""""""""""""""""""
" 保存代码文件前自动修改最后修改时间
au BufWritePre *.sh
  \ call TimeStamp('#')
au BufWritePre .vimrc,*.vim
  \ call TimeStamp('"')
au BufWritePre *.c,*.h
  \ call TimeStamp('*')
au BufWritePre *.cpp,*.hpp
  \ call TimeStamp('//')
au BufWritePre *.f90
  \ call TimeStamp('!')
au BufWritePre *.m
  \ call TimeStamp('%{','%}')
au BufWritePre *.prolog,*.pro
  \ call TimeStamp('//')
au BufWritePre *.cxx,*.hxx
  \ call TimeStamp('//')
au BufWritePre *.java
  \ call TimeStamp('//')
au BufWritePre *.rb
  \ call TimeStamp('#')
au BufWritePre *.py
  \ call TimeStamp('#')
au BufWritePre Makefile
  \ call TimeStamp('#')
au BufWritePre *.php
  \ call TimeStamp('<?php //', '?>')
au BufWritePre *.html,*htm
  \ call TimeStamp('<!--', '-->')

" Last change用到的函数，返回时间，能够自动调整位置
function! TimeStamp(...)
  let sbegin = ''
  let send = ''
  if a:0 >= 1
  let sbegin = a:1.'\s*'
  if a:1 == '*'
    let sbegin = '\' . sbegin
  endif
  endif
  if a:0 >= 2
  let send = ' '.a:2
  endif
  let pattern = 'Last Change:.*'
    \. send
  let pattern = '^\s*' . sbegin . pattern . '\s*$'
  let now = strftime('%Y年%m月%d日 %H时%M分%S秒',
    \localtime())
  let row = search(pattern, 'n')
  if row != 0
  let curstr = getline(row)
  let col = match( curstr , 'Last')
  let leftcol = match(curstr,sbegin)
  let spacestr = repeat(' ',col - len(a:1)-leftcol)
  let leftspacestr = repeat(' ',leftcol)
  let now = leftspacestr . a:1 . spacestr . 'Last Change: '
    \. now . send
  call setline(row, now)
  endif
endfunction

""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
"autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.m,*.f90,*.prolog,*.pl,*.py exec ":call SetTitle()" 
autocmd BufNewFile *.m,*.f90,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
function SetTitle() 
  "如果文件类型为.sh文件 
  if &filetype == 'sh' 
    call setline(1,"\#########################################################################") 
    call append(line("."),   "\#    File Name: ".expand("%")) 
    call append(line(".")+1, "\#       Author: Ye Zhaoliang(yzl)") 
    call append(line(".")+2, "\#        Email: yzhaoliang@outlook.com") 
    call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
    call append(line(".")+4, "\#    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
    call append(line(".")+5, "\#########################################################################") 
    call append(line(".")+6, "\#!/bin/bash") 
    call append(line(".")+7, "") 
  elseif &filetype == 'perl' 
    call setline(1,"\#########################################################################") 
    call append(line("."),   "\#    File Name: ".expand("%")) 
    call append(line(".")+1, "\#       Author: Ye Zhaoliang(yzl)") 
    call append(line(".")+2, "\#        Email: yzhaoliang@outlook.com") 
    call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
    call append(line(".")+4, "\#    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
    call append(line(".")+5, "\#########################################################################") 
    call append(line(".")+6, "\#!/usr/bin/perl -w") 
    call append(line(".")+7, "") 

elseif &filetype == 'fortran'
    call setline(1, "!*************************************************************************") 
    call append(line("."),   "!    >    File Name: ".expand("%")) 
    call append(line(".")+1, "!    >       Author: Ye Zhaoliang(yzl)") 
    call append(line(".")+2, "!    >        Email: yzhaoliang@outlook.com") 
    call append(line(".")+3, "!    > Created Time: ".strftime("%c")) 
    call append(line(".")+4, "!    >    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
    call append(line(".")+5, "! ************************************************************************/") 
    call append(line(".")+6, "!")

elseif &filetype == 'matlab'
    call setline(1, "%*************************************************************************") 
    call append(line("."),   "%    >    File Name: ".expand("%")) 
    call append(line(".")+1, "%    >       Author: Ye Zhaoliang(yzl)") 
    call append(line(".")+2, "%    >        Email: yzhaoliang@outlook.com") 
    call append(line(".")+3, "%    > Created Time: ".strftime("%c")) 
    call append(line(".")+4, "%    >    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
    call append(line(".")+5, "% ************************************************************************/") 
    call append(line(".")+6, "%")


   else 
    call setline(1, "/*************************************************************************") 
    call append(line("."),   "    >    File Name: ".expand("%")) 
    call append(line(".")+1, "    >       Author: Ye Zhaoliang(yzl)") 
    call append(line(".")+2, "    >        Email: yzhaoliang@outlook.com") 
    call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
    call append(line(".")+4, "    >    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
    call append(line(".")+5, " ************************************************************************/") 
    call append(line(".")+6, "")
  endif
  if &filetype == 'cpp'
    call append(line(".")+7, "#include<iostream>")
    call append(line(".")+8, "using namespace std;")
    call append(line(".")+9, "")
  endif
  if &filetype == 'c'
    call append(line(".")+7, "#include<stdio.h>")
    call append(line(".")+8, "")
  endif
  "新建文件后，自动定位到文件末尾
  autocmd BufNewFile * normal G
endfunction


""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")                "设置tag文件的名字
let g:LookupFile_TagExpr = '"./filenametags"'
endif
"映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<cr>


"" create tags for lookupfile

"chalk setting
set foldmethod=marker

vmap zf <Plug>Chalk          " Create fold at visual selection
nmap zf <Plug>Chalk          " Create fold at operator movement
nmap zF <Plug>ChalkRange     " Create fold for specified number of lines

nmap Zf <Plug>SingleChalk    " Open single fold at current level
                             " or specified count
nmap ZF <Plug>SingleChalkUp  " Open single fold at next level
                             " or specified count

nmap =z <Plug>ChalkUp        " Increment current fold level
nmap -z <Plug>ChalkDown      " Decrement current fold level
vmap =z <Plug>ChalkUp        " Increment levels in selection
vmap -z <Plug>ChalkDown      " Decrement levels in selection


"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Ctrlp
"let g:ctrlp_funky_sh_type = 'bash' "default bash    you can set zsh
let g:ctrlp_funky_multi_buffers = 1
let g:ctrlp_funky_syntax_highlight = 1
"enable cache
let g:ctrlp_funky_use_cache = 1
" CtrlP for NerdTree
let g:ctrlp_funky_nerdtree_include_files = 1 
"ctrl[-func
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>"

"let g:airline_theme='alduin'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
"let g:airline_theme='base16_spacemacs'
"
"
"For your nerdCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1



"java
"autoload java-api-complete
au BufNewFile,BufRead *.java    setl omnifunc=javaapi#complete
"show status refarence
au CompleteDone *.java          call javaapi#showRef()
au BufNewFile,BufRead *.java    inoremap <expr> <c-down> javaapi#nextRef()
au BufNewFile,BufRead *.java    inoremap <expr> <c-up>   javaapi#prevRef()

"balloon help

if has("balloon_eval") && has("balloon_multiline") 
  au BufNewFile,BufRead *.java  setl bexpr=javaapi#balloon()
  au BufNewFile,BufRead *.java  setl ballooneval
endif

"delay load class defines

let g:javaapi#delay_dirs = [
  \ 'java-api-javax',
  \ 'java-api-org',
  \ 'java-api-sun',
  \ 'java-api-servlet2.3',
  \ 'java-api-android',
  \ ]
"
"
set tags+=./tags,expand(perlTags1)/tags,$env_perlTags2/tags,$env_perlTags3/tags,$env_perlTags4/tags

"Ctrl-Space
if has("gui_running")
    " Settings for MacVim and Inconsolata font
    let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
endif

let g:CtrlSpaceSearchTiming = 500
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
"hidden is needed for CtrlSpace
set nocompatible
set hidden
"let g:ctrlspace_default_mapping_key="<leader><F2>"
nnoremap <F2> :CtrlSpace O<CR>
let g:CtrlSpaceHeight=1


"" tab encapsulation
" tab 操作
" http://vim.wikia.com/wiki/Alternative_tab_navigation
" http://stackoverflow.com/questions/2005214/switching-to-a-particular-tab-in-vim

" tab切换
map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>

map <leader>tj :tabnext<cr>
map <leader>tk :tabprev<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>

map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>

" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Toggles between the active and last active tab "
" The first tab is always 1 "
let g:last_active_tab = 1
" nnoremap <leader>gt :execute 'tabnext ' . g:last_active_tab<cr>
" nnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
" vnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
autocmd TabLeave * let g:last_active_tab = tabpagenr()

" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

"easytags   ctags -R ~/.vim
"let g:easytags_file = '~/.vim/tags'

"for vimfiler
let g:vimfiler_enable_auto_cd=1
"call vimfiler#set_execute_file('txt', 'notepad')
call vimfiler#set_execute_file('txt', 'gvim')
call vimfiler#set_execute_file('c', ['gvim', 'notepad'])

let g:vimfiler_as_default_explorer = 1

" Enable file operation commands.
" Edit file by tabedit.
"call vimfiler#custom#profile('default', 'context', {
"      \ 'safe' : 0,
"      \ 'edit_action' : 'tabopen',
"      \ })

" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_safe_mode_by_default=0

	" Use trashbox.
	" Windows only and require latest vimproc.
let g:unite_kind_file_use_trashbox = 1
""  you can create a .vim file, then source it
"need everything.exe
"nnoremap <Leader>f :Unite file buffer file_rec file_mru everything<CR>
nnoremap <Leader>f :VimFiler<CR>
nnoremap <leader>l :Unite line<CR>
let g:unite_source_everything_limit = 100
let g:unite_source_everything_full_path_search = 1
let g:unite_source_everything_posix_regexp_search = 1
let g:unite_source_everything_async_minimum_length = 3
"et g:unite_source_everything_cmd_path = 'C:\\Users\\YeZhao\\.vim\\es\\es.exe'

set makeprg=perl\ %<.pl
"et g:Perl_Executable='D:\Perl\perl\bin\perl.exe'

"let g:Matlab_GlbTemplateFile='C:/Users/YeZhao/.vim/vim-plugins/matlab-support/templates/Templates'
"let g:Matlab_GlbTemplateFile=$HOME.'/vim-plugins/matlab-support/templates/Templates'
"et s:Matlab_LclTemplateFile=$HOME.'/vim-plugins/matlab-support/templates/Templates'
"et g:Matlab_MlintExecutable = 'D:/Program Files/MATLAB/R2017a/bin/win64/mlint.exe'

"let g:Git_Executable = 'D:\Program Files\Git\bin\git.exe'
"let g:Git_Executable = 'gitk'
"et g:Git_GitKExecutable = 'D:\Program Files\Git\cmd\gitk.exe'
"et g:Git_GitKScript     = 'D:\Program Files\Git\cmd\gitk'
"et g:Git_GitBashExecutable= 'D:\Program Files\Git\bin\sh.exe'
let g:Git_Executable = 'git'
"let g:Git_BinPath='D:\Program Files\Git\bin\'


if executable('ag')
  let g:ackprg = 'ag'
endif

" notebook.vim configuration file
" 
let g:nb_notebook = "hello_world"
let g:nb_categories = ['CHECK', 'CLASS', 'CODE', 'CONDITION', 'DEBUG', 'DEFINE', 'DEFINITION', 'DUMMY', 'ENUM', 'FIX', 'FUNCTION', 'HACK', 'INCLUDE', 'INFORMATION', 'INITIALIZATION', 'INTERESTING', 'LOG', 'LOGGING', 'MEMORY', 'MESSAGE', 'METHOD', 'NONE', 'NOTE', 'STRUCT', 'STUDY', 'TEMPLATE', 'TEST', 'TODO', 'TYPE', 'VARIABLE', 'WORKAROUND']


"" for wiki
nnoremap <C-X> <Plug>VimwikiToggleListItem
let g:vimwiki_folding='list'

"" when the project done  checkbox will be hl
let g:vimwiki_hl_cb_checked=1
let g:vimwiki_list_ignore_newline=0

"let g:vimwiki_hi_headers=1
"hi VimwikiHeader1 guifg=#FF0000
let g:vimwiki_conceallevel=1
let g:vimwiki_url_maxsave=100

hi VimwikiHeader1 guifg=#FF0000
hi VimwikiHeader2 guifg=#00FF00
hi VimwikiHeader3 guifg=#FFFF00
hi VimwikiHeader4 guifg=#FF00FF
hi VimwikiHeader5 guifg=#00FFFF
hi VimwikiHeader6 guifg=#0000FF

"set t_Co=256
"set termguicolors 

"" for vim-move
let g:move_key_modifier='C'

let g:vimwiki_use_calendar=1
let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'~/.vim/vwtags.py'
          \ , 'ctagsargs': 'all'
          \ }

"inoremap <CR> <Esc>:VimwikiReturn 1 5<CR>
"inoremap <S-CR> <Esc>:VimwikiReturn 2 2<CR>



"" for vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

""ctrlspace
if executable("ag")
    let g:CtrlSpaceGlobCommand='ag -l --hidden --nocolor -g ""'
endif

" for nerdtree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('pl', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('wiki', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('f90', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('java', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('java', 'Magenta', 'none', '#ff00ff', '#151515')

"nerdtree tag  strength the nerdtree   makes one nerdtree in all tabs
"ubuntu not open automatically
let g:nerdtree_tabs_open_on_console_startup=1



"Autoopen NERDTree on GVim / MacVim startup
"let g:nerdtree_tabs_open_on_console_startup=1
nnoremap g<LocalLeader> :call setline(line('.'),substitute(getline('.'),'\\','\/','g'))<CR>
nnoremap gd<LocalLeader> :call setline(line('.'),substitute(getline('.'),'\\','\\\\','g'))<CR>



function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

""在这里会启动increase-fuzzy函数 converters中定义
 noremap <silent><expr> /  incsearch#go(<SID>config_easyfuzzymotion())
 noremap <silent><expr> ?  incsearch#go(<SID>config_easyfuzzymotion({'command': '?'}))
 noremap <silent><expr> g/ incsearch#go(<SID>config_easyfuzzymotion({'is_stay': 1}))

autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

"when opening a file or bookmark change to its directory
"very important paper,should be bookmarked , file and dirs
let g:startify_change_to_dir = 1
let g:startify_list_order = ['files', 'bookmarks', 'sessions',
    \ 'commands']
let g:startify_list_order = [
        \ ['MRU:'],
        \ 'files',
        \ ['   These are my sessions:'],
        \ 'sessions',
        \ ['Bookmarks:'],
        \ 'bookmarks',
        \ ['Commands:'],
        \ 'commands',
        \ ]


let g:startify_bookmarks = [{'c': '~/.vimrc'},{'m': '~/.vim/myPlugManage.vim'},'/Todo/todo.txt',{'a': '~/.vim/bundle/vim-fat-finger/plugin/fat-finger.vim'}]
let g:startify_commands = [
    \ ':help reference',
    \ ['Vim Reference', 'h ref'],
    \ {'h': 'h ref'},
    \ ':h easymotion',
    \ ':h startify',
    \ ':h easyalign',
    \ ':h usr42.txt',
    \ ':h vim-asterisk',
    \ ':h nerdcommenter',
    \ ':h indexed',
    \ ':h splitjoin',
    \ ]
"" for vim operator-flashy
"map y <Plug>(operator-flashy)
"nmap Y <Plug>(operator-flashy)$


"" for vim-asterisk
"map *   <Plug>(asterisk-*)
"ap #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)
let g:asterisk#keeppos = 1


"" for vim-textobj-user
call textobj#user#plugin('datetime', {
\   'date': {
\     'pattern': '\<\d\d\d\d-\d\d-\d\d\>',
\     'select': ['ad', 'id'],
\   },
\   'time': {
\     'pattern': '\<\d\d:\d\d:\d\d\>',
\     'select': ['at', 'it'],
\   },
\ })



call textobj#user#plugin('line', {
\   '-': {
\     'select-a-function': 'CurrentLineA',
\     'select-a': 'ao',
\     'select-i-function': 'CurrentLineI',
\     'select-i': 'io',
\   },
\ })

function! CurrentLineA()
  normal! 0
  let head_pos = getpos('.')
  normal! $
  let tail_pos = getpos('.')
  return ['v', head_pos, tail_pos]
endfunction

function! CurrentLineI()
  normal! ^
  let head_pos = getpos('.')
  normal! g_
  let tail_pos = getpos('.')
  let non_blank_char_exists_p = getline('.')[head_pos[2] - 1] !~# '\s'
  return
  \ non_blank_char_exists_p
  \ ? ['v', head_pos, tail_pos]
  \ : 0
endfunction


"" for vim-copy-file
nmap <leader>cp :CopyRelativePath<CR>
nmap <leader>cl :CopyRelativePathAndLine<CR>
nmap <leader>cP :CopyAbsolutePath<CR>
nmap <leader>cf :CopyFileName<CR>
nmap <leader>cd :CopyDirectoryPath<CR>
map <F3> :call ToggleSketch()<cr>


" for vim-devicons 
"
set encoding=utf-8
set guifont=Ubuntu-MI
"set guifont=DroidSansMonoFor\ Nerd\ Font 
"set guifont=DroidSansMono\ Nerd\ Font
"set guifont=DroidSansMonoForPowerline\ Nerd\ Font 
" required if using https://github.com/bling/vim-airline
let g:airline_powerline_fonts=1
" loading the plugin 
let g:webdevicons_enable = 1

" adding the flags to NERDTree 
let g:webdevicons_enable_nerdtree = 1

" adding the custom source to unite 
let g:webdevicons_enable_unite = 1

" adding the column to vimfiler 
let g:webdevicons_enable_vimfiler = 1

" adding to vim-airline's tabline 
let g:webdevicons_enable_airline_tabline = 1

" adding to vim-airline's statusline 
let g:webdevicons_enable_airline_statusline = 1

" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1

" adding to flagship's statusline 
let g:webdevicons_enable_flagship_statusline = 1

" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" use double-width(1) or single-width(0) glyphs 
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags 
let g:webdevicons_conceal_nerdtree_brackets = 1

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

" Force extra padding in NERDTree so that the filetype icons line up vertically 
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For nerdTreeSyntaxHighlight
"
"
" let g:NERDTreeDisableFileExtensionHighlight = 1
" let g:NERDTreeDisableExactMatchHighlight = 1
" let g:NERDTreeDisablePatternMatchHighlight = 1

"
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb



""nerdtree git plugin
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ "Unknown"   : "?"
"     \ }
