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

    nmap('<leader>dj', vim.diagnostic.goto_next, 'Next [D]iagnostic' )
    nmap('<leader>dk', vim.diagnostic.goto_prev, 'Previous [D]iagnostic')

    -- Lesser used LSP functionality
    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
    nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
    nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
    nmap('<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, '[W]orkspace [L]ist Folders')

    -- Global format command
    vim.keymap.set('', '<leader>f', vim.lsp.buf.format,
        { buffer = bufnr, desc = '[F]ormat the code (works with ranges)' })
end

-- nvim-cmp supports additional completion capabilities
lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup mason so it can manage external tooling
mason.setup()

-- Enable the following language servers
local servers = { 'clangd', 'bashls' }

-- Ensure the servers above are installed
require('mason-lspconfig').setup {
    ensure_installed = servers,
}

for _, lsp in ipairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_lsp_attach,
        capabilities = lsp_capabilities,
    }
end

-- Diagnostic signs
local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end

-- Diagnostic virtual text prefix
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = { prefix = '' } })

-- Setup null-ls
local null_ls = require('null-ls')
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.markdownlint,
        null_ls.builtins.diagnostics.codespell.with({
            extra_args = {'-L', 'crate,IIF'},
        }),

        null_ls.builtins.formatting.beautysh,
    },
})

-- Apply colorscheme's Diagnostic style
--vim.api.nvim_set_hl(0, 'LspInlayHint', {
--    link = 'DiagnosticVirtualTextHint'
--})
