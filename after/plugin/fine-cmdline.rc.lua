local status, fine_cmdline = pcall(require("fine-cmdline"))
if not status then
	return
end

fine_cmdline.setup({
	cmdline = {
		enable_keymaps = true,
		smart_history = true,
		prompt = ": ",
	},
	popup = {
		position = {
			row = "40%",
			col = "50%",
		},
		size = {
			width = "60%",
		},
		border = {
			style = "rounded",
		},
		win_options = {
			winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
		},
	},
	hooks = {
		before_mount = function(input)
			-- code
		end,
		after_mount = function(input)
			vim.keymap.set("n", ":", "<cmd>stopinsert<cr>", { buffer = input.bufnr })
		end,
		set_keymaps = function(imap, feedkeys)
			-- code
		end,
	},
})

--Floating terminal
vim.keymap.set("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
