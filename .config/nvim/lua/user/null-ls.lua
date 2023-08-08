require'lspconfig'.idris2_lsp.setup{}

require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.yapf, -- yapf  formatting           
    require("null-ls").builtins.formatting.stylua,
    require("null-ls").builtins.diagnostics.jsonlint,
    -- require("null-ls").builtins.formatting.sqlls,
  },
})
