-- tsserver preferences
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tsserver" })

local tsserver_opts = {
  init_options = {
    preferences = {
      importModuleSpecifierPreference = "relative"
    }
  }
}

require("lvim.lsp.manager").setup("tsserver", tsserver_opts)

-- Formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    name = "prettier",
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "json",
      "yaml",
      "graphql",
      "gql",
      "md"
    }
  },
  {
    name = "ktlint",
  }
}


lvim.format_on_save = true

-- Linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}
