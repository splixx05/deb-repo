vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- mode
keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with ei" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("v", "kj", "<ESC>", { desc = "Exit visual mode with ev" })

-- commands (:)
keymap.set("n", "<leader>sr", ":source", { desc = "switch to 'Explore-Mode'" })

-- Navigation
keymap.set("n", "j", "h", { desc = "Navigation left" })
keymap.set("n", "k", "j", { desc = "Navigation down" })
keymap.set("n", "l", "k", { desc = "Navigation up" })
keymap.set("n", "ö", "l", { desc = "Navigation right" })
keymap.set("v", "j", "h", { desc = "Navigation left" })
keymap.set("v", "k", "j", { desc = "Navigation down" })
keymap.set("v", "l", "k", { desc = "Navigation up" })
keymap.set("v", "ö", "l", { desc = "Navigation right" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
