return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason").setup({
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    })
    require("mason-lspconfig").setup({
      ensure_installed = {
        "ts_ls",
        "angularls",
        "html",
        "cssls",
        "eslint",
        "lua_ls",
        "rust_analyzer",
      },
      automatic_installation = true,
    })

    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts, { desc = "Go to Definition" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts, { desc = "Go to References" })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts, { desc = "Go to Implementation" })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts, { desc = "Hover Documentation" })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts, { desc = "Rename Symbol" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts, { desc = "Code Action" })
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
    vim.lsp.config("html", {
      on_attach = on_attach,
      capabilities = capabilities,
    })

    -- CSS
    vim.lsp.config("cssls", {
      on_attach = on_attach,
      capabilities = capabilities,
    })

    -- ESLint
    vim.lsp.config("eslint", {
      on_attach = function(client, bufnr)
        -- Disable ESLint formatting in favor of conform.nvim
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        on_attach(client, bufnr)
      end,
      capabilities = capabilities,
      settings = {
        workingDirectories = { mode = "auto" },
        experimental = {
          useFlatConfig = nil,
        },
      },
    })

    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
    vim.lsp.enable({ "ts_ls", "angularls", "html", "cssls", "eslint", "lua_ls", "rust_analyzer" })
  end,
}
