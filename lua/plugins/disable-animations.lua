return {
  -- FORCE disable noice.nvim (this causes most animations)
  {
    "folke/noice.nvim",
    enabled = false,
  },

  -- Disable mini.animate
  {
    "nvim-mini/mini.animate",
    enabled = false,
  },

  -- Configure snacks.nvim to disable animations
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      animate = { enabled = false },
    },
  },
}
