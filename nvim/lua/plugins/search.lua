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
        ["Select All"] = "<leader>2",
        ["Visual All"] = "<leader>2",
        ["Start Regex Search"] = "<leader>3",
        ["Add Cursor At Pos"] = "<leader>1",
        ["Visual Cursors"] = "<leader><C-1>",

        -- Vertical cursors (Alt+j / Alt+k)
        ["Add Cursor Down"] = "<M-j>",
        ["Add Cursor Up"] = "<M-k>",

        -- Find Under (The VS Code Ctrl+D equivalent)
        ["Find Under"] = "<C-n>", -- C-n is the default, but you can change it here!
      }
    end,
  },
}
