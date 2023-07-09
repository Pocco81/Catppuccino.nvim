local configs = {
	without_setup = {},
	transparent_background = {
		transparent = true,
	},
	cterm = {
		custom_highlight = function(C)
			return {
				SpellBad = { cterm = { underdashed = true } },
			}
		end,
	},

	-- User configs
	nullchilly = {
		{
			term_colors = true,
			transparent_background = false,
			styles = {
				comments = {},
				conditionals = {},
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
			},
			color_overrides = {
				mocha = {
					base = "#000000",
					mantle = "#000000",
					crust = "#000000",
				},
			},
			integrations = {
				dropbar = {
					enabled = true,
					color_mode = true,
				},
			},
		},
	},
	nekowinston = {
		transparent_background = not vim.g.neovide,
		dim_inactive = {
			enable = true,
			shade = "dark",
			percentage = 0.15,
		},
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
		},
		term_colors = true,
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "undercurl" },
					hints = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
				},
			},
			cmp = true,
			lsp_trouble = true,
			nvimtree = true,
			which_key = true,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = true,
			},
			navic = {
				enabled = true,
				custom_bg = "NONE",
			},
			gitsigns = true,
			lightspeed = true,
			markdown = true,
			neogit = true,
			symbols_outline = true,
			ts_rainbow = true,
			vimwiki = true,
			notify = true,
		},
		highlight_overrides = {
			all = function(colors)
				return {
					-- borders
					FloatBorder = { fg = colors.overlay0 },
					LspInfoBorder = { link = "FloatBorder" },
					NvimTreeWinSeparator = { link = "FloatBorder" },
					WhichKeyBorder = { link = "FloatBorder" },
					-- telescope
					TelescopeBorder = { link = "FloatBorder" },
					TelescopeTitle = { fg = colors.text },
					TelescopeSelection = { link = "Selection" },
					TelescopeSelectionCaret = { link = "Selection" },
					-- pmenu
					PmenuSel = { link = "Selection" },
					-- bufferline
					BufferLineTabSeparator = { link = "FloatBorder" },
					BufferLineSeparator = { link = "FloatBorder" },
					BufferLineOffsetSeparator = { link = "FloatBorder" },
					--
					FidgetTitle = { fg = colors.subtext1 },
					FidgetTask = { fg = colors.subtext0 },

					NotifyBackground = { bg = colors.base },
					NotifyINFOBorder = { link = "NotifyInfoTitle" },
					NotifyINFOIcon = { link = "NotifyINFOTitle" },
					NotifyINFOTitle = { fg = colors.pink },
				}
			end,
		},
	},
	backwardspy = {
		flavour = os.getenv "appearance" == "light" and "latte" or "mocha",
		integrations = {
			gitsigns = true,
			indent_blankline = { enabled = true },
			leap = true,
			mini = true,
			neotree = true,
			noice = true,
			cmp = true,
			notify = true,
			treesitter = true,
			telescope = true,
			which_key = true,
		},
		color_overrides = {
			mocha = {
				base = "#171717",
				mantle = "#101010",
				crust = "#0C0C0C",
			},
		},
		custom_highlights = function(colors)
			local utils = require "catppuccin.utils.colors"
			local tint = function(color) return utils.blend(color, colors.base, 0.2) end

			return {
				--
				-- notify
				--
				NotifyBackground = { bg = colors.mantle },
				--
				-- noice
				--
				NoiceCmdlinePopup = { bg = colors.mantle },
				NoiceCmdlinePopupBorder = { bg = colors.mantle, fg = colors.mantle },
				--
				-- telescope
				--
				TelescopeMatching = { fg = colors.yellow },
				TelescopeSelection = { fg = colors.text, bg = colors.surface0 },
				-- results
				TelescopeResultsNormal = { bg = colors.mantle },
				TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
				TelescopeResultsTitle = { fg = colors.mantle },
				-- prompt
				TelescopePromptNormal = { bg = colors.surface0 },
				TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
				TelescopePromptTitle = { bg = colors.teal, fg = colors.mantle },
				TelescopePromptPrefix = { bg = colors.surface0 },
				-- preview
				TelescopePreviewNormal = { bg = colors.crust },
				TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
				TelescopePreviewTitle = { bg = colors.pink, fg = colors.mantle },
				--
				-- neotree
				--
				NeoTreeNormal = { bg = colors.mantle },
				NeoTreeNormalNC = { bg = colors.mantle },
				--
				-- cmp
				--
				PmenuSel = { bg = colors.mantle, fg = "NONE" },
				Pmenu = { fg = colors.text, bg = colors.crust },

				CmpItemAbbrDeprecated = { fg = colors.overlay0, bg = "NONE", style = { "strikethrough" } },
				CmpItemAbbrMatch = { fg = colors.yellow, bg = "NONE", style = { "bold" } },
				CmpItemAbbrMatchFuzzy = { fg = colors.yellow, bg = "NONE", style = { "bold" } },
				CmpItemMenu = { fg = colors.lavender, bg = "NONE", style = { "italic" } },

				CmpItemKindField = { fg = colors.rosewater, bg = tint(colors.rosewater) },
				CmpItemKindProperty = { fg = colors.rosewater, bg = tint(colors.rosewater) },
				CmpItemKindEvent = { fg = colors.rosewater, bg = tint(colors.rosewater) },

				CmpItemKindText = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindModule = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindVariable = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindFile = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindUnit = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindValue = { fg = colors.text, bg = tint(colors.text) },

				CmpItemKindEnum = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindReference = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindClass = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindFolder = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindEnumMember = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindInterface = { fg = colors.yellow, bg = tint(colors.yellow) },

				CmpItemKindKeyword = { fg = colors.mauve, bg = tint(colors.mauve) },

				CmpItemKindConstant = { fg = colors.peach, bg = tint(colors.peach) },

				CmpItemKindConstructor = { fg = colors.lavender, bg = tint(colors.lavender) },

				CmpItemKindFunction = { fg = colors.blue, bg = tint(colors.blue) },
				CmpItemKindMethod = { fg = colors.blue, bg = tint(colors.blue) },

				CmpItemKindStruct = { fg = colors.teal, bg = tint(colors.teal) },
				CmpItemKindOperator = { fg = colors.teal, bg = tint(colors.teal) },

				CmpItemKindSnippet = { fg = colors.flamingo, bg = tint(colors.flamingo) },

				CmpItemKindColor = { fg = colors.pink, bg = tint(colors.pink) },
				CmpItemKindTypeParameter = { fg = colors.maroon, bg = tint(colors.maroon) },
			}
		end,
	},
	calops = {
		integrations = {
			telescope = true,
			neotree = {
				enabled = true,
				show_root = true,
				transparent_panel = false,
			},
			indent_blankline = {
				enabled = false,
				colored_indent_levels = false,
			},
			cmp = true,
			gitsigns = true,
			notify = true,
			mini = true,
			native_lsp = {
				inlay_hints = {
					background = false,
				},
			},
		},
		compile = {
			enabled = true,
		},
		custom_highlights = function()
			local palette = C
			local utils = U

			return {
				NormalFloat = { bg = palette.base },
				FloatBorder = { fg = palette.mauve },
				TermFloatBorder = { fg = palette.red },

				TelescopeBorder = { fg = palette.yellow },
				TelescopePromptBorder = { fg = palette.peach },
				TelescopePreviewBorder = { fg = palette.teal },
				TelescopeResultsBorder = { fg = palette.green },

				InclineNormalNC = { bg = palette.surface1, fg = palette.base, blend = 0 },
				InclineNormal = { bg = palette.overlay1, fg = palette.base, blend = 0 },

				TreesitterContext = { bg = palette.base, style = { "italic" }, blend = 0 },
				TreesitterContextSeparator = { fg = palette.surface1 },

				DiagnosticUnderlineError = { sp = palette.red, style = { "undercurl" } },
				DiagnosticUnderlineWarn = { sp = palette.yellow, style = { "undercurl" } },
				DiagnosticUnderlineInfo = { sp = palette.sky, style = { "undercurl" } },
				DiagnosticUnderlineHint = { sp = palette.teal, style = { "undercurl" } },

				DiagnosticLineError = { bg = utils.darken(palette.red, 0.095, palette.base) },
				DiagnosticLineWarn = { bg = utils.darken(palette.yellow, 0.095, palette.base) },
				DiagnosticLineInfo = { bg = utils.darken(palette.sky, 0.095, palette.base) },
				DiagnosticLineHint = { bg = utils.darken(palette.teal, 0.095, palette.base) },

				DiagnosticUnnecessary = { sp = palette.mauve, style = { "undercurl" } },

				IndentBlanklineContextChar = { fg = palette.mauve, style = { "nocombine" } },

				ModesInsert = { bg = palette.green },
				ModesVisual = { bg = palette.mauve },

				LspInlayHint = { fg = palette.surface1 },
				Comment = { fg = utils.darken(palette.lavender, 0.6) },

				IlluminatedWordText = { bg = palette.surface1, style = { "bold", "underdotted" } },
				IlluminatedWordWrite = { bg = palette.surface1, style = { "bold", "underdotted" } },
				IlluminatedWordRead = { bg = palette.surface1, style = { "bold", "underdotted" } },

				UfoVirtText = { fg = palette.base, bg = palette.teal, style = { "bold" } },
				UfoVirtTextPill = { fg = palette.teal },
				UfoFoldedBg = { bg = utils.darken(palette.teal, 0.3) },
				Folded = { bg = palette.base },

				CursorLineSign = { link = "CursorLine" },

				GitSignsAdd = { fg = palette.green, bg = "none" },
				GitSignsChange = { fg = palette.peach },
				GitSignsDelete = { fg = palette.red },
				DiffDeleteVirtLn = { fg = utils.darken(palette.red, 0.3) },

				CustomTabline = { fg = palette.base, bg = palette.surface1 },
				CustomTablineSel = { fg = palette.base, bg = palette.overlay1 },
				CustomTablineLogo = { fg = palette.base, bg = palette.mauve },
				CustomTablinePillIcon = { bg = palette.surface1 },
				CustomTablinePillIconSel = { bg = palette.surface2 },
				CustomTablineModifiedIcon = { fg = palette.peach },
				CustomTablineNumber = { style = { "bold" } },

				VirtColumn = { fg = palette.surface0 },

				CuicuiCharColumn1 = { fg = utils.darken(palette.surface0, 0.8) },
				CuicuiCharColumn2 = { fg = palette.surface0 },

				CopilotSuggestion = { fg = utils.darken(palette.peach, 0.8), style = { "italic" } },

				MultiCursor = { bg = palette.peach, fg = palette.base },
				VM_Mono = { bg = palette.peach, fg = palette.base },

				FlashLabel = { bg = palette.peach, fg = palette.base, style = { "bold" } },
				FlashMatch = { bg = palette.lavender, fg = palette.base },
				FlashBackdrop = { bg = nil, fg = palette.overlay0, style = { "nocombine" } },

				-- Syntax
				["@parameter"] = { fg = palette.text, style = { "nocombine" } },
				["@namespace"] = { fg = palette.pink, style = { "nocombine" } },
				["@number"] = { fg = palette.green },
				["@boolean"] = { fg = palette.green, style = { "bold" } },
				["@type.qualifier"] = { fg = palette.mauve, style = { "bold" } },
				["@function.macro"] = { fg = palette.blue },
				["@constant.builtin"] = { fg = palette.green },
				["@property"] = { fg = utils.brighten(palette.yellow, 0.7) },
				["@field"] = { fg = utils.brighten(palette.yellow, 0.7) },

				["@lsp.type.struct"] = { fg = palette.yellow },
				["@lsp.type.property"] = { fg = utils.brighten(palette.yellow, 0.7) },
				["@lsp.type.interface"] = { fg = palette.peach },
				["@lsp.type.builtinType"] = { fg = palette.yellow, style = { "bold" } },
				["@lsp.type.enum"] = { fg = palette.teal },
				["@lsp.type.enumMember"] = { fg = palette.green },
				["@lsp.type.variable"] = { fg = palette.text },
				["@lsp.type.parameter"] = { fg = palette.text },
				["@lsp.type.namespace"] = { fg = palette.pink },
				["@lsp.type.number"] = { fg = palette.green },
				["@lsp.type.boolean"] = { fg = palette.green, style = { "bold" } },
				["@lsp.type.keyword"] = { fg = palette.mauve },
				["@lsp.type.decorator"] = { fg = palette.blue },
				["@lsp.type.unresolvedReference"] = { sp = palette.surface2, style = { "undercurl" } },

				["@lsp.mod.reference"] = { style = { "italic" } },
				["@lsp.mod.mutable"] = { style = { "bold" } },
				["@lsp.mod.trait"] = { fg = palette.sapphire },
				["@lsp.typemod.variable.static"] = { style = { "underdashed" } },
				["@lsp.typemod.method.defaultLibrary"] = {},
				["@lsp.typemod.variable.callable"] = { fg = palette.teal },
			}
		end,
	},
	mrtnvgr = {
		Pmenu = { bg = "" },
		PmenuSbar = { bg = "" },
		NormalFloat = { bg = "" },
	},
	geril2207 = {
		flavour = "macchiato",
		transparent_background = true,
		highlight_overrides = {
			all = function(colors)
				return {
					DiagnosticSignWarn = { fg = colors.yellow, bg = colors.none },
					DiagnosticSignHint = { fg = colors.teal, bg = colors.none },
					DiagnosticSignInfo = { fg = colors.peach, bg = colors.none },
					DiagnosticSignError = { fg = colors.red, bg = colors.none },
					DiagnosticVirtualTextWarn = { fg = colors.yellow, bg = colors.none },
					DiagnosticVirtualTextHint = { fg = colors.teal, bg = colors.none },
					DiagnosticVirtualTextInfo = { fg = colors.peach, bg = colors.none },
					DiagnosticVirtualTextError = { fg = colors.red, bg = colors.none },
				}
			end,
		},

		term_colors = false,
		no_italic = true, -- Force no italic
		no_bold = true, -- Force no bold
		styles = {
			comments = {},
			conditionals = {},
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
			operators = {},
		},
	},
	emxxjnm = {
		flavour = "mocha",
		transparent_background = true,
		styles = {
			keywords = { "bold" },
			functions = { "italic" },
		},
		integrations = {
			leap = true,
			mason = true,
			neotree = true,
			neotest = true,
			which_key = true,
			nvimtree = false,
			dashboard = false,
			ts_rainbow = false,
			dap = { enabled = true, enable_ui = true },
		},
		custom_highlights = function(colors)
			local default = {
				-- custom
				PanelHeading = {
					fg = colors.lavender,
					bg = true and "NONE" or colors.crust,
					style = { "bold", "italic" },
				},

				-- lazy.nvim
				LazyH1 = {
					bg = true and "NONE" or colors.peach,
					fg = true and colors.lavender or colors.base,
					style = { "bold" },
				},
				LazyButton = {
					bg = "NONE",
					fg = true and colors.overlay0 or colors.subtext0,
				},
				LazyButtonActive = {
					bg = true and "NONE" or colors.overlay1,
					fg = true and colors.lavender or colors.base,
					style = { " bold" },
				},
				LazySpecial = { fg = colors.sapphire },

				CmpItemMenu = { fg = colors.subtext1 },
				MiniIndentscopeSymbol = { fg = colors.overlay0 },

				FloatBorder = {
					fg = true and colors.overlay1 or colors.mantle,
					bg = true and "NONE" or colors.mantle,
				},

				FloatTitle = {
					fg = colors.subtext0,
					bg = true and "NONE" or colors.mantle,
				},
			}

			local telescope = {
				TelescopePromptNormal = { bg = colors.crust },
				TelescopePromptTitle = { fg = colors.subtext0 },
				TelescopePromptBorder = { bg = colors.crust, fg = colors.crust },
				TelescopePromptPrefix = { bg = colors.crust, fg = colors.flamingo },

				TelescopeResultsNormal = { bg = colors.mantle },
				TelescopeResultsTitle = { fg = colors.subtext0 },
				TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },

				TelescopePreviewNormal = { bg = colors.crust },
				TelescopePreviewTitle = { fg = colors.subtext0 },
				TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
			}

			if not true then return vim.tbl_extend("keep", default, telescope) end

			return default
		end,
	},
	Rishabh672003 = {
		flavour = "mocha", -- latte, frappe, macchiato, mocha
		background = {
			-- :h background
			light = "latte",
			dark = "mocha",
		},
		transparent_background = false,
		term_colors = false,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false, -- Force no italic
		no_bold = false, -- Force no bold
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
		},
		color_overrides = {},
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			telescope = true,
			notify = true,
			mini = false,
			-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
		},
		custom_highlights = {
			WhichKeyGroup = { fg = "#FAB387" },
			WhichKeySeparator = { fg = "#cdd6f4" },
		},
	},
	LordMZTE = {
		flavour = "mocha",
		integrations = {
			aerial = true,
			harpoon = true,
			gitsigns = true,
			neogit = true,
			noice = true,
			cmp = true,
			dap = { enabled = true, enable_ui = true },
			native_lsp = { enabled = true },
			notify = true,
			nvimtree = true,
			treesitter = true,
			treesitter_context = true,
			ts_rainbow2 = true,
			telescope = true,
		},
	},
	Stonks3141 = {
		flavour = "macchiato",
		integrations = {
			leap = true,
			neogit = true,
			notify = true,
			neotest = true,
		},
	},
	aimestereo = {
		telescope = true,
		harpoon = true,
		mason = true,
		neotest = true,
	},
}

describe("setup", function()
	before_each(function()
		for name, _ in pairs(package.loaded) do
			if name:match "^catppuccin" and name ~= "catppuccin" then package.loaded[name] = nil end
		end
	end)
	for name, config in pairs(configs) do
		it(name, function()
			require("catppuccin").setup(config)
			assert.equals(
				pcall(function()
					require("catppuccin").compile()
					vim.cmd.colorscheme "catppuccin"
				end),
				true
			)
		end)
	end
end)
