# nvim-config

>Neovim version >= 0.11.2

Quick disclaimers:
- Base: LazyVim (via lazy.nvim bootstrap) with my overrides in `lua/plugins` and `lua/config`.
- Plugins installed/overridden here (not exhaustive of LazyVim defaults):
  - `hrsh7th/nvim-cmp` with `hrsh7th/cmp-nvim-lsp` (snippets disabled, LSP/path/buffer sources only)
  - `neovim/nvim-lspconfig` (custom LSP capabilities, gopls placeholders off)
  - `ray-x/lsp_signature.nvim`
  - `folke/snacks.nvim` (dashboard header + animations off)
  - `nvim-treesitter/nvim-treesitter` (jsonc ignored/disabled)
  - LazyVim extras enabled in `lazyvim.json` (harpoon2, multiple language packs, indent-blankline, mini-animate)
- Custom themes:
  - `gruvpengus` (default)
    - Based on `gruvbox` with a more muted palette and a shift towards blue/pink tones
  - `moonlit`
    - Based on `catppuccinno` with a more muted and simplified palette
- Disabled / turned off:
  - `folke/noice.nvim` and `nvim-mini/mini.animate`
  - smooth scrolling + mini.animate via options
  - Tree-sitter `jsonc` install
  - Built-in runtime plugins: `gzip`, `tarPlugin`, `tohtml`, `tutor`, `zipPlugin`
- Other: 
  - Changed header(`LAZYVIM`) to a ascii cat art
