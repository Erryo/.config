return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  dependencies = {
    "copilotlsp-nvim/copilot-lsp",
  },
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        keymap = {
          accept = "<F2>",
        },
      },
      panel = { enabled = false },
    })
  end,
}
