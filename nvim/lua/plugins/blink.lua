return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        -- 'enter' preset allows Enter to accept completion
        preset = "enter",

        -- OR manually map it if you want more control:
        -- ["<CR>"] = { "select_and_accept", "fallback" },
      },
    },
  },
}
