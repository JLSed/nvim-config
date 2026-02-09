local map = vim.keymap.set
-- =============================================================================
-- SEARCH & REPLACE (Standard)
-- =============================================================================
-- Return to Normal Mode with 'q'
map("v", "q", "<Esc>", { desc = "Exit visual mode" })
-- Search in current file
map("n", "<C-f>", "/", { desc = "Search in file" })

-- Search and replace word under cursor (Quick Command-line)
map(
  "n",
  "<leader>h",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace word under cursor" }
)

-- Global Search & Replace (Spectre)
map("n", "<leader><C-f>", function()
  require("spectre").toggle()
end, { desc = "Toggle Spectre (Global Search)" })

-- =============================================================================
-- VIM-VISUAL-MULTI (Multi-Cursors)
-- =============================================================================

-- Keybind to trigger VM Find (analogous to Ctrl+D in VS Code)
-- Default is usually <C-n>, but let's map it to something consistent with your style
map("n", "<leader>d", "<Plug>(VM-Find-Under)", { desc = "VM: Select word and find next" })
-- COPILOT CHAT (VS Code Style)
-- =============================================================================

-- Toggle Chat Sidebar (VS Code: Ctrl+Alt+I)
map("n", "<C-M-i>", "<cmd>CopilotChatToggle<cr>", { desc = "CopilotChat - Toggle" })

-- Inline Chat (VS Code: Ctrl+I)
-- This opens a small input for a quick question about the current selection or line
map({ "n", "v" }, "<leader>ci", function()
  local input = vim.fn.input("Quick Chat: ")
  if input ~= "" then
    require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
  end
end, { desc = "CopilotChat - Inline/Quick Chat" })

-- Reset/Clear Chat (VS Code: Ctrl+N or similar reset)
map("n", "<C-M-n>", "<cmd>CopilotChatReset<cr>", { desc = "CopilotChat - Reset" })

-- Explain Code (VS Code: Right-click > Copilot > Explain)
map("v", "<leader>ce", "<cmd>CopilotChatExplain<cr>", { desc = "CopilotChat - Explain code" })

-- Fix Code (VS Code: Right-click > Copilot > Fix)
map("v", "<leader>cf", "<cmd>CopilotChatFix<cr>", { desc = "CopilotChat - Fix code" })

-- Normal Mode: Toggle comment for current line
map("n", "<C-/>", "gcc", { desc = "Toggle Comment", remap = true })
map("n", "<C-_>", "gcc", { desc = "Toggle Comment", remap = true }) -- Fix for some terminals

-- Visual Mode: Toggle comment for selection
map("v", "<C-/>", "gc", { desc = "Toggle Comment", remap = true })
map("v", "<C-_>", "gc", { desc = "Toggle Comment", remap = true })
