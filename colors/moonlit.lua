-- Moonlit - A dark, dreamy colorscheme with dim blues, purples, pinks, and soft yellows
-- Save as: ~/.config/nvim/colors/moonlit.lua

local colors = {
  -- Background colors
  bg = "#13131b",
  bg_dark = "#0c0c12",
  bg_float = "#16161e",
  bg_highlight = "#1a1a24",
  bg_popup = "#16161e",
  bg_sidebar = "#16161e",
  bg_statusline = "#16161e",
  bg_visual = "#1e1e2a",

  -- Foreground colors
  fg = "#d0d5e8",
  fg_dark = "#a8b0d0",
  fg_gutter = "#2a2d40",

  -- Border colors
  border = "#3c3f52",

  -- Base palette
  black = "#13131b",
  blue = "#88a8d8",
  cyan = "#a0c0e0",
  green = "#a8c0d8",
  magenta = "#d8a8c8",
  orange = "#d8b8a0",
  purple = "#b098d8",
  red = "#d89bb0",
  yellow = "#d8c8a0",

  -- Additional colors
  blue_dim = "#6888b8",
  purple_dim = "#9080c0",
  pink = "#e8b8d0",
  rose = "#d8a0b8",
  lavender = "#a898d0",
  cream = "#e0d0a8",

  -- UI colors
  comment = "#3c3f52",
  error = "#d89bb0",
  warning = "#d8c8a0",
  info = "#88a8d8",
  hint = "#a0c0e0",

  -- Git colors
  git_add = "#a8c0d8",
  git_change = "#b098d8",
  git_delete = "#d89bb0",

  -- Terminal colors
  terminal_black = "#13131b",
  terminal_red = "#d89bb0",
  terminal_green = "#a8c0d8",
  terminal_yellow = "#d8c8a0",
  terminal_blue = "#88a8d8",
  terminal_magenta = "#d8a8c8",
  terminal_cyan = "#a0c0e0",
  terminal_white = "#d0d5e8",
  terminal_bright_black = "#3c3f52",
  terminal_bright_red = "#e8b0c0",
  terminal_bright_green = "#b8d0e8",
  terminal_bright_yellow = "#e8d8b0",
  terminal_bright_blue = "#a0b8e8",
  terminal_bright_magenta = "#e8b8d8",
  terminal_bright_cyan = "#b0d0f0",
  terminal_bright_white = "#e0e5f8",
}

