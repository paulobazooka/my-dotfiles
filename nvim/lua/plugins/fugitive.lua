return {
  {
    "tpope/vim-fugitive",
    lazy = true,
    cmd = "Git",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  }
}
