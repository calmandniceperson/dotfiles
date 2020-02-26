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

"Languages
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim' " highlighting, etc.
Plugin 'racer-rust/vim-racer'   " autocompletion

" Themes
Bundle 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'megantiu/true.vim'
Plugin 'Erichain/vim-monokai-pro'
Plugin 'felipesousa/rupza'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'joshdick/onedark.vim'
Plugin 'rakr/vim-one'
Plugin 'ayu-theme/ayu-vim'
Plugin 'chriskempson/base16-vim'
Plugin 'morhetz/gruvbox'
Plugin 'ChrisKempson/Tomorrow-Theme'
Plugin 'vim-scripts/vibrantink'
Plugin 'flazz/vim-colorschemes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'arzg/vim-colors-xcode'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
Plugin 'sheerun/vim-polyglot'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()

set number relativenumber

filetype plugin indent on

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:deoplete#enable_at_startup = 1

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    if (has("termguicolors"))
        set termguicolors
    endif
endif

map <C-n> :NERDTreeToggle<CR>

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf_c.py"

" Format on save: https://github.com/Chiel92/vim-autoformat
au BufWrite * :Autoformat

set tabstop=4       " The width of a TAB is set to 4.
" Still it is a \t. It is just that
" Vim will interpret it to be having
" a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

highlight clear LineNr
highlight clear SignColumn

syntax on
"colorscheme true
highlight Normal guibg=black guifg=white
set background=dark
let g:true_airline = 1
let g:airline_theme='true'
