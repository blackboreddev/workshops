return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim"
  },

  config = function()
    local null = require("null-ls")

    null.setup({
      sources = { null.builtins.formatting.stylua }
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        vim.lsp.buf.format()
      end
    })
  end
}
