local vim = vim or {}

local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local js_file_aliases = { "svelte" }

-- register any number of sources simultaneously
local sources = {
	diagnostics.actionlint.with({
		condition = function(utils)
			return utils.root_has_file({ ".github/actionlint.yaml" })
		end,
	}),
	diagnostics.flake8,
	diagnostics.luacheck,
	diagnostics.jsonlint,
	diagnostics.yamllint,
	diagnostics.eslint.with({
		extra_filetypes = js_file_aliases,
		condition = function(utils)
			return utils.root_has_file({
				".eslintrc",
				".eslintrc.js",
				".eslintrc.cjs",
				".eslintrc.yaml",
				".eslintrc.yml",
				".eslintrc.json",
				"package.json",
			})
		end,
	}),
	formatting.brittany,
	formatting.black,
	formatting.elm_format,
	formatting.prettier.with({ extra_filetypes = js_file_aliases }),
	formatting.trim_newlines,
	formatting.trim_whitespace,
	formatting.stylua,
	code_actions.gitsigns,
}

-- Auto-format on-save
-- Reference <https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save>
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
-- you can reuse a shared lspconfig on_attach callback here
local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
				vim.lsp.buf.format({ timeout_ms = 3000 })
			end,
		})
	end
end

--[[
- Reference https://github.com/jose-elias-alvarez/null-ls.nvim/issues/428
- Suppress warning regarding client offset due to ccls installation
--]]
local notify = vim.notify
vim.notify = function(msg, ...)
	if msg:match("warning: multiple different client offset_encodings") then
		return
	end

	notify(msg, ...)
end

null_ls.setup({ sources = sources, on_attach = on_attach })
