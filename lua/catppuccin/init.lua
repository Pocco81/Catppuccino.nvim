local is_vim = vim.fn.has "nvim" ~= 1
if is_vim then require "catppuccin.lib.vim" end

---@type Catppuccin
local M = {
	default_options = {
		flavour = "auto",
		background = {
			light = "latte",
			dark = "mocha",
		},
		compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
		transparent_background = false,
		show_end_of_buffer = false,
		term_colors = false,
		kitty = vim.env.KITTY_WINDOW_ID and true or false,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false,
		no_bold = false,
		no_underline = false,
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
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
		default_integrations = true,
		integrations = {
			alpha = true,
			cmp = true,
			dap = true,
			dap_ui = true,
			dashboard = true,
			diffview = false,
			flash = true,
			gitsigns = true,
			markdown = true,
			neogit = true,
			neotree = true,
			nvimtree = true,
			ufo = true,
			rainbow_delimiters = true,
			render_markdown = true,
			semantic_tokens = not is_vim,
			telescope = { enabled = true },
			treesitter = not is_vim,
			treesitter_context = true,
			barbecue = {
				dim_dirname = true,
				bold_basename = true,
				dim_context = false,
				alt_background = false,
			},
			illuminate = {
				enabled = true,
				lsp = false,
			},
			indent_blankline = {
				enabled = true,
				scope_color = "",
				colored_indent_levels = false,
			},
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
					ok = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
					ok = { "underline" },
				},
				inlay_hints = {
					background = true,
				},
			},
			navic = {
				enabled = false,
				custom_bg = "NONE",
			},
			dropbar = {
				enabled = true,
				color_mode = false,
			},
			colorful_winsep = {
				enabled = false,
				color = "red",
			},
			mini = {
				enabled = true,
				indentscope_color = "overlay2",
			},
		},
		color_overrides = {},
		highlight_overrides = {},
	},
	flavours = { latte = 1, frappe = 2, macchiato = 3, mocha = 4 },
	path_sep = jit and (jit.os == "Windows" and "\\" or "/") or package.config:sub(1, 1),
}

M.options = M.default_options

function M.compile()
	local user_flavour = M.flavour
	for flavour, _ in pairs(M.flavours) do
		M.flavour = flavour
		require("catppuccin.lib." .. (is_vim and "vim." or "") .. "compiler").compile(flavour)
	end
	M.flavour = user_flavour -- Restore user flavour after compile
end

local function get_flavour(default)
	local flavour
	if default and default == M.flavour and vim.o.background ~= (M.flavour == "latte" and "light" or "dark") then
		flavour = M.options.background[vim.o.background]
	else
		flavour = default
	end

	if flavour and not M.flavours[flavour] then
		vim.notify(
			string.format(
				"Catppuccin (error): Invalid flavour '%s', flavour must be 'latte', 'frappe', 'macchiato', 'mocha' or 'auto'",
				flavour
			),
			vim.log.levels.ERROR
		)
		flavour = nil
	end
	return flavour or M.options.flavour or vim.g.catppuccin_flavour or M.options.background[vim.o.background]
end

local did_setup = false

function M.load(flavour)
	if M.options.flavour == "auto" then -- set colorscheme based on o:background
		M.options.flavour = nil -- ensure that this will only run once on startup
	end
	if not did_setup then M.setup() end
	M.flavour = get_flavour(flavour)
	local compiled_path = M.options.compile_path .. M.path_sep .. M.flavour
	local f = loadfile(compiled_path)
	if not f then
		M.compile()
		f = assert(loadfile(compiled_path), "could not load cache")
	end
	f(flavour or M.options.flavour or vim.g.catppuccin_flavour)
end

---@type fun(user_conf: CatppuccinOptions?)
function M.setup(user_conf)
	did_setup = true
	-- Parsing user config
	user_conf = user_conf or {}

	if user_conf.default_integrations == false then M.default_options.integrations = {} end

	M.options = vim.tbl_deep_extend("keep", user_conf, M.default_options)
	M.options.highlight_overrides.all = user_conf.custom_highlights or M.options.highlight_overrides.all

	-- Get cached hash
	local cached_path = M.options.compile_path .. M.path_sep .. "cached"
	local file = io.open(cached_path)
	local cached = nil
	if file then
		cached = file:read()
		file:close()
	end

	-- Get current hash
	local git_path = debug.getinfo(1).source:sub(2, -24) .. ".git"
	local git = vim.fn.getftime(git_path) -- 2x faster vim.loop.fs_stat
	local hash = require("catppuccin.lib.hashing").hash(user_conf)
		.. (git == -1 and git_path or git) -- no .git in /nix/store -> cache path
		.. (vim.o.winblend == 0 and 1 or 0) -- :h winblend
		.. (vim.o.pumblend == 0 and 1 or 0) -- :h pumblend

	-- Recompile if hash changed
	if cached ~= hash then
		M.compile()
		file = io.open(cached_path, "wb")
		if file then
			file:write(hash)
			file:close()
		end
	end
end

if is_vim then return M end

vim.api.nvim_create_user_command(
	"Catppuccin",
	function(inp) vim.api.nvim_command("colorscheme catppuccin-" .. get_flavour(inp.args)) end,
	{
		nargs = 1,
		complete = function(line)
			return vim.tbl_filter(function(val) return vim.startswith(val, line) end, vim.tbl_keys(M.flavours))
		end,
	}
)

vim.api.nvim_create_user_command("CatppuccinCompile", function()
	for name, _ in pairs(package.loaded) do
		if name:match "^catppuccin." then package.loaded[name] = nil end
	end
	M.compile()
	vim.notify("Catppuccin (info): compiled cache!", vim.log.levels.INFO)
	vim.cmd.colorscheme "catppuccin"
end, {})

if vim.g.catppuccin_debug then
	vim.api.nvim_create_autocmd("BufWritePost", {
		pattern = "*/catppuccin/*",
		callback = function()
			vim.schedule(function() vim.cmd "CatppuccinCompile" end)
		end,
	})
end

return M
