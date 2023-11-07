return {
  -- catppuccin
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    transparent_background = false,
    -- term_colors = false,
    dim_inactive = {
      enabled = true,
      shade = "dark",
      percentage = 0.30,
    },
    styles = {
      comments = { "italic" },
      conditionals = { "italic" },
      loops = {},
      functions = { "bold", "italic" },
      keywords = {},
      strings = {},
      variables = { "bold" },
      numbers = {},
      booleans = { "bold" },
      properties = {},
      types = {},
      operators = {},
    },
    opts = {
      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
    config = function()
      vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
      vim.g.lightline = { colorscheme = "catppuccin" }
      -- vim.cmd([[colorscheme catppuccin]])
    end,
  },
}
