-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local notify = require("notify")
local title = "Colorscheme"

-- Função para definir o colorscheme com base na existência de arquivos
local function setColorschemeByFiles()
  local sonokaiFiles = { "requirements.txt", "poetry.lock", "app.py", "main.py" }
  local vitesseFile = "package.json"

  local sonokaiExists = false

  for _, file in ipairs(sonokaiFiles) do
    if vim.fn.filereadable(file) == 1 then
      sonokaiExists = true
      break
    end
  end

  if not sonokaiExists then
    if vim.fn.filereadable(vitesseFile) == 1 then
      notify("Ambiente NodeJs\nVitesse", "info", { title = title })
      vim.cmd("colorscheme vitesse")
    else
      notify("Ambiente Default\nTokyonight", "info", { title = title })
      vim.cmd("colorscheme tokyonight-night")
    end
  else
    notify("Ambiente Python\nSonokai", "info", { title = title })
    vim.cmd("colorscheme sonokai")
  end
end

-- Chama a função para definir o colorscheme ao abrir o Neovim
setColorschemeByFiles()
