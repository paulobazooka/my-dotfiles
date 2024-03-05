-- Custom Parameters (with defaults)
return {
  "David-Kunz/gen.nvim",
  opts = {
    model = "codellama",    -- The default model to use.
    host = "localhost",     -- The host running the Ollama service.
    port = "11434",         -- The port on which the Ollama service is listening.
    display_mode = "split", -- The display mode. Can be "float" or "split".
    show_prompt = false,    -- Shows the Prompt submitted to Ollama.
    show_model = true,      -- Displays which model you are using at the beginning of your chat session.
    no_auto_close = false,  -- Never closes the window automatically.
    prompt = "",
    init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
    -- Function to initialize Ollama
    command = function(options)
      return "curl --silent --no-buffer -X POST http://" .. options.host .. ":" .. options.port .. "/api/chat -d $body"
    end,
    -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
    -- This can also be a command string.
    -- The executed command must return a JSON object with { response, context }
    -- (context property is optional).
    -- list_models = '<omitted lua function>', -- Retrieves a list of model names
    debug = false -- Prints errors and the command which is run.
  },
  config = function()
    require("gen").prompts["Codar"] = {
      prompt =
      "Você é um desenvolvedor fullstack, com conhecimento em boas práticas de programação, arquitetura e engenharia de software. Irá auxiliar a melhorar o código promovendo melhorias e exemplos.\n$text",
      replace = true,
    }
  end,
}
