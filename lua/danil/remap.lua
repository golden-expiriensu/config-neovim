vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>P', '"_dP')

vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

-- Prev/next quick fix list item
vim.keymap.set("n", "<leader>k", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>cnext<CR>zz")
-- Prev/next diagnostic list item
vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev)

vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn nil, err<Esc>bBviw")

vim.keymap.set("n", "<C-s><C-s>", function()
    print("neovim session saved")
    vim.cmd("mksession!")
end)

-- Stop highlighting
vim.keymap.set("n", "<leader>n", ":noh<CR>")

-- kulala
vim.api.nvim_set_keymap("n", "<C-k>", ":lua require('kulala').jump_prev()<CR>", {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap("n", "<C-j>", ":lua require('kulala').jump_next()<CR>", {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap("n", "<C-l>", ":lua require('kulala').run()<CR>", {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap("n", "<C-s>", ":lua require('kulala').scratchpad()<CR>", {
    noremap = true,
    silent = true,
})
