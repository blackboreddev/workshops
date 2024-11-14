return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      nmap("gd", vim.lsp.buf.definition)
      nmap("gD", vim.lsp.buf.declaration)
      nmap("gr", vim.lsp.buf.references)
      nmap("K", vim.lsp.buf.hover)
      nmap("E", vim.diagnostic.open_float)

      lspconfig.rust_analyzer.setup({ capabilities=capabilities })
      lspconfig.lua_ls.setup({ capabilities=capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim"}
          }
        }
      }
    })
    end
  }
}
