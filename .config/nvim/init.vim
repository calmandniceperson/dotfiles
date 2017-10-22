set nocompatible              " be iMproved, required
filetype off                  " required

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'wakatime/vim-wakatime'

" Autocompletion
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'zchee/deoplete-clang'
Plugin 'zchee/deoplete-go', { 'do': 'make'}
Plugin 'sebastianmarkow/deoplete-rust'
"Plugin 'zchee/deoplete-jedi'

"Languages
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'nvim/'}
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

" Themes
Plugin 'joshdick/onedark.vim'
Plugin 'rakr/vim-one'
Plugin 'ayu-theme/ayu-vim'
Plugin 'chriskempson/base16-vim'
Plugin 'morhetz/gruvbox'
Plugin 'ChrisKempson/Tomorrow-Theme'
Plugin 'vim-scripts/vibrantink'
Plugin 'flazz/vim-colorschemes'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'                            " File tree browser
Plugin 'Xuyuanp/nerdtree-git-plugin'                    " Git for NerdTree
Plugin 'rbgrouleff/bclose.vim'                          " Close current buffer
Plugin 'tpope/vim-fugitive'                             " Git integration<Paste>
Plugin 'chrisbra/Colorizer'                             " Show hex codes as colours
Plugin 'kien/rainbow_parentheses.vim'                   " Colour matched brackets
Plugin 'arkwright/vim-whiteboard'                       " Whiteboard
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'                         " Git diff in side
Plugin 'mtth/scratch.vim'
call vundle#end()

" Required:
filetype plugin indent on

" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" =============================================================================
" 				AUTOCOMPLETION SETTINGS
" =============================================================================
" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" Path to python interpreter for neovim
"let g:python3_host_prog  = '/usr/bin/python'
" Skip the check of neovim module
"let g:python3_host_skip_check = 1
" deoplete-go settings
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

let s:uname = system("uname")
if s:uname == "Darwin\n"
    let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
    let g:deoplete#sources#rust#racer_binary='/Users/inet/.cargo/bin/racer'
    let g:deoplete#sources#rust#rust_source_path='/usr/local/src/rust/src/'
    let g:deoplete#sources#clang#libclang_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
else
    let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
    let g:deoplete#sources#rust#racer_binary=$HOME.'/.cargo/bin/racer'
    let g:deoplete#sources#rust#rust_source_path='/usr/local/src/rust/src/'
    let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
endif
"let g:deoplete#sources#clang#clang_header=''

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GO
" Some linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force vim to reload them
"filetype off
"filetype plugin indent off
"set runtimepath+=$GOROOT/misc/vim
"filetype plugin indent on
"syntax on
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_builds_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_fmt_command = "goimports"

set autoindent
set smartindent
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 80 characters limit
" execute "set colorcolumn=" . join(range(81,335), ',')
highlight ColorColumn ctermbg=Black ctermfg=DarkRed
set colorcolumn=81

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show relative line numbers
set number relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeChDirMode=2
let g:NERDTreeDirArrowExpandable = '├'
let g:NERDTreeDirArrowCollapsible = '└'
let g:NERDTreeMapActivateNode = '<tab>'
set mouse=a

" put cursor between brackets
inoremap {<CR> {<CR>}<C-o>O

" devicons
set encoding=utf8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

syntax enable
"let g:airline_theme='wombat'
let g:airline_theme='one'

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" hide tab line at the top
set showtabline=0

"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu
