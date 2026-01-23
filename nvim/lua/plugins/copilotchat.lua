return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- Other options...
      mappings = {
        close = {
          normal = "q", -- Removes the default 'q' or '<C-c>' behavior
          insert = "", -- Removes the default '<C-c>' behavior in insert mode
        },
      },
    },
  },
}
