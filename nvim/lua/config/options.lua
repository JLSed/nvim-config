-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Prioritize the git directory as the project root.
vim.g.root_spec = { ".git", "lsp", "cwd" }
