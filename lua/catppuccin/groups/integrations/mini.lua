local M = {}

function M.get()
	local transparent_background = require("catppuccin").options.transparent_background
	local bg_highlight = transparent_background and "NONE" or C.base

	local inactive_bg = transparent_background and "NONE" or C.mantle

	local indentscope_color = O.integrations.mini.indentscope_color
	return {
		MiniAnimateCursor = { style = { "reverse", "nocombine" } },
		MiniAnimateNormalFloat = { link = "NormalFloat" },

		MiniClueBorder = { link = "FloatBorder" },
		MiniClueDescGroup = { link = "DiagnosticFloatingWarn" },
		MiniClueDescSingle = { link = "NormalFloat" },
		MiniClueNextKey = { link = "DiagnosticFloatingHint" },
		MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
		MiniClueSeparator = { link = "DiagnosticFloatingInfo" },
		MiniClueTitle = { link = "FloatTitle" },

		MiniCompletionActiveParameter = { style = { "underline" } },

		MiniCursorword = { style = { "underline" } },
		MiniCursorwordCurrent = { style = { "underline" } },

		MiniDepsChangeAdded = { link = "diffAdded" },
		MiniDepsChangeRemoved = { link = "diffRemoved" },
		MiniDepsHint = { link = "DiagnosticHint" },
		MiniDepsInfo = { link = "DiagnosticInfo" },
		MiniDepsMsgBreaking = { link = "DiagnosticWarn" },
		MiniDepsPlaceholder = { link = "Comment" },
		MiniDepsTitle = { link = "Title" },
		MiniDepsTitleError = { bg = C.red, fg = C.base },
		MiniDepsTitleSame = { link = "DiffText" },
		MiniDepsTitleUpdate = { bg = C.green, fg = C.base },

		MiniDiffSignAdd = { fg = C.green },
		MiniDiffSignChange = { fg = C.yellow },
		MiniDiffSignDelete = { fg = C.red },
		MiniDiffOverAdd = { link = "DiffAdd" },
		MiniDiffOverChange = { link = "DiffText" },
		MiniDiffOverContext = { link = "DiffChange" },
		MiniDiffOverDelete = { link = "DiffDelete" },

		MiniFilesBorder = { link = "FloatBorder" },
		MiniFilesBorderModified = { link = "DiagnosticFloatingWarn" },
		MiniFilesCursorLine = { link = "CursorLine" },
		MiniFilesDirectory = { link = "Directory" },
		MiniFilesFile = { fg = C.text },
		MiniFilesNormal = { link = "NormalFloat" },
		MiniFilesTitle = { link = "FloatTitle" },
		MiniFilesTitleFocused = { fg = C.subtext0, style = { "bold" } },

		MiniHipatternsFixme = { fg = C.base, bg = C.red, style = { "bold" } },
		MiniHipatternsHack = { fg = C.base, bg = C.yellow, style = { "bold" } },
		MiniHipatternsNote = { fg = C.base, bg = C.sky, style = { "bold" } },
		MiniHipatternsTodo = { fg = C.base, bg = C.teal, style = { "bold" } },

		MiniIconsAzure = { fg = C.sapphire },
		MiniIconsBlue = { fg = C.blue },
		MiniIconsCyan = { fg = C.teal },
		MiniIconsGreen = { fg = C.green },
		MiniIconsGrey = { fg = C.text },
		MiniIconsOrange = { fg = C.peach },
		MiniIconsPurple = { fg = C.mauve },
		MiniIconsRed = { fg = C.red },
		MiniIconsYellow = { fg = C.yellow },

		MiniIndentscopeSymbol = { fg = C[indentscope_color] or C.overlay2 },

		MiniJump = { fg = C.overlay2, bg = C.pink },

		MiniJump2dDim = { fg = C.overlay0 },
		MiniJump2dSpot = { bg = C.base, fg = C.peach, style = { "bold", "underline" } },
		MiniJump2dSpotAhead = { bg = C.dim, fg = C.teal },
		MiniJump2dSpotUnique = { bg = C.base, fg = C.sky, style = { "bold" } },

		MiniMapNormal = { link = "NormalFloat" },
		MiniMapSymbolCount = { link = "Special" },
		MiniMapSymbolLine = { link = "Title" },
		MiniMapSymbolView = { link = "Delimiter" },

		MiniNotifyBorder = { link = "FloatBorder" },
		MiniNotifyNormal = { link = "NormalFloat" },
		MiniNotifyTitle = { link = "FloatTitle" },

		MiniOperatorsExchangeFrom = { link = "IncSearch" },

		MiniPickBorder = { link = "FloatBorder" },
		MiniPickBorderBusy = { link = "DiagnosticFloatingWarn" },
		MiniPickBorderText = { fg = C.mauve },
		MiniPickIconDirectory = { link = "Directory" },
		MiniPickIconFile = { link = "MiniPickNormal" },
		MiniPickHeader = { link = "DiagnosticFloatingHint" },
		MiniPickMatchCurrent = { link = "CursorLine" },
		MiniPickMatchMarked = { link = "Visual" },
		MiniPickMatchRanges = { link = "DiagnosticFloatingHint" },
		MiniPickNormal = { link = "NormalFloat" },
		MiniPickPreviewLine = { link = "CursorLine" },
		MiniPickPreviewRegion = { link = "IncSearch" },
		MiniPickPrompt = { link = "DiagnosticFloatingInfo" },

		MiniStarterCurrent = {},
		MiniStarterFooter = { fg = C.yellow, style = { "italic" } },
		MiniStarterHeader = { fg = C.blue },
		MiniStarterInactive = { fg = C.surface2, style = O.styles.comments },
		MiniStarterItem = { fg = C.text },
		MiniStarterItemBullet = { fg = C.blue },
		MiniStarterItemPrefix = { fg = C.pink },
		MiniStarterSection = { fg = C.flamingo },
		MiniStarterQuery = { fg = C.green },

		MiniStatuslineDevinfo = { fg = C.subtext1, bg = C.surface1 },
		MiniStatuslineFileinfo = { fg = C.subtext1, bg = C.surface1 },
		MiniStatuslineFilename = { fg = C.text, bg = C.mantle },
		MiniStatuslineInactive = { fg = C.blue, bg = C.mantle },
		MiniStatuslineModeCommand = { fg = C.base, bg = C.peach, style = { "bold" } },
		MiniStatuslineModeInsert = { fg = C.base, bg = C.green, style = { "bold" } },
		MiniStatuslineModeNormal = { fg = C.mantle, bg = C.blue, style = { "bold" } },
		MiniStatuslineModeOther = { fg = C.base, bg = C.teal, style = { "bold" } },
		MiniStatuslineModeReplace = { fg = C.base, bg = C.red, style = { "bold" } },
		MiniStatuslineModeVisual = { fg = C.base, bg = C.mauve, style = { "bold" } },

		MiniSurround = { bg = C.pink, fg = C.surface1 },

		MiniTablineCurrent = { fg = C.text, bg = C.base, sp = C.red, style = { "bold", "italic", "underline" } },
		MiniTablineFill = { bg = bg_highlight },
		MiniTablineHidden = { fg = C.text, bg = inactive_bg },
		MiniTablineModifiedCurrent = { fg = C.red, bg = C.none, style = { "bold", "italic" } },
		MiniTablineModifiedHidden = { fg = C.red, bg = C.none },
		MiniTablineModifiedVisible = { fg = C.red, bg = C.none },
		MiniTablineTabpagesection = { fg = C.surface1, bg = C.base },
		MiniTablineVisible = { bg = C.none },

		MiniTestEmphasis = { style = { "bold" } },
		MiniTestFail = { fg = C.red, style = { "bold" } },
		MiniTestPass = { fg = C.green, style = { "bold" } },

		MiniTrailspace = { bg = C.red },
	}
end

return M
