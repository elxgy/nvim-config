return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    opts = function(_, opts)
      local cmp = require("cmp")

      -- Completely disable snippet expansion
      opts.snippet = nil

      -- Remove snippet sources
      opts.sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer" },
      })

      -- Change the behavior - just insert text, no expansion
      opts.completion = {
        completeopt = "menu,menuone,noinsert",
      }

      return opts
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = true,
      },
      -- Configure servers and capabilities safely
      servers = {
        -- Apply the snippet block globally using the correct path to avoid deprecation errors
        ["*"] = {
          capabilities = {
            textDocument = {
              completion = {
                completionItem = {
                  snippetSupport = false, -- Tell LSP we don't support snippets
                },
              },
            },
          },
        },
        -- Specifically tell the Go language server to stop inserting argument placeholders
        gopls = {
          settings = {
            gopls = {
              usePlaceholders = false,
            },
          },
        },
      },
    },
  },

  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    opts = {
      bind = true,
      floating_window = true, -- Show the popup window automatically
      handler_opts = {
        border = "rounded", -- Makes the floating window look a bit nicer
      },
      hint_enable = false, -- Set to true if you also want virtual text next to the cursor
    },
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },
}
