-- Gruvpengus - Gruvbox Pink & Mint
-- Save as: ~/.config/nvim/colors/gruvpengus.lua

local colors = {
  -- Background colors
  bg = "#181615", -- editor.background
  bg_dark = "#161413", -- panel.background
  bg_float = "#24201f", -- surface.background
  bg_highlight = "#262321", -- editor.active_line.background
  bg_popup = "#24201f", -- surface.background
  bg_sidebar = "#161413", -- panel.background
  bg_statusline = "#1b1817", -- status_bar.background
  bg_visual = "#322d2a", -- element.background

  -- Foreground colors
  fg = "#dfbf9e", -- editor.foreground
  fg_dark = "#a89984", -- text.muted
  fg_gutter = "#665c54", -- editor.line_number
  fg_light = "#bdae93", -- function

  -- Border colors
  border = "#2a2422", -- border
  border_focus = "#3c3733", -- border.focused

  -- Base palette
  black = "#1d2021",
  red = "#ce91a4", -- terminal.ansi.red / constant
  green = "#79a38a", -- terminal.ansi.green / string
  yellow = "#d8a657", -- terminal.ansi.yellow / type
  blue = "#7daea3", -- terminal.ansi.blue / property
  magenta = "#a7869a", -- terminal.ansi.magenta / boolean & number
  cyan = "#82b3a1", -- terminal.ansi.cyan / keyword
  white = "#a89984", -- terminal.ansi.white / punctuation

  -- UI colors
  comment = "#7c6f64", -- syntax.comment
  error = "#ce91a4",
  warning = "#d8a657",
  info = "#7daea3",
  hint = "#82b3a1",

  -- Git colors
  git_add = "#79a38a",
  git_change = "#d8a657",
  git_delete = "#ce91a4",

  -- Terminal colors
  terminal_black = "#1d2021",
  terminal_red = "#ce91a4",
  terminal_green = "#79a38a",
  terminal_yellow = "#d8a657",
  terminal_blue = "#7daea3",
  terminal_magenta = "#a7869a",
  terminal_cyan = "#82b3a1",
  terminal_white = "#a89984",
  terminal_bright_black = "#504945", -- text.disabled
  terminal_bright_red = "#ce91a4",
  terminal_bright_green = "#79a38a",
  terminal_bright_yellow = "#d8a657",
  terminal_bright_blue = "#7daea3",
  terminal_bright_magenta = "#a7869a",
  terminal_bright_cyan = "#82b3a1",
  terminal_bright_white = "#f2e5bc", -- terminal.bright_foreground
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
vim.g.colors_name = "gruvpengus"

-- Editor highlights
highlight("Normal", { fg = colors.fg, bg = colors.bg })
highlight("NormalFloat", { fg = colors.fg, bg = colors.bg_float })
highlight("NormalNC", { fg = colors.fg, bg = colors.bg })
highlight("Comment", { fg = colors.comment, style = "italic" })
highlight("Constant", { fg = colors.red })
highlight("String", { fg = colors.green })
highlight("Character", { fg = colors.green })
highlight("Number", { fg = colors.magenta })
highlight("Boolean", { fg = colors.magenta })
highlight("Float", { fg = colors.magenta })
highlight("Identifier", { fg = colors.fg })
highlight("Function", { fg = colors.fg_light })
highlight("Statement", { fg = colors.cyan })
highlight("Conditional", { fg = colors.cyan })
highlight("Repeat", { fg = colors.cyan })
highlight("Label", { fg = colors.blue })
highlight("Operator", { fg = colors.white })
highlight("Keyword", { fg = colors.cyan })
highlight("Exception", { fg = colors.cyan })
highlight("PreProc", { fg = colors.yellow })
highlight("Include", { fg = colors.cyan })
highlight("Define", { fg = colors.cyan })
highlight("Macro", { fg = colors.yellow })
highlight("PreCondit", { fg = colors.yellow })
highlight("Type", { fg = colors.yellow })
highlight("StorageClass", { fg = colors.cyan })
highlight("Structure", { fg = colors.yellow })
highlight("Typedef", { fg = colors.yellow })
highlight("Special", { fg = colors.red })
highlight("SpecialChar", { fg = colors.yellow })
highlight("Tag", { fg = colors.cyan })
highlight("Delimiter", { fg = colors.white })
highlight("SpecialComment", { fg = colors.comment, style = "italic" })
highlight("Debug", { fg = colors.red })
highlight("Underlined", { style = "underline" })
highlight("Ignore", {})
highlight("Error", { fg = colors.error })
highlight("Todo", { fg = colors.bg, bg = colors.yellow, style = "bold" })

-- UI Elements
highlight("ColorColumn", { bg = colors.bg_highlight })
highlight("Conceal", { fg = colors.comment })
highlight("Cursor", { fg = colors.bg, bg = colors.fg })
highlight("CursorColumn", { bg = colors.bg_highlight })
highlight("CursorLine", { bg = colors.bg_highlight })
highlight("Directory", { fg = colors.blue })
highlight("DiffAdd", { bg = "#24332a", fg = colors.git_add })
highlight("DiffChange", { bg = "#332a24", fg = colors.git_change })
highlight("DiffDelete", { bg = "#33242a", fg = colors.git_delete })
highlight("DiffText", { bg = "#45382a" })
highlight("ErrorMsg", { fg = colors.error })
highlight("VertSplit", { fg = colors.border })
highlight("Folded", { fg = colors.comment, bg = colors.bg_highlight })
highlight("FoldColumn", { fg = colors.comment })
highlight("SignColumn", { fg = colors.fg_gutter, bg = colors.bg })
highlight("IncSearch", { bg = colors.yellow, fg = colors.bg })
highlight("LineNr", { fg = colors.fg_gutter })
highlight("CursorLineNr", { fg = colors.fg_light, style = "bold" })
highlight("MatchParen", { fg = colors.bg, bg = colors.cyan, style = "bold" })
highlight("ModeMsg", { fg = colors.fg, style = "bold" })
highlight("MoreMsg", { fg = colors.blue })
highlight("NonText", { fg = colors.comment })
highlight("Pmenu", { fg = colors.fg, bg = colors.bg_popup })
highlight("PmenuSel", { bg = colors.bg_highlight, fg = colors.cyan })
highlight("PmenuSbar", { bg = colors.bg_popup })
highlight("PmenuThumb", { bg = colors.fg_gutter })
highlight("Question", { fg = colors.blue })
highlight("QuickFixLine", { bg = colors.bg_visual })
highlight("Search", { bg = colors.bg_visual, fg = colors.cyan })
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
highlight("@variable.builtin", { fg = colors.fg })
highlight("@variable.parameter", { fg = colors.fg })
highlight("@variable.member", { fg = colors.fg })
highlight("@constant", { fg = colors.red })
highlight("@constant.builtin", { fg = colors.red, style = "italic" })
highlight("@constant.macro", { fg = colors.yellow })
highlight("@string", { fg = colors.green })
highlight("@string.escape", { fg = colors.yellow })
highlight("@string.special", { fg = colors.yellow })
highlight("@character", { fg = colors.green })
highlight("@number", { fg = colors.magenta })
highlight("@boolean", { fg = colors.magenta })
highlight("@float", { fg = colors.magenta })
highlight("@function", { fg = colors.fg_light })
highlight("@function.builtin", { fg = colors.fg })
highlight("@function.macro", { fg = colors.fg_light })
highlight("@function.method", { fg = colors.fg_light })
highlight("@constructor", { fg = colors.blue })
highlight("@keyword", { fg = colors.cyan })
highlight("@keyword.function", { fg = colors.cyan, style = "italic" })
highlight("@keyword.operator", { fg = colors.cyan })
highlight("@keyword.return", { fg = colors.cyan })
highlight("@keyword.import", { fg = colors.cyan })
highlight("@conditional", { fg = colors.cyan })
highlight("@repeat", { fg = colors.cyan })
highlight("@label", { fg = colors.blue })
highlight("@operator", { fg = colors.white })
highlight("@exception", { fg = colors.cyan })
highlight("@type", { fg = colors.yellow })
highlight("@type.builtin", { fg = colors.yellow, style = "italic" })
highlight("@type.definition", { fg = colors.yellow })
highlight("@attribute", { fg = colors.yellow })
highlight("@property", { fg = colors.blue })
highlight("@field", { fg = colors.blue })
highlight("@namespace", { fg = colors.yellow, style = "italic" })
highlight("@symbol", { fg = colors.cyan })
highlight("@text", { fg = colors.fg })
highlight("@text.strong", { fg = colors.fg, style = "bold" })
highlight("@text.emphasis", { fg = colors.fg, style = "italic" })
highlight("@text.underline", { style = "underline" })
highlight("@text.strike", { style = "strikethrough" })
highlight("@text.title", { fg = colors.blue, style = "bold" })
highlight("@text.literal", { fg = colors.green })
highlight("@text.uri", { fg = colors.magenta, style = "underline" })
highlight("@tag", { fg = colors.cyan })
highlight("@tag.attribute", { fg = colors.yellow, style = "italic" })
highlight("@tag.delimiter", { fg = colors.white })
highlight("@punctuation.delimiter", { fg = colors.white })
highlight("@punctuation.bracket", { fg = colors.white })
highlight("@punctuation.special", { fg = colors.red })
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
highlight("LspReferenceText", { bg = colors.bg_visual })
highlight("LspReferenceRead", { bg = colors.bg_visual })
highlight("LspReferenceWrite", { bg = colors.bg_highlight })

-- Git Signs
highlight("GitSignsAdd", { fg = colors.git_add, bg = colors.bg })
highlight("GitSignsChange", { fg = colors.git_change, bg = colors.bg })
highlight("GitSignsDelete", { fg = colors.git_delete, bg = colors.bg })

-- Telescope
highlight("TelescopeBorder", { fg = colors.border })
highlight("TelescopePromptBorder", { fg = colors.border_focus })
highlight("TelescopeResultsBorder", { fg = colors.border })
highlight("TelescopePreviewBorder", { fg = colors.border })
highlight("TelescopeSelection", { fg = colors.cyan, bg = colors.bg_highlight })
highlight("TelescopeSelectionCaret", { fg = colors.cyan })
highlight("TelescopeMatching", { fg = colors.yellow, style = "bold" })

-- Neo-tree
highlight("NeoTreeNormal", { fg = colors.fg, bg = colors.bg_sidebar })
highlight("NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg_sidebar })
highlight("NeoTreeDirectoryIcon", { fg = colors.blue })
highlight("NeoTreeDirectoryName", { fg = colors.blue })
highlight("NeoTreeGitAdded", { fg = colors.git_add })
highlight("NeoTreeGitModified", { fg = colors.git_change })
highlight("NeoTreeGitDeleted", { fg = colors.git_delete })

-- WhichKey
highlight("WhichKey", { fg = colors.cyan })
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
