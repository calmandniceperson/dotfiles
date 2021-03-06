return require('packer').startup(function()

    -- Completion and other code helpers
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'neovim/nvim-lspconfig'}
    use { 'hrsh7th/nvim-compe' }       -- Necessary for autocompletion
    use { 'sbdchd/neoformat' }         -- Formatting
    use { 'glepnir/lspsaga.nvim' }     -- Information on hover
    use { 'folke/trouble.nvim' }	   -- Trouble list (errors, warnings, etc.)
    use { 'folke/lsp-colors.nvim' }    -- creates missing LSP diagnostics highlight
                                       -- groups for color schemes that don't yet
                                       -- support the Neovim 0.5 builtin LSP client.

    -- Time tracking
    use { 'wakatime/vim-wakatime' }

    -- Themes
    use { 'projekt0n/github-nvim-theme' }
    use { 'folke/tokyonight.nvim' }
    use { 'NLKNguyen/papercolor-theme' }
    use { 'KeitaNakamura/neodark.vim' }
    use { 'danilo-augusto/vim-afterglow' }
    use { 'challenger-deep-theme/vim', as = 'challenger-deep' }
    use { 'tomasiser/vim-code-dark' }

    use { 'hoob3rt/lualine.nvim' }
    use { 'romgrk/barbar.nvim' }
    use { 'yamatsum/nvim-cursorline' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'ryanoasis/vim-devicons' }
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'airblade/vim-gitgutter' }                         -- Git diff in side
    use { 'tpope/vim-fugitive' }

end)
