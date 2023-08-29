return {
  "mfussenegger/nvim-dap-python",

  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  config = function(_, opts)
    local path = "~/.virtualenvs/debugpy/bin/python"
    require("dap-python").setup(path)
  end,
}
