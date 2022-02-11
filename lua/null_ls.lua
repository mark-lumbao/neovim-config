local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local extra_eslint_files =
  { "svelte"
  }

-- register any number of sources simultaneously
local sources =
  { formatting.eslint_d.with({ extra_filetypes = extra_eslint_files })
  , formatting.prettier
  , formatting.elm_format
  , formatting.brittany
  , diagnostics.jsonlint
  , diagnostics.eslint_d.with({ extra_filetypes = extra_eslint_files })
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

null_ls
  .setup(
    { sources = sources
    , on_attach = on_attach
    }
  )
