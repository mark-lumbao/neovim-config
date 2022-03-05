local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local js_file_aliases = { "svelte" }

-- register any number of sources simultaneously
local sources = {
	diagnostics.actionlint,
	diagnostics.luacheck,
	diagnostics.jsonlint,
	diagnostics.yamllint,
	diagnostics.eslint_d.with({ extra_filetypes = js_file_aliases }),
	formatting.brittany,
	formatting.elm_format,
	formatting.eslint_d.with({ extra_filetypes = js_file_aliases }),
	formatting.prettier.with({ extra_filetypes = js_file_aliases }),
	formatting.trim_newlines,
	formatting.trim_whitespace,
	formatting.stylua,
	code_actions.gitsigns,
}

local on_attach = function(client)
	if client.resolved_capabilities.document_formatting then
		vim.cmd([[
    augroup LspFormatting
      autocmd! * <buffer>
      autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting(nil, 3000)
    augroup END
    ]])
	end
end

null_ls.setup({ sources = sources, on_attach = on_attach })
