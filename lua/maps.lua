local keymap = vim.keymap

-- Dont yank with x
keymap.set("n", "x", '"_x')

--Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete word backwords
-- keymap.set("n", "dw", 'vb"_d')

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Manage buffers with barbar.nvim
keymap.set("n", "te", ":enew<CR>", { silent = true }) -- new buffer
keymap.set("n", "tc", ":bd<CR>", { silent = true }) -- close current buffer
keymap.set("n", "tt", ":BufferNext<CR>", { silent = true }) -- next buffer
keymap.set("n", "tp", ":BufferPrevious<CR>", { silent = true }) -- previous buffer

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })

--Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "s<left>", "<C-w>h")
keymap.set("", "s<up>", "<C-w>k")
keymap.set("", "s<down>", "<C-w>j")
keymap.set("", "s<right>", "<C-w>l")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

--Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
keymap.set("", "<C-e>", "<esc>")

--Rustformat
keymap.set("n", "<Leader>f", "<cmd>RustFmt<cr>")

--Toggle Neotree
keymap.set("n", "<Leader>e", "<cmd>Neotree toggle<cr>")

--Toggle Terminals
keymap.set("n", "<Leader>t", "<cmd>ToggleTerm<cr>")

--DapUI
keymap.set("n", "<Leader>dt", [[<cmd>lua require('dapui').toggle()<CR>]], { noremap = true })

--Diffview
keymap.set("n", "<Leader>do", [[<cmd>DiffviewOpen<CR>]], { noremap = true })
keymap.set("n", "<Leader>dc", [[<cmd>DiffviewClose<CR>]], { noremap = true })
