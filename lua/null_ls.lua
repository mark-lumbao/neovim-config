local vim = vim or {}

local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local eslintReqTable = {
	".eslintrc",
	".eslintrc.js",
	".eslintrc.yaml",
	".eslintrc.yml",
	".eslintrc.json",
}

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
		condition = function(utils)
			return utils.root_has_file(eslintReqTable)
		end,
	}),
	formatting.brittany,
	formatting.black,
	formatting.elm_format,
	formatting.prettier.with({}),
	formatting.trim_newlines,
	formatting.trim_whitespace,
	formatting.stylua,
	code_actions.gitsigns,
}

-- Auto-format on-save
-- Reference <https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save>
-- you can reuse a shared lspconfig on_attach callback here
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
				if tonumber(vim.fn.getenv("AUTO_FMT")) == 1 then
					vim.lsp.buf.format({ timeout_ms = 3000 })
				end
			end,
		})
		--[[
      vscode-eslint-language-server provides an EslintFixAll command that
      can be used to format a document on save rather than using NullLs
      https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#eslint
    ]]
		vim.api.nvim_create_autocmd({ "BufWritePre" }, {
			group = augroup,
			pattern = { "*.tsx", "*.ts", "*.jsx", "*.js" },
			callback = function()
				-- Below implementes conditional autoformatting for EslintFixAll
				-- It will only be ran if AUTO_FMT is on or
				-- If eslint is configured for the current directory
				if
					tonumber(vim.fn.getenv("AUTO_FMT")) == 1
					and #vim.fs.find(eslintReqTable, {
							upward = true,
							type = "file",
							stop = vim.fn.getcwd() .. "/node_modules", -- TODO: Improve handling
							limit = math.huge,
						})
						>= 1
				then
					vim.cmd("EslintFixAll")
				end
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
