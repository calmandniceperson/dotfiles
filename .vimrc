set nocompatible              " be iMproved, required
filetype off                  " required

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'nsf/gocode', {'rtp': 'nvim/'}
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'fatih/molokai'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'sickill/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'vivien/vim-linux-coding-style'
Plug 'davidhalter/jedi-vim'
Plug 'plasticboy/vim-markdown'
Plug 'morhetz/gruvbox'
Plug 'udalov/kotlin-vim'
Plug 'OrangeT/vim-csharp'
Plug 'OmniSharp/omnisharp-vim'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'ChrisKempson/Tomorrow-Theme'
"Plug 'bling/vim-bufferline'
Plug 'vim-scripts/vibrantink'
Plug 'scrooloose/nerdtree'                            " File tree browser
Plug 'Xuyuanp/nerdtree-git-plugin'                    " Git for NerdTree
Plug 'rbgrouleff/bclose.vim'                          " Close current buffer
Plug 'tpope/vim-fugitive'                             " Git integration<Paste>
Plug 'chrisbra/Colorizer'                             " Show hex codes as colours
Plug 'kien/rainbow_parentheses.vim'                   " Colour matched brackets
Plug 'arkwright/vim-whiteboard'                       " Whiteboard
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'                         " Git diff in side
Plug 'itchyny/lightline.vim'
call plug#end()
" Required:
filetype plugin indent on

" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

let g:python3_host_prog  = '/usr/bin/python'
" Skip the check of neovim module
let g:python3_host_skip_check = 1
" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

setlocal tabstop=8
setlocal shiftwidth=8
setlocal softtabstop=8
setlocal textwidth=80
setlocal noexpandtab
set autoindent
set smartindent

" 80 characters limit
" execute "set colorcolumn=" . join(range(81,335), ',')
highlight ColorColumn ctermbg=Black ctermfg=DarkRed
set colorcolumn=81

" highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" GO
" Some linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force vim to reload them
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_builds_constraints = 1
let g:go_highlight_generate_tags = 1

" Rust
set hidden
let g:racer_cmd = "/home/inet/.cargo/bin/racer"
let $RUST_SRC_PATH="/usr/local/src/rust/src/"

set runtimepath+=~/.vim_runtime

" show line numbers
set number relativenumber

" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeChDirMode=2
let g:NERDTreeDirArrowExpandable = '├'
let g:NERDTreeDirArrowCollapsible = '└'
let g:NERDTreeMapActivateNode = '<tab>'
set mouse=a

let g:rehash256 = 1

" show tabs and spaces
" set list

" put cursor between brackets
inoremap {<CR> {<CR>}<C-o>O

" devicons
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" LightLine
"let g:lightline = {
"			\'colorscheme': 'one'
"			\}
"set laststatus=2

syntax enable
" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
"let g:airline_theme='wombat'
let g:airline_theme='onedark'

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" hide tab line at the top
set showtabline=0

set background=dark " for the dark version
set termguicolors
" set background=light " for the light version
"colorscheme onedark
colorscheme CandyPaper
