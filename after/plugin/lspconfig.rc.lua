local capabilities = require("cmp_nvim_lsp").default_capabilities()
local util = require("lspconfig.util")
local mason = require("mason")
local path = require("mason-core.path")

mason.setup()

-- auto-format on save
local on_attach = function(client, bufnr)
	if client.server_capabilities.documentFormattingProvider then
		local group = vim.api.nvim_create_augroup("Format", { clear = true })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = group,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
		})
	end
end

---------------------------------------------------------------------
--  NEW Neovim 0.11 API:
--  vim.lsp.config("server", opts)
---------------------------------------------------------------------

vim.lsp.config("emmet_ls", {
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = {
		"html",
		"css",
		"javascript",
		"javascriptreact",
		"typescriptreact",
		"vue",
		"less",
		"sass",
		"scss",
		"svelte",
		"pug",
		"eruby",
	},
	init_options = {
		html = {
			options = { ["output.selfClosingStyle"] = "xhtml" },
		},
	},
})

vim.lsp.config("tailwindcss", {
	capabilities = capabilities,
	on_attach = on_attach,
})

vim.lsp.config("pyright", {
	capabilities = capabilities,
	on_attach = on_attach,
})

vim.lsp.config("clangd", {
	capabilities = capabilities,
	on_attach = on_attach,
})

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
	on_attach = on_attach,
})

vim.lsp.config("jdtls", {
	capabilities = capabilities,
	on_attach = on_attach,
	root_dir = util.root_pattern(".git", "mvnw", "gradlew", "build.gradle", "pom.xml"),
	cmd = {
		"jdtls",
		"-configuration",
		vim.fn.stdpath("cache") .. "/jdtls/config",
		"-data",
		vim.fn.stdpath("cache") .. "/jdtls/workspace",
	},
})

vim.lsp.config("intelephense", {
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		intelephense = { files = { maxSize = 5000000 } },
	},
})

vim.lsp.config("volar", {
	capabilities = capabilities,
	on_attach = on_attach,
})

vim.lsp.config("html", {
	capabilities = capabilities,
	on_attach = on_attach,
})

vim.lsp.config("ts_ls", {
	capabilities = capabilities,
	on_attach = on_attach,
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = "/usr/lib/node_modules/@vue/language-server",
				languages = { "vue" },
			},
		},
	},
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"vue",
	},
})

vim.lsp.config("marksman", {
	capabilities = capabilities,
	on_attach = on_attach,
})

vim.lsp.config("texlab", {
	capabilities = capabilities,
	on_attach = on_attach,
})

vim.lsp.config("vls", {
	capabilities = capabilities,
	on_attach = on_attach,
})
