return {
  -- mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- General
        "bash-language-server",
        "dockerfile-language-server",
        "json-lsp",
        "luacheck",
        "selene",
        "shellcheck",
        "shfmt",
        "stylua",
        "yaml-language-server",

        -- Frontend
        "css-lsp",
        "eslint-lsp",
        "html-lsp",
        "prettierd",
        "typescript-language-server",

        -- Backend
        "goimports",
        "golangci-lint",
        "golines",
        "gopls",
      })
    end,
  },
}
