local M = {}

function M.get()
	return {
		TitleString = { fg = C.text },
		TitleIcon = { fg = C.blue },
		SagaBorder = { fg = C.blue, bg = C.none },
		SagaNormal = { bg = O.transparent_background and C.none or C.base },
		SagaExpand = { fg = C.green },
		SagaCollapse = { fg = C.green },
		SagaCount = { fg = C.overlay1 },
		SagaBeacon = { bg = U.darken(C.surface0, 0.8, C.crust) },
		ActionFix = { fg = C.pink },
		ActionPreviewTitle = { fg = C.mauve, bg = O.transparent_background and C.none or C.base },
		CodeActionText = { fg = C.green },
		CodeActionNumber = { fg = C.pink },
		FinderSelection = { fg = C.blue, style = { "bold" } },
		FinderFName = { fg = C.subtext0, style = { "bold" } },
		FinderCode = { fg = C.text },
		FinderIcon = { fg = C.flamingo },
		FinderCount = { fg = C.lavender },
		FinderType = { fg = C.flamingo },
		FinderSpinnerTitle = { fg = C.mauve, style = { "bold" } },
		FinderSpinner = { fg = C.mauve, style = { "bold" } },
		FinderStart = { fg = C.teal, style = { "bold" } },
		RenameNormal = { fg = C.text },
		DiagnosticSource = { fg = C.overlay0 },
		DiagnosticText = { fg = C.text },
		DiagnosticFname = { fg = C.text },
		CallHierarchyIcon = { fg = C.mauve },
		CallHierarchyTitle = { fg = C.blue },
		SagaShadow = { bg = C.crust },
		OutlineIndent = { fg = C.overlay2 },

		-- Lspkind icons support
		LspKindClass = { fg = C.yellow },
		LspKindConstant = { fg = C.peach },
		LspKindConstructor = { fg = C.sapphire },
		LspKindEnum = { fg = C.yellow },
		LspKindEnumMember = { fg = C.teal },
		LspKindEvent = { fg = C.yellow },
		LspKindField = { fg = C.teal },
		LspKindFile = { fg = C.rosewater },
		LspKindFunction = { fg = C.blue },
		LspKindInterface = { fg = C.yellow },
		LspKindKey = { fg = C.red },
		LspKindMethod = { fg = C.blue },
		LspKindModule = { fg = C.blue },
		LspKindNamespace = { fg = C.blue },
		LspKindNumber = { fg = C.peach },
		LspKindOperator = { fg = C.sky },
		LspKindPackage = { fg = C.blue },
		LspKindProperty = { fg = C.teal },
		LspKindStruct = { fg = C.yellow },
		LspKindTypeParameter = { fg = C.maroon },
		LspKindVariable = { fg = C.peach },
		LspKindArray = { fg = C.peach },
		LspKindBoolean = { fg = C.peach },
		LspKindNull = { fg = C.yellow },
		LspKindObject = { fg = C.yellow },
		LspKindString = { fg = C.green },
		-- ccls-specific icons.
		LspKindTypeAlias = { fg = C.green },
		LspKindParameter = { fg = C.blue },
		LspKindStaticMethod = { fg = C.peach },
		-- Microsoft-specific icons.
		LspKindText = { fg = C.green },
		LspKindSnippet = { fg = C.mauve },
		LspKindFolder = { fg = C.blue },
		LspKindUnit = { fg = C.green },
		LspKindValue = { fg = C.peach },
	}
end

function M.custom_kind()
	return {
		File = { " ", "LspKindFile" },
		Module = { " ", "LspKindModule" },
		Namespace = { " ", "LspKindNamespace" },
		Package = { " ", "LspKindPackage" },
		Class = { " ", "LspKindClass" },
		Method = { " ", "LspKindMethod" },
		Property = { " ", "LspKindProperty" },
		Field = { " ", "LspKindField" },
		Constructor = { " ", "LspKindConstructor" },
		Enum = { "了", "LspKindEnum" },
		Interface = { " ", "LspKindInterface" },
		Function = { " ", "LspKindFunction" },
		Variable = { " ", "LspKindVariable" },
		Constant = { " ", "LspKindConstant" },
		String = { " ", "LspKindString" },
		Number = { " ", "LspKindNumber" },
		Boolean = { " ", "LspKindBoolean" },
		Array = { " ", "LspKindArray" },
		Object = { " ", "LspKindObject" },
		Key = { " ", "LspKindKey" },
		Null = { " ", "LspKindNull" },
		EnumMember = { " ", "LspKindEnumMember" },
		Struct = { " ", "LspKindStruct" },
		Event = { " ", "LspKindEvent" },
		Operator = { " ", "LspKindOperator" },
		TypeParameter = { " ", "LspKindTypeParameter" },
		TypeAlias = { " ", "LspKindTypeAlias" },
		Parameter = { " ", "LspKindParameter" },
		StaticMethod = { "ﴂ ", "LspKindStaticMethod" },
		Macro = { " ", "LspKindMacro" },
		Text = { " ", "LspKindText" },
		Snippet = { " ", "LspKindSnippet" },
		Folder = { " ", "LspKindFolder" },
		Unit = { " ", "LspKindUnit" },
		Value = { " ", "LspKindValue" },
	}
end

-- Backwards compatibility
function M.custom_colors()
	local C = require("catppuccin.palettes").get_palette()
	return {
		normal_bg = C.base,
		title_bg = C.green,
		red = C.red,
		magenta = C.maroon,
		orange = C.peach,
		yellow = C.yellow,
		green = C.green,
		cyan = C.sky,
		blue = C.blue,
		purple = C.mauve,
		white = C.text,
		black = C.crust,
	}
end

return M
