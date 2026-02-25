return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Remove jsonc from ensure_installed if it exists
      if opts.ensure_installed then
        opts.ensure_installed = vim.tbl_filter(function(lang)
          return lang ~= "jsonc"
        end, opts.ensure_installed)
      end

      -- Add ignore_install
      opts.ignore_install = { "jsonc" }

      -- Disable auto_install
      opts.auto_install = false
    end,
  },
}
