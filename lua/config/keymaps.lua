-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Move window
keymap.set("n", "<C-left>", "<C-w>h", opts)
keymap.set("n", "<C-right>", "<C-w>l", opts)
keymap.set("n", "<C-up>", "<C-w>k", opts)
keymap.set("n", "<C-down>", "<C-w>j", opts)

-- Resize window
keymap.set("n", "<C-h>", "<C-w><", opts)
keymap.set("n", "<C-l>", "<C-w>>", opts)
keymap.set("n", "<C-k>", "<C-w>+", opts)
keymap.set("n", "<C-j>", "<C-w>-", opts)

-- Split window
keymap.set("n", "sh", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Open IDE messages (errors, warnings, etc.)
keymap.set("n", "<leader>m", ":messages<CR>", { desc = "Show Messages" })

-- Move lines up/down
keymap.set("n", "<A-up>", ":m .-2<CR>==", { desc = "Move line up" })
keymap.set("n", "<A-down>", ":m .+1<CR>==", { desc = "Move line down" })
keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv", { desc = "Move line(s) up" })
keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv", { desc = "Move line(s) down" })

-- Diagnostics
-- keymap.set("n", "<C-J>", function()
--   vim.diagnostic.goto({ next = true })
-- end, opts)

-- Open function info popup
keymap.set("n", "<C-i>", vim.lsp.buf.signature_help, {
  desc = "Show signature help",
})

-- Terminal
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)
