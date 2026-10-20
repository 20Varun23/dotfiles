-- keymaps
vim.g.mapleader = " "

vim.keymap.set("n","<leader>e", vim.cmd.Ex, {desc="File Explorer"})
vim.keymap.set("n","<leader>s",vim.cmd.write,{desc="File write"})
vim.keymap.set("n","<leader>q",vim.cmd.quit,{desc="File write"})
vim.keymap.set("n","<C-d>", "<C-d>zz", {desc="center coming down"})
vim.keymap.set("n","<C-u>", "<C-u>zz", {desc="center coming up"})
vim.keymap.set("n","<leader>v",vim.cmd.vsplit,{desc="vsplit the window"})
vim.keymap.set("n","<leader>h",vim.cmd.split,{desc="split the window"})
vim.keymap.set("n","<leader>w","<C-w>",{desc="window navigation help"})
vim.keymap.set("n", "<leader>t", "<cmd>terminal<CR>", { desc = "Open terminal" })
vim.keymap.set("n", "<leader>b", "<cmd>ls<CR>", { desc = "List buffers" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
vim.keymap.set("x", "<leader>p", '"_dP', {
    desc = "Paste without overwriting register",
})

--moving lines
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {
    desc = "Move selection down",
})

vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {
    desc = "Move selection up",
})

-- Fuzzy finder
vim.keymap.set("n", "<leader>ff" ,"<cmd>Telescope find_files<cr>", {desc = "Find Files"})
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { desc = 'Telescope live grep' })

-- Navigate between changes
vim.keymap.set("n", "]g", function()
    require("gitsigns").next_hunk()
end, { desc = "Next Git change" })

vim.keymap.set("n", "[g", function()

    require("gitsigns").prev_hunk()
end, { desc = "Previous Git change" })


-- Stage and reset changes
vim.keymap.set("n", "<leader>hs", function()
    require("gitsigns").stage_hunk()
end, { desc = "Stage hunk" })

vim.keymap.set("n", "<leader>hr", function()
    require("gitsigns").reset_hunk()
end, { desc = "Reset hunk" })

-- Preview and inspect
vim.keymap.set("n", "<leader>hp", function()
    require("gitsigns").preview_hunk()
end, { desc = "Preview hunk" })

vim.keymap.set("n", "<leader>hb", function()
    require("gitsigns").blame_line()
end, { desc = "Blame line" })

vim.keymap.set("n", "<leader>hd", function()

    require("gitsigns").diffthis()
end, { desc = "Diff against index" })
