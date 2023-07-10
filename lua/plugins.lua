return {
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-surround' },
  { 'ntpeters/vim-better-whitespace' },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'xiyaowong/telescope-emoji.nvim'},
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
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    },
    config = function() -- from https://github.com/VonHeikemen/lsp-zero.nvim#usage
      local lsp = require('lsp-zero').preset({})
      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({buffer = bufnr})
      end)
      -- (Optional) Configure lua language server for neovim
      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
      lsp.setup()
    end
  },
  { "dracula/vim", name = "dracula" },
  { "tssm/fairyfloss.vim", name = "fairyfloss" },
}
