return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "ts_ls",
        "angularls",
        "html",
        "cssls",
        "omnisharp",
        "eslint",
  },
  automatic_installation = true,
  })

  local on_attach = function(_, bufnr)
    local opts = { buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
  end

        -- Capabilities for cmp
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- TypeScript/JavaScript
      vim.lsp.config("ts_ls", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- Angular
      vim.lsp.config("angularls", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- HTML
      vim.lsp.config("html",{
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- CSS
      vim.lsp.config("cssls", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- C# (.NET)
      vim.lsp.config("omnisharp", {
        on_attach = on_attach,
        capabilities = capabilities,
        cmd = { "omnisharp" },
      })

      -- ESLint
      vim.lsp.config("eslint",{
        on_attach = on_attach,
        capabilities = capabilities,
      })

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" 
    }
    }
    }
    }
    })
    end,
}

