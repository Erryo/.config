return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary",
  dependencies = {
    "zbirenbaum/copilot.lua",
    "nvim-lua/plenary.nvim",
  },
  cmd = {
    "CopilotChat",
    "CopilotChatOpen",
    "CopilotChatToggle",
  },  keys = {
    { "<leader>cM", "<cmd>CopilotChatToggle<CR>", desc = "Copilot Chat" },
    { "<leader>ce", "<cmd>CopilotChatExplain<CR>", mode = "v", desc = "Explain code" },
  },
  config = function()
    require("CopilotChat").setup({
      debug = false,
    })
  end,
}
