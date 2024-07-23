-- Additional Plugins

lvim.plugins = {
  { "folke/tokyonight.nvim" },
  { "tpope/vim-fugitive" },
  { "vim-test/vim-test" },
  { "nvim-treesitter/nvim-treesitter-context" },
  { "Exafunction/codeium.vim" },
  { "jparise/vim-graphql" },
  { "hashivim/vim-terraform" },
  {
    "mxsdev/nvim-dap-vscode-js",
    lazy = true,
    dependencies = {
      {
        "microsoft/vscode-js-debug",
        version = "1.x",
        build = "npm i && npm run compile vsDebugServerBundle && mv dist out"
      }
    }
  },
  {
    "vim-test/vim-test",
    config = function()
      vim.g["test#javascript#runner"] = "vitest"
    end,
  },

}
