return {
  -- Add extra parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- web
        "svelte",
        "vue",
        "graphql",
        "prisma",
        "scss",
        "tsx",
        -- android
        "kotlin",
        "java",
        "groovy",
        -- iOS
        "swift",
        "objc",
        -- python
        "ninja",
        "rst",
        -- systems
        "go",
        "rust",
        -- infra/config
        "dockerfile",
        "gitignore",
        "query",
        "c",
        "sql",
        "toml",
      },
    },
  },
}
