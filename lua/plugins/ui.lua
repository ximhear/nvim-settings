return {
  -- indent-blankline: custom indent character
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "┊" },
    },
  },
  -- Snacks explorer: show gitignored files
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            ignored = true,
          },
        },
      },
    },
  },
  -- bufferline: use tab mode
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "tabs",
      },
    },
  },
}
