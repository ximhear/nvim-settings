return {
  -- Disable claudecode.nvim (causes crash on command mode)
  { "greggh/claudecode.nvim", enabled = false },
  -- Substitute: paste over motion without yanking
  {
    "gbprod/substitute.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local substitute = require("substitute")
      substitute.setup()

      vim.keymap.set("n", "s", substitute.operator, { desc = "Substitute with motion" })
      vim.keymap.set("n", "ss", substitute.line, { desc = "Substitute line" })
      vim.keymap.set("n", "S", substitute.eol, { desc = "Substitute to end of line" })
      vim.keymap.set("x", "s", substitute.visual, { desc = "Substitute in visual mode" })
    end,
  },
  -- Vim-maximizer: maximize/minimize splits
  {
    "szw/vim-maximizer",
    keys = {
      { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
    },
  },
  -- Diffview: git diff and file history viewer
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Git diff view" },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", desc = "Git file history" },
    },
    opts = {},
  },
}
