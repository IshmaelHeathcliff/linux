"显示行号
set number

"去掉边框
"set guioption=

"配色方案
set term=xterm
set t_Co=256
colorscheme solarized

if $COLORTERM == 'truecolor'
    set termguicolors
    colorscheme s
else
    set term=xterm
    set t_Co=256
    colorscheme solarized
endif

"背景色
set background=dark

"启动时隐去援助提示
set shortmess=atI

"语法高亮
syntax on

"系统剪贴板
set clipboard=unnamed

"不需要备份
set nobackup

"tab缩进
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"文件自动检测外部更改
set autoread

"c文件自动缩进
"set cindent

"自动对齐
"set autoindent

"智能缩进
"set smartindent

"高亮查找匹配
set hlsearch

"增量查找
set incsearch

"智能搜索
set ignorecase
set smartcase

"显示匹配
set showmatch

"显示标尺，就是在右下角显示光标位置
set ruler

"去除vi的一致性
set nocompatible

"允许折叠
set foldenable
set foldmethod=marker
"execute pathogen#infect()
"filetype plugin indent on
"""""""""""""""""设置折叠"""""""""""""""""""""
"
"根据语法折叠
"set fdm=syntax

"手动折叠
"set fdm=manual

"设置键盘映射，通过空格设置折叠
"nnoremap <space> @=((foldclosed(line('.')<0)?'zc':'zo'))<CR>
""""""""""""""""""""""""""""""""""""""""""""""
"不要闪烁
"set novisualbell

"启动显示状态行
set laststatus=2

"浅色显示当前行
"autocmd InsertLeave * se nocul

"用浅色高亮当前行
"autocmd InsertEnter * se cul

"显示输入的命令
set showcmd

"被分割窗口之间显示空白
set fillchars=vert:/

set fillchars=stl:/

set fillchars=stlnc:/

"智能搜索高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
nnoremap <c-h> :call DisableHighlight()<cr> 
function! DisableHighlight()
    set nohlsearch
endfunc

"映射
let g:mapleader = "\<Space>" 
let g:maplocalleader = ',' 
imap jj <Esc>
nmap ; :
nmap <leader>w :w<CR>
nmap <leader>a :wq<CR>
nmap <leader>q :q<CR>
nmap <leader>` :shell<CR>
nmap j gj
nmap k gk
nmap - %
nmap <leader>h ^
nmap <leader>l $
map <C-n> :NERDTreeToggle<CR>
map <leader>t <C-w>w

"配置立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"插件配置
"vim-plug
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'joker1007/vim-markdown-quote-syntax'
Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
call plug#end()

"coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>" 
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"ale
let g:ale_linters = {'python': ['pyls'], 'cs': ['mcs']}
let g:ale_fixers = {'python': ['autopep8'], 'cs': ['mcs']}
nmap <leader>f :ALEFix<CR>

"airline
let g:airline_solarized_bg='light'
let g:airline_theme='solarized'
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
