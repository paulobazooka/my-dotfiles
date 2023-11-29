return {
  -- add lotem ipsum generator
  {
    "derektata/lorem.nvim",
    lazy = true,
    cmd = { "LoremIpsum" },
    ft = { "lorem-ipsum" },
    keys = { { "<leader>ct", "<cmd>LoremIpsum<cr>", desc = "Generate Lorem Ipsum" } },
    config = function()
      require("lorem").setup({
        sentenceLength = "mixedShort",
        comma = 0.1
      })
    end,
  },
}
