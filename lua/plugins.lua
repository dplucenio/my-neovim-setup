return {
    { 'tpope/vim-fugitive' },
    { 'tpope/vim-surround' },
    { 'ntpeters/vim-better-whitespace' },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    { 'xiyaowong/telescope-emoji.nvim' },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("telescope").load_extension("emoji")
        end
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            require("nvim-tree").setup()
        end
    },
    { -- config for lualine (status bar)
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end
    },
    { -- config for lsp-zero from https://github.com/VonHeikemen/lsp-zero.nvim#installing
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP Support
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/nvim-cmp' },
            { "L3MON4D3/LuaSnip",                 version = "v3.*", build = "make install_jsregexp" },
        },
        config = function() -- from https://github.com/VonHeikemen/lsp-zero.nvim#usage
            local lsp = require('lsp-zero').preset({})
            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({ buffer = bufnr })
            end)
            -- (Optional) Configure lua language server for neovim
            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {},
                handlers = {
                    lsp.default_setup,
                },
            })
            -- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
            -- lsp.setup()
        end
    },
    { "dracula/vim",                   name = "dracula" },
    { "tssm/fairyfloss.vim",           name = "fairyfloss" },
}
