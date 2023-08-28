-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local notify = require("notify")
local title = "Colorscheme"

-- Função para definir o colorscheme com base na existência de arquivos
local function setColorschemeByFiles()
  local sonokaiFiles = { "requirements.txt", "poetry.lock" }
  local vitesseFile = "package.json"

  local sonokaiExists = false
  local vitesseExists = false

  for _, file in ipairs(sonokaiFiles) do
    if vim.fn.filereadable(file) == 1 then
      sonokaiExists = true
      break
    end
  end

  if not sonokaiExists then
    if vim.fn.filereadable(vitesseFile) == 1 then
      vim.cmd("colorscheme vitesse")
    else
      vim.cmd("colorscheme catppuccin")
    end
  else
    vim.cmd("colorscheme sonokai")
  end
end

-- Chama a função para definir o colorscheme ao abrir o Neovim
setColorschemeByFiles()
