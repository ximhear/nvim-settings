return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          settings = {
            packageManager = "yarn",
          },
        },
        svelte = {
          on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd("BufWritePost", {
              pattern = { "*.js", "*.ts" },
              callback = function(ctx)
                client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
              end,
            })
          end,
        },
        volar = {
          filetypes = { "vue" },
        },
        graphql = {
          filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
        },
        emmet_ls = {
          filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
        },
        unocss = {
          filetypes = { "html", "typescriptreact", "javascriptreact", "css", "svelte", "vue" },
        },
      },
    },
  },
  -- Mason: ensure extra tools are installed
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "eslint_d",
      },
    },
  },
}
