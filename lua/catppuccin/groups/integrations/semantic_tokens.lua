local M = {}

function M.get()
	if vim.treesitter.highlighter.hl_map then
		vim.notify_once(
			[[Catppuccin (info):
semantic_tokens integration requires neovim 0.8
If you want to stay on nvim 0.7, disable the integration.
]],
			vim.log.levels.INFO
		)
		return {}
	end
	return {
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.comment"] = { link = "@comment" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.escapeSequence"] = { link = "@string.escape" },
		["@lsp.type.event"] = { link = "@event" },
		["@lsp.type.formatSpecifier"] = { link = "@markup.link.label" },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.keyword"] = { link = "@keyword" },
		["@lsp.type.modifier"] = { link = "@keyword" },
		["@lsp.type.namespace"] = { link = "@module" },
		["@lsp.type.number"] = { link = "@number" },
		["@lsp.type.operator"] = { link = "@operator" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.property.cpp"] = { link = "@property.cpp" },
		["@lsp.type.regex"] = { link = "@string.regexp" },
		["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.typeParameter"] = { link = "@type" },
		["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
		["@lsp.typemod.enum.defaultLibrary"] = { link = "@type" },
		["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant" },
		["@lsp.typemod.function.defaultLibrary"] = { link = "@function" },
		["@lsp.typemod.keyword.async"] = { link = "@keyword" },
		["@lsp.typemod.macro.defaultLibrary"] = { link = "@constant.macro" },
		["@lsp.typemod.method.defaultLibrary"] = { link = "@function" },
		["@lsp.typemod.operator.injected"] = { link = "@operator" },
		["@lsp.typemod.string.injected"] = { link = "@string" },
		["@lsp.typemod.type.defaultLibrary"] = { link = "@type" },
		["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable" },
		["@lsp.typemod.variable.injected"] = { link = "@variable" },
	}
end

return M
