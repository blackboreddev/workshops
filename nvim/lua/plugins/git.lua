require "util"

return {
  "tpope/vim-fugitive",

  init = function()
    nmap("<leader>g", ":G<cr>")
  end
}
