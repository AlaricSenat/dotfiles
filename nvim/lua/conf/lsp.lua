local status_ok, mason = pcall(require, 'mason')
if not status_ok then
  return
end

--  This function gets run when an LSP connects to a particular buffer.
on_lsp_attach = function(client, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  --- toggle inlay hints
  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true)
  else
    print('no inlay hints available')
  end

  --- toggle inlay hints
  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true)
  else
    print('no inlay hints available')
  end

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap('gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
  nmap('gr', require('telescope.builtin').lsp_references)
  nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

  -- See `:help K` for why this keymap
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

  nmap('<leader>dj', vim.diagnostic.goto_next, 'Next [D]iagnostic')
  nmap('<leader>dk', vim.diagnostic.goto_prev, 'Previous [D]iagnostic')

  -- Lesser used LSP functionality
  nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
  nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
  nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
  nmap('<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, '[W]orkspace [L]ist Folders')
end

-- nvim-cmp supports additional completion capabilities
lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup mason so it can manage external tooling
mason.setup()

-- Ensure the tools below are installed
require('mason-tool-installer').setup {
  ensure_installed = {
    -- Language servers
    'bash-language-server',
    'clangd',
    'rust-analyzer',
    'typescript-language-server',
    -- Linters
    'codespell',
    'vale',
    -- Formatters
    'hclfmt',
    'stylua',
  },
}

local lspconfig = require('lspconfig')

lspconfig.bashls.setup {
  on_attach = on_lsp_attach,
  capabilities = lsp_capabilities,
}

lspconfig.clangd.setup {
  on_attach = on_lsp_attach,
  capabilities = lsp_capabilities,
}

lspconfig.ts_ls.setup {
  on_attach = on_lsp_attach,
  capabilities = lsp_capabilities,
}

-- Diagnostic signs
local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end

-- Diagnostic virtual text prefix
vim.lsp.handlers['textDocument/publishDiagnostics'] =
  vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = { prefix = '' } })

require('conform').setup({
  formatters_by_ft = {
    lua = { 'stylua' },
    hcl = { 'hcl' },
  },
})

vim.api.nvim_create_user_command('Format', function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ['end'] = { args.line2, end_line:len() },
    }
  end
  require('conform').format({ async = true, lsp_format = 'fallback', range = range })
end, { range = true })
vim.keymap.set('', '<leader>f', '<cmd>Format<cr>')

require('lint').linters_by_ft = {
  markdown = { 'vale' },
}

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function()
    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype
    require('lint').try_lint()

    -- You can call `try_lint` with a linter name or a list of names to always
    -- run specific linters, independent of the `linters_by_ft` configuration
    require('lint').try_lint('codespell')
  end,
})
