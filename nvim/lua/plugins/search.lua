return {
  {
    "nvim-pack/nvim-spectre",
    build = false,
    cmd = "Spectre",
    opts = { open_cmd = "noswapfile vnew" },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = { enabled = true },
      explorer = { enabled = true },
    },
  },
  {
    "mg979/vim-visual-multi",
    lazy = false, -- This MUST be false for this plugin to work correctly
    init = function()
      -- Define custom mappings before the plugin loads
      vim.g.VM_maps = {
        ["Select All"] = "<leader>2", -- Normal mode: select all occurrences of word under cursor
        ["Visual All"] = "<leader>2", -- Visual mode: select all occurrences of selection
        ["Start Regex Search"] = "<leader>3",
        ["Add Cursor At Pos"] = "<leader>1",
        ["Visual Cursors"] = "<leader><C-1>",
      }
    end,
  },
}
