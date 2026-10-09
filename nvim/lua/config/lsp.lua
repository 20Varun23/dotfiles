vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("marksman")
vim.lsp.enable("gopls")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("ts_ls")

vim.diagnostic.config({ virtual_lines = { current_line = true}})
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client and client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, args.buf, {
                autotrigger = true,
            })
        end
    end,
})
