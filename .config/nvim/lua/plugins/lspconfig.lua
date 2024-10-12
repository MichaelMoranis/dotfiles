-- ~/.config/nvim/lua/plugins/lspconfig.lua

return {
  -- Especifica o plugin que estamos configurando
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Configuração do tsserver para TypeScript
      lspconfig.tsserver.setup({
        on_attach = function(client, bufnr)
          -- Aqui você pode adicionar configurações adicionais
        end,
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })
    end,
  },
}
