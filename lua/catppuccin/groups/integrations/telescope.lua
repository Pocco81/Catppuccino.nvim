local M = {}

function M.get()
	if O.integrations.telescope.style == "nvchad" then
		return {
			TelescopeBorder = {
				fg = O.transparent_background and C.blue or C.mantle,
				bg = O.transparent_background and C.none or C.mantle,
			},
			TelescopePromptBorder = {
				fg = O.transparent_background and C.blue or C.surface0,
				bg = O.transparent_background and C.none or C.surface0,
			},
			TelescopePromptNormal = {
				fg = C.text,
				bg = O.transparent_background and C.none or C.surface0,
			},
			TelescopePromptPrefix = {
				fg = C.flamingo,
				bg = O.transparent_background and C.none or C.surface0,
			},
			TelescopeNormal = {
				bg = O.transparent_background and C.none or C.mantle,
			},
			TelescopePreviewTitle = {
				fg = O.transparent_background and C.green or C.base,
				bg = O.transparent_background and C.none or C.green,
			},
			TelescopePromptTitle = {
				fg = O.transparent_background and C.red or C.base,
				bg = O.transparent_background and C.none or C.red,
			},
			TelescopeResultsTitle = {
				fg = C.mantle,
				bg = O.transparent_background and C.none or C.mantle,
			},
			TelescopeSelection = {
				fg = O.transparent_background and C.subtext0 or C.text,
				bg = O.transparent_background and C.none or C.surface0,
			},
		}
	end

	return {
		-- TelescopeNormal = { link = "NormalFloat" }, -- Respect telescope's default float bg
		TelescopeBorder = { link = "FloatBorder" },
		TelescopeSelectionCaret = { fg = C.flamingo },
		TelescopeSelection = {
			fg = O.transparent_background and C.flamingo or C.text,
			bg = O.transparent_background and C.none or C.surface0,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.blue },
	}
end

return M
