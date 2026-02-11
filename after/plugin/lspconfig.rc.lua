local capabilities = require("cmp_nvim_lsp").default_capabilities()
local util = require("lspconfig.util")
local mason = require("mason")
local path = require("mason-core.path")

mason.setup()

-- auto-format on save


---------------------------------------------------------------------
--  NEW Neovim 0.11 API:
--  vim.lsp.config("server", opts)
---------------------------------------------------------------------

vim.lsp.config("emmet_ls", {
	capabilities = capabilities,

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

})

vim.lsp.config("pyright", {
	capabilities = capabilities,

})

vim.lsp.config("clangd", {
	capabilities = capabilities,

})

vim.lsp.config("lua_ls", {
	capabilities = capabilities,

})

vim.lsp.config("jdtls", {
	capabilities = capabilities,

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

	settings = {
		intelephense = { files = { maxSize = 5000000 } },
	},
})

vim.lsp.config("volar", {
	capabilities = capabilities,

})

vim.lsp.config("html", {
	capabilities = capabilities,

})

vim.lsp.config("ts_ls", {
	capabilities = capabilities,

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

})

vim.lsp.config("texlab", {
	capabilities = capabilities,

})

vim.lsp.config("vls", {
	capabilities = capabilities,

})
