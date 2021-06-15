set nocompatible              " be iMproved, required
filetype off                  " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
call plug#begin('~/.vim/plugged')

" Completion, etc.
Plug 'neovim/nvim-lspconfig'    " LSP
Plug 'hrsh7th/nvim-compe'       " Necessary for autocompletion
Plug 'sbdchd/neoformat'

" Time tracking
Plug 'wakatime/vim-wakatime'

" Themes
Plug 'folke/tokyonight.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'KeitaNakamura/neodark.vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " File tree browser
Plug 'Xuyuanp/nerdtree-git-plugin'                      " Git for NerdTree
"Plug 'chrisbra/Colorizer'                               " Show hex codes as colours
"Plug 'kien/rainbow_parentheses.vim'                     " Colour matched brackets
Plug 'airblade/vim-gitgutter'                           " Git diff in side
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
set encoding=utf8
syntax enable
set showtabline=0                                       " hide tab line at the top
set hidden
set number relativenumber                               " Relative line numbers
set noshowmode
set autoindent
set smartindent
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
inoremap {<CR> {<CR>}<C-o>O                             " put cursor between brackets
highlight clear SignColumn                              " make sign column (gutter) less ugly
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   AUTOCOMPLETION WITH LSP
lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.java_language_server.setup{}
require'lspconfig'.kotlin_language_server.setup{}
local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/bin/omnisharp"
require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.vuels.setup{}
require'lspconfig'.tsserver.setup{}

-- Setup for compe
vim.o.completeopt = "menuone,noselect"
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
  };
}

EOF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto format on save
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
let g:neoformat_basic_format_trim = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:afterglow_inherit_background=1
"let g:afterglow_italic_comments=1
"colorscheme afterglow

let g:challenger_deep_terminal_italics = 1
colorscheme challenger_deep
" Make background transparent
hi Normal guibg=NONE ctermbg=NONE
" Make line number bar transparent
hi LineNr guibg=NONE ctermbg=NONE