local function highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""
  vim.cmd("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

-- Clear existing highlights
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "moonlit"

-- Editor highlights
highlight("Normal", { fg = colors.fg, bg = colors.bg })
highlight("NormalFloat", { fg = colors.fg, bg = colors.bg_float })
highlight("NormalNC", { fg = colors.fg, bg = colors.bg })
highlight("Comment", { fg = colors.comment, style = "italic" })
highlight("Constant", { fg = colors.orange })
highlight("String", { fg = colors.green })
highlight("Character", { fg = colors.green })
highlight("Number", { fg = colors.orange })
highlight("Boolean", { fg = colors.rose })
highlight("Float", { fg = colors.orange })
highlight("Identifier", { fg = colors.fg })
highlight("Function", { fg = colors.purple })
highlight("Statement", { fg = colors.purple })
highlight("Conditional", { fg = colors.purple })
highlight("Repeat", { fg = colors.purple })
highlight("Label", { fg = colors.blue })
highlight("Operator", { fg = colors.lavender })
highlight("Keyword", { fg = colors.purple })
highlight("Exception", { fg = colors.purple })
highlight("PreProc", { fg = colors.pink })
highlight("Include", { fg = colors.purple })
highlight("Define", { fg = colors.purple })
highlight("Macro", { fg = colors.lavender })
highlight("PreCondit", { fg = colors.purple })
highlight("Type", { fg = colors.yellow })
highlight("StorageClass", { fg = colors.purple })
highlight("Structure", { fg = colors.yellow })
highlight("Typedef", { fg = colors.yellow })
highlight("Special", { fg = colors.pink })
highlight("SpecialChar", { fg = colors.pink })
highlight("Tag", { fg = colors.magenta })
highlight("Delimiter", { fg = colors.fg_dark })
highlight("SpecialComment", { fg = colors.comment, style = "italic" })
highlight("Debug", { fg = colors.red })
highlight("Underlined", { style = "underline" })
highlight("Ignore", {})
highlight("Error", { fg = colors.error })
highlight("Todo", { fg = colors.pink, style = "bold" })

-- UI Elements
highlight("ColorColumn", { bg = colors.bg_highlight })
highlight("Conceal", { fg = colors.comment })
highlight("Cursor", { fg = colors.bg, bg = colors.fg })
highlight("CursorColumn", { bg = colors.bg_highlight })
highlight("CursorLine", { bg = colors.bg_highlight })
highlight("Directory", { fg = colors.blue })
highlight("DiffAdd", { bg = "#1a2a2a", fg = colors.git_add })
highlight("DiffChange", { bg = "#1a1a2a", fg = colors.git_change })
highlight("DiffDelete", { bg = "#2a1a1a", fg = colors.git_delete })
highlight("DiffText", { bg = "#2a2a3a" })
highlight("ErrorMsg", { fg = colors.error })
highlight("VertSplit", { fg = colors.border })
highlight("Folded", { fg = colors.comment, bg = colors.bg_highlight })
highlight("FoldColumn", { fg = colors.comment })
highlight("SignColumn", { fg = colors.fg_gutter, bg = colors.bg })
highlight("IncSearch", { bg = colors.purple, fg = colors.bg })
highlight("LineNr", { fg = colors.fg_gutter })
highlight("CursorLineNr", { fg = colors.purple, style = "bold" })
highlight("MatchParen", { fg = colors.pink, style = "bold" })
highlight("ModeMsg", { fg = colors.fg, style = "bold" })
highlight("MoreMsg", { fg = colors.blue })
highlight("NonText", { fg = colors.comment })
highlight("Pmenu", { fg = colors.fg, bg = colors.bg_popup })
highlight("PmenuSel", { bg = colors.bg_highlight, fg = colors.pink })
highlight("PmenuSbar", { bg = colors.bg_popup })
highlight("PmenuThumb", { bg = colors.fg_gutter })
highlight("Question", { fg = colors.blue })
highlight("QuickFixLine", { bg = colors.bg_visual })
highlight("Search", { bg = colors.bg_visual, fg = colors.pink })
highlight("SpecialKey", { fg = colors.comment })
highlight("SpellBad", { sp = colors.error, style = "undercurl" })
highlight("SpellCap", { sp = colors.warning, style = "undercurl" })
highlight("SpellLocal", { sp = colors.info, style = "undercurl" })
highlight("SpellRare", { sp = colors.hint, style = "undercurl" })
highlight("StatusLine", { fg = colors.fg, bg = colors.bg_statusline })
highlight("StatusLineNC", { fg = colors.comment, bg = colors.bg_statusline })
highlight("TabLine", { fg = colors.comment, bg = colors.bg_statusline })
highlight("TabLineFill", { bg = colors.bg })
highlight("TabLineSel", { fg = colors.fg, bg = colors.bg })
highlight("Title", { fg = colors.blue, style = "bold" })
highlight("Visual", { bg = colors.bg_visual })
highlight("VisualNOS", { bg = colors.bg_visual })
highlight("WarningMsg", { fg = colors.warning })
highlight("Whitespace", { fg = colors.fg_gutter })
highlight("WildMenu", { bg = colors.bg_visual })

-- Treesitter
highlight("@variable", { fg = colors.fg })
highlight("@variable.builtin", { fg = colors.pink, style = "italic" })
highlight("@variable.parameter", { fg = colors.rose, style = "italic" })
highlight("@variable.member", { fg = colors.blue })
highlight("@constant", { fg = colors.orange })
highlight("@constant.builtin", { fg = colors.rose, style = "italic" })
highlight("@constant.macro", { fg = colors.lavender })
highlight("@string", { fg = colors.green })
highlight("@string.escape", { fg = colors.pink })
highlight("@string.special", { fg = colors.pink })
highlight("@character", { fg = colors.green })
highlight("@number", { fg = colors.orange })
highlight("@boolean", { fg = colors.rose })
highlight("@float", { fg = colors.orange })
highlight("@function", { fg = colors.purple })
highlight("@function.builtin", { fg = colors.lavender })
highlight("@function.macro", { fg = colors.purple_dim })
highlight("@function.method", { fg = colors.purple })
highlight("@constructor", { fg = colors.magenta })
highlight("@keyword", { fg = colors.purple })
highlight("@keyword.function", { fg = colors.purple, style = "italic" })
highlight("@keyword.operator", { fg = colors.lavender })
highlight("@keyword.return", { fg = colors.purple })
highlight("@keyword.import", { fg = colors.purple })
highlight("@conditional", { fg = colors.purple })
highlight("@repeat", { fg = colors.purple })
highlight("@label", { fg = colors.blue })
highlight("@operator", { fg = colors.lavender })
highlight("@exception", { fg = colors.purple })
highlight("@type", { fg = colors.yellow })
highlight("@type.builtin", { fg = colors.yellow, style = "italic" })
highlight("@type.definition", { fg = colors.yellow })
highlight("@attribute", { fg = colors.orange })
highlight("@property", { fg = colors.blue })
highlight("@field", { fg = colors.blue })
highlight("@namespace", { fg = colors.cream, style = "italic" })
highlight("@symbol", { fg = colors.pink })
highlight("@text", { fg = colors.fg })
highlight("@text.strong", { style = "bold" })
highlight("@text.emphasis", { style = "italic" })
highlight("@text.underline", { style = "underline" })
highlight("@text.strike", { style = "strikethrough" })
highlight("@text.title", { fg = colors.blue, style = "bold" })
highlight("@text.literal", { fg = colors.green })
highlight("@text.uri", { fg = colors.blue, style = "underline" })
highlight("@tag", { fg = colors.magenta })
highlight("@tag.attribute", { fg = colors.lavender, style = "italic" })
highlight("@tag.delimiter", { fg = colors.fg_dark })
highlight("@punctuation.delimiter", { fg = colors.fg_dark })
highlight("@punctuation.bracket", { fg = colors.fg_dark })
highlight("@punctuation.special", { fg = colors.pink })
highlight("@comment", { fg = colors.comment, style = "italic" })

-- LSP
highlight("DiagnosticError", { fg = colors.error })
highlight("DiagnosticWarn", { fg = colors.warning })
highlight("DiagnosticInfo", { fg = colors.info })
highlight("DiagnosticHint", { fg = colors.hint })
highlight("DiagnosticUnderlineError", { sp = colors.error, style = "undercurl" })
highlight("DiagnosticUnderlineWarn", { sp = colors.warning, style = "undercurl" })
highlight("DiagnosticUnderlineInfo", { sp = colors.info, style = "undercurl" })
highlight("DiagnosticUnderlineHint", { sp = colors.hint, style = "undercurl" })
highlight("LspReferenceText", { bg = colors.bg_highlight })
highlight("LspReferenceRead", { bg = colors.bg_highlight })
highlight("LspReferenceWrite", { bg = colors.bg_highlight })

-- Git Signs
highlight("GitSignsAdd", { fg = colors.git_add })
highlight("GitSignsChange", { fg = colors.git_change })
highlight("GitSignsDelete", { fg = colors.git_delete })

-- Telescope
highlight("TelescopeBorder", { fg = colors.border })
highlight("TelescopePromptBorder", { fg = colors.border })
highlight("TelescopeResultsBorder", { fg = colors.border })
highlight("TelescopePreviewBorder", { fg = colors.border })
highlight("TelescopeSelection", { fg = colors.pink, bg = colors.bg_highlight })
highlight("TelescopeSelectionCaret", { fg = colors.purple })
highlight("TelescopeMatching", { fg = colors.blue, style = "bold" })

-- Neo-tree
highlight("NeoTreeNormal", { fg = colors.fg, bg = colors.bg_sidebar })
highlight("NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg_sidebar })
highlight("NeoTreeDirectoryIcon", { fg = colors.blue })
highlight("NeoTreeDirectoryName", { fg = colors.blue })
highlight("NeoTreeGitAdded", { fg = colors.git_add })
highlight("NeoTreeGitModified", { fg = colors.git_change })
highlight("NeoTreeGitDeleted", { fg = colors.git_delete })

-- WhichKey
highlight("WhichKey", { fg = colors.purple })
highlight("WhichKeyGroup", { fg = colors.blue })
highlight("WhichKeyDesc", { fg = colors.fg })
highlight("WhichKeySeperator", { fg = colors.comment })
highlight("WhichKeyFloat", { bg = colors.bg_float })

-- Terminal colors
vim.g.terminal_color_0 = colors.terminal_black
vim.g.terminal_color_1 = colors.terminal_red
vim.g.terminal_color_2 = colors.terminal_green
vim.g.terminal_color_3 = colors.terminal_yellow
vim.g.terminal_color_4 = colors.terminal_blue
vim.g.terminal_color_5 = colors.terminal_magenta
vim.g.terminal_color_6 = colors.terminal_cyan
vim.g.terminal_color_7 = colors.terminal_white
vim.g.terminal_color_8 = colors.terminal_bright_black
vim.g.terminal_color_9 = colors.terminal_bright_red
vim.g.terminal_color_10 = colors.terminal_bright_green
vim.g.terminal_color_11 = colors.terminal_bright_yellow
vim.g.terminal_color_12 = colors.terminal_bright_blue
vim.g.terminal_color_13 = colors.terminal_bright_magenta
vim.g.terminal_color_14 = colors.terminal_bright_cyan
vim.g.terminal_color_15 = colors.terminal_bright_white
