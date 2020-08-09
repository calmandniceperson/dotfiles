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
"Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim' " highlighting, etc.
"Plugin 'racer-rust/vim-racer'   " autocompletion
Plugin 'lervag/vimtex'

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

Plugin 'neoclide/coc.nvim'                              " Autocomplete
Plugin 'luochen1990/rainbow'                            " Rainbow parantheses
Plugin 'scrooloose/nerdtree'                            " File tree browser
Plugin 'Xuyuanp/nerdtree-git-plugin'                    " Git for NerdTree
Plugin 'rbgrouleff/bclose.vim'                          " Close current buffer
Plugin 'tpope/vim-fugitive'                             " Git integration<Paste>
Plugin 'chrisbra/Colorizer'                             " Show hex codes as colours
Plugin 'ryanoasis/vim-devicons'                         " Icons in status bar and nerdtree
Plugin 'sheerun/vim-polyglot'                           " Language pack
Plugin 'Chiel92/vim-autoformat'                         " Autoformat tool
call vundle#end()

set number relativenumber

filetype plugin indent on

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

map <C-n> :NERDTreeToggle<CR>

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
colorscheme molokai
set background=dark

let g:rainbow_active = 1

hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none

let g:airline_theme='simple'
