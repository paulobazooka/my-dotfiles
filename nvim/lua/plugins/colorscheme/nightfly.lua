return {
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
    opts = {
      nightflyTransparent = false,
      nightflyTerminalColors = false,
      fillchars = {
        horiz = "━",
        horizup = "┻",
        horizdown = "┳",
        vert = "┃",
        vertleft = "┫",
        vertright = "┣",
        verthoriz = "╋",
      },
    },
    config = function()
      -- load the colorscheme here
      vim.g.nightflyCursorColor = true
      vim.g.nightflyNormalFloat = true
      vim.g.nightflyTransparent = false
      vim.g.nightflyUnderlineMatchParen = true
      vim.g.nightflyVirtualTextColor = true
      vim.g.nightflyWinSeparator = 2
      vim.g.lightline = { colorscheme = "nightfly" }

      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "single",
      })

      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signatureHelp, {
        border = "single",
      })

      vim.diagnostic.config({ float = { border = "single" } })

      local winhighlight = {
        winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
      }

      local cmp = require("cmp")
      cmp.setup({
        window = {
          completion = cmp.config.window.bordered(winhighlight),
          documentation = cmp.config.window.bordered(winhighlight),
        },
      })

      vim.cmd([[colorscheme nightfly]])
    end,
  },
}
