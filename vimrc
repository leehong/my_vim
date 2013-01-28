"this is my working vimrc config

runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
call pathogen#infect()
call pathogen#helptags()

"setting indent
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

set nocompatible
set backspace=2
set history=100
set nu
colorscheme candycode
"状态栏
set laststatus=2
"显示文件绝路径
set statusline=%F:\ %l
"tab宽度
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
set expandtab
set smarttab
"命令行下按tab键自动完成
set wildmode=list:full
set wildmenu
"通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
set hidden
set list listchars=tab:»·,trail:·

syntax on
filetype on
filetype indent on
filetype plugin on

set hlsearch
set incsearch
syntax enable
set t_Co=256

set nobackup
set noswapfile
set nowritebackup
set copyindent
set ignorecase
set smartcase
set smarttab
set expandtab
"设置SuperTab
let g:SuperTabRetainCompletionType="context"

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab
autocmd FileType eruby  set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
autocmd FileType html set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee set tabstop=2 shiftwidth=2
autocmd FileType *.{md,mdown,mkd,mkdn,markdown,mdwn} set tabstop=2 shiftwidth=2

fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    %s/\s\+$//e
endfun
autocmd BufWritePre * call StripTrailingWhitespace()

nnoremap <f12> :%s/[ \t\r]\+$//g<cr>
let NERDTreeShowBookmarks=0
let NERDTreeChDirMode=2
let NERDTreeMouseMode=2
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_open_on_gui_startup=0
" open directory of current opened file
map <leader>r :NERDTreeFind<cr>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let g:NERDTreeWinSize=30
" 设置Color-Sample
map <silent><F4> :NEXTCOLOR<cr>
map <silent><F3> :PREVCOLOR<cr>
map ca :Calendar<cr>

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
" setting vimviki
let g:vimwiki_camel_case = 0
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki'}]
let g:calendar_diary= [{'path': '~/Dropbox/vimwiki'}]

"在输入状态下将jj映射为esc
:imap jj <Esc>
" 插入模式下上下左右移动光标
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-j> <c-o>gj
inoremap <c-k> <c-o>gk
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
let g:Powerline_symbols='unicode'
"设置Fuzzyinder
let mapleader = "\\"
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>g :FufTag<CR>
map <leader>b :FufBuffer<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
noremap <silent> <F2> :NERDTreeMirrorToggle<CR>
