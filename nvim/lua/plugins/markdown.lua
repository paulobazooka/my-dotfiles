return {
  -- add markdown
  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    keys = { { "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>", desc = "  Markdown Preview Toggle" } },
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}

