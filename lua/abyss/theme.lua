local p = require('abyss.palette')
local M = {}
function M.set_colors()
	local theme = {
		-- base highlights
		Normal = { fg = p.fg, bg = p.bg },
		NormalNC = { fg = p.fg, bg = p.bg },
		SignColumn = { fg = p.bg },
		FoldColumn = { fg = p.fg_alt },
		VertSplit = { fg = p.bg_alt },
		Folded = { fg = p.fg },
		EndOfBuffer = { fg = p.bg_alt },
		ColorColumn = { bg = p.bg_alt },
		Conceal = { fg = p.fg_alt },
		QuickFixLine = { bg = p.bg },
		Terminal = { fg = p.fg, bg = p.bg },

		IncSearch = { fg = p.bg, bg = p.orange },
		Search = { fg = p.bg, bg = p.yellow },
		Visual = { fg = p.bg, bg = p.cyan },
		Substitute = { fg = p.bg, bg = p.magenta },
		VisualNOS = { fg = p.bg, bg = p.fg },

		Cursor = { fg = p.fg, bg = p.fg },
		CursorColumn = { bg = p.bg_alt },
		CursorIM = { fg = p.fg, bg = p.fg },
		CursorLine = { bg = p.bg_alt },
		CursorLineNr = { fg = p.cyan },
		lCursor = { fg = p.fg, bg = p.fg },
		LineNr = { fg = p.fg_alt },
		TermCursor = { fg = p.fg, bg = p.fg },
		TermCursorNC = { fg = p.fg, bg = p.fg },

		DiffAdd = { fg = p.green },
		DiffChange = { fg = p.yellow },
		DiffDelete = { fg = p.red },
		DiffText = { fg = p.fg },

		Directory = { fg = p.blue },
		ErrorMsg = { fg = p.red },
		WarningMsg = { fg = p.yellow },
		ModeMsg = { fg = p.fg },
		MoreMsg = { fg = p.fg },
		MsgArea = { fg = p.fg, bg = p.bg },
		MsgSeparator = { fg = p.bg_urgent, bg = p.bg },
		Title = { fg = p.cyan },
		Question = { fg = p.cyan },

		MatchParen = { fg = p.yellow, bg = p.bg_urgent },
		NonText = { fg = p.fg_alt },
		SpecialKey = { fg = p.fg_alt },
		Whitespace = { fg = p.bg_alt },

		Pmenu = { fg = p.fg, bg = p.bg_alt },
		PmenuSbar = { bg = p.bg_urgent },
		PmenuSel = { fg = p.bg, bg = p.cyan },
		PmenuThumb = { bg = p.cyan },
		WildMenu = { fg = p.fg, bg = p.bg_alt },
		NormalFloat = { fg = p.fg, bg = p.bg_alt },

		TabLine = { fg = p.fg, bg = p.bg },
		TabLineFill = { fg = p.fg, bg = p.bg },
		TabLineSel = { fg = p.cyan, bg = p.bg },
		StatusLine = { fg = p.fg, bg = p.bg },
		StatusLineNC = { bg = p.bg, fg = p.bg },

		SpellBad = { fg = p.red },
		SpellCap = { fg = p.blue },
		SpellLocal = { fg = p.cyan },
		SpellRare = { fg = p.magenta },

		-- syntax
		Boolean = { fg = p.orange },
		Character = { fg = p.orange },
		Conditional = { fg = p.magenta },
		Constant = { fg = p.orange },
		Debug = { fg = p.blue },
		Define = { fg = p.red },
		Error = { fg = p.red },
		Exception = { fg = p.magenta },
		Float = { fg = p.yellow },
		FloatBorder = { fg = p.fg_alt },
		Function = { fg = p.blue },
		Include = { fg = p.red },
		Keyword = { fg = p.red },
		Label = { fg = p.blue },
		Macro = { fg = p.blue },
		Number = { fg = p.yellow },
		Operator = { fg = p.red },
		PreCondit = { fg = p.blue },
		PreProc = { fg = p.blue },
		Repeat = { fg = p.magenta },
		Special = { fg = p.blue },
		SpecialChar = { fg = p.orange },
		Statement = { fg = p.blue },
		Storage = { fg = p.blue },
		StorageClass = { fg = p.blue },
		String = { fg = p.green },
		Structure = { fg = p.blue },
		Tag = { fg = p.red },
		Type = { fg = p.blue },
		Typedef = { fg = p.blue },
		Variable = { fg = p.blue },

		Comment = { fg = p.fg_alt },
		SpecialComment = { fg = p.fg_alt },
		Todo = { fg = p.fg_alt },
		Delimiter = { fg = p.fg },
		Identifier = { fg = p.fg },
		Ignore = { fg = p.fg },
		Underlined = { underline = true },

    -- Buffline
    BufflineBufOnActive = { fg = p.blue, bg = p.bg },
    BufflineBufOnInactive = { fg = p.fg_alt, bg = p.bg},
    BuffLineBufOnModified = { fg = p.yellow, bg = p.bg_alt },
    BuffLineBufOffModified = { fg = p.fg, bg = p.bg },
    BuffLineBufOnClose = { fg = p.red, bg = p.bg_alt },
    BuffLineBufOffClose = { fg = p.red, bg = p.bg },
    BuffLineTree = { fg = p.fg_alt, bg = p.bg },
    BuffLineEmpty = { fg = p.bg, bg = p.bg },
    BuffLineEmptyColor = { fg = p.bg, bg = p.bg },
    BuffLineButton = { fg = p.red, bg = p.bg_alt },
    BuffLineCloseButton = { fg = p.red, bg = p.bg_alt },

    -- StatusLine
    StalineNormalMode = { fg = p.bg, bg = p.fg },
    StalineInsertMode = { fg = p.bg, bg = p.green },
    StalineReplaceMode = { fg = p.bg, bg = p.red },
    StalineVisualMode = { fg = p.bg, bg = p.blue },
    StalineTerminalMode = { fg = p.bg, bg = p.yellow },
    StalineConfirmMode = { fg = p.bg, bg = p.yellow },
    StalineCommandMode = { fg = p.bg, bg = p.green },

    StalineFilename = { fg = p.bg_alt, bg = p.fg_alt },
    StalineProgress = { fg = p.bg, bg = p.fg },
    StalineBranch = { fg = p.fg_alt, bg = p.bg_alt },

    StalineEmptySpace = { fg = p.bg, bg = p.bg },

    StalineLspError = { fg = p.red, bg = p.bg },
    StalineLspInfo = { fg = p.green, bg = p.bg },
    StalineLspHints = { fg = p.cyan, bg = p.bg },
    StalineLspWarning = { fg = p.yellow, bg = p.bg },

    StalineLspName = { fg = p.bg_alt, bg = p.fg_alt },

    StalineDiffAdd = { fg = p.green, bg = p.bg_alt },
    StalineDiffChange = { fg = p.yellow, bg = p.bg_alt },
    StalineDiffRemove = { fg = p.red, bg = p.bg_alt },

    -- Alpha
    AlphaHeader = { fg = p.blue, bg = p.bg },
    AlphaLabel = { fg = p.red, bg = p.bg },
    AlphaIcon = { fg = p.blue, bg = p.bg },
    AlphaKeyPrefix = { fg = p.fg_alt, bg = p.bg },
    AlphaMessage = { fg = p.fg_alt, bg = p.bg },
    AlphaFooter = { fg = p.fg_alt, bg = p.bg },

		-- Diagnostic
		DiagnosticError = { fg = p.red },
		DiagnosticHint = { fg = p.cyan },
		DiagnosticInfo = { fg = p.blue },
		DiagnosticWarn = { fg = p.yellow },

		-- diff
		diffAdded = { fg = p.green },
		diffChanged = { fg = p.yellow },
		diffFile = { fg = p.fg },
		diffIndexLine = { fg = p.fg },
		diffLine = { fg = p.fg },
		diffNewFile = { fg = p.magenta },
		diffOldFile = { fg = p.orange },
		diffRemoved = { fg = p.red },

		-- gitsigns: https://github.com/lewis6991/gitsigns.nvim
		GitSignsAdd = { fg = p.green },
		GitSignsChange = { fg = p.yellow },
		GitSignsDelete = { fg = p.red },

		-- indent-blankline.nvim: https://github.com/lukas-reineke/indent-blankline.nvim
		IndentBlanklineChar = { fg = p.bg_alt },

		-- nvim-tree.lua: https://github.com/nvim-tree/nvim-tree.lua
		NvimTreeEmptyFolderName = { fg = p.fg_alt },
		NvimTreeEndOfBuffer = { fg = p.fg, bg = p.bg },
		NvimTreeEndOfBufferNC = { fg = p.fg, bg = p.bg },
		NvimTreeFolderIcon = { fg = p.fg, bg = p.bg },
		NvimTreeFolderName = { fg = p.fg },
		NvimTreeGitDeleted = { fg = p.red },
		NvimTreeGitDirty = { fg = p.red },
		NvimTreeGitNew = { fg = p.blue },
		NvimTreeImageFile = { fg = p.fg_alt },
		NvimTreeIndentMarker = { fg = p.cyan },
		NvimTreeNormal = { fg = p.fg, bg = p.bg },
		NvimTreeNormalNC = { fg = p.fg, bg = p.bg },
		NvimTreeOpenedFolderName = { fg = p.cyan },
		NvimTreeRootFolder = { fg = p.fg_alt },
		NvimTreeSpecialFile = { fg = p.red },
		NvimTreeStatusLineNC = { bg = p.bg, fg = p.bg },
		NvimTreeSymlink = { fg = p.blue },
		NvimTreeVertSplit = { fg = p.bg, bg = p.bg },
		NvimTreeWindowPicker = { fg = p.red, bg = p.bg_alt },

		-- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
		["@attribute"] = { fg = p.blue },
		["@boolean"] = { fg = p.orange },
		["@character"] = { fg = p.orange },
		["@comment"] = { fg = p.fg_alt },
		["@conditional"] = { fg = p.magenta },
		["@constant"] = { fg = p.fg },
		["@constant.builtin"] = { fg = p.orange },
		["@constant.macro"] = { fg = p.orange },
		["@constructor"] = { fg = p.blue },
		["@exception"] = { fg = p.magenta },
		["@field"] = { fg = p.cyan },
		["@float"] = { fg = p.yellow },
		["@function"] = { fg = p.blue },
		["@function.builtin"] = { fg = p.blue },
		["@function.macro"] = { fg = p.blue },
		["@include"] = { fg = p.red },
		["@keyword"] = { fg = p.red },
		["@keyword.function"] = { fg = p.red },
		["@keyword.operator"] = { fg = p.red },
		["@keyword.return"] = { fg = p.red },
		["@label"] = { fg = p.cyan },
		["@method"] = { fg = p.blue },
		["@namespace"] = { fg = p.cyan },
		["@number"] = { fg = p.yellow },
		["@operator"] = { fg = p.red },
		["@parameter"] = { fg = p.yellow },
		["@parameter.reference"] = { fg = p.yellow },
		["@property"] = { fg = p.cyan },
		["@punctuation.bracket"] = { fg = p.fg },
		["@punctuation.delimiter"] = { fg = p.fg },
		["@punctuation.special"] = { fg = p.fg },
		["@repeat"] = { fg = p.magenta },
		["@string"] = { fg = p.green },
		["@string.escape"] = { fg = p.orange },
		["@string.regex"] = { fg = p.orange },
		["@string.special"] = { fg = p.orange },
		["@symbol"] = { fg = p.red },
		["@tag"] = { fg = p.red },
		["@tag.attribute"] = { fg = p.yellow },
		["@tag.delimiter"] = { fg = p.blue },
		["@type"] = { fg = p.blue },
		["@type.builtin"] = { fg = p.blue },
		["@variable"] = { fg = p.fg },
		["@variable.builtin"] = { fg = p.fg },
		["@text"] = { fg = p.fg },

	}

	vim.g.terminal_color_0 = p.bg
	vim.g.terminal_color_1 = p.red
	vim.g.terminal_color_2 = p.green
	vim.g.terminal_color_3 = p.yellow
	vim.g.terminal_color_4 = p.blue
	vim.g.terminal_color_5 = p.magenta
	vim.g.terminal_color_6 = p.cyan
	vim.g.terminal_color_7 = p.fg
	vim.g.terminal_color_8 = p.fg_alt
	vim.g.terminal_color_9 = p.red
	vim.g.terminal_color_10 = p.green
	vim.g.terminal_color_11 = p.yellow
	vim.g.terminal_color_12 = p.blue
	vim.g.terminal_color_13 = p.magenta
	vim.g.terminal_color_14 = p.cyan
	vim.g.terminal_color_15 = p.fg

	return theme
end
return M
