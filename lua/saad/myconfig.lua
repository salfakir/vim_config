-- mystuff c
-- general configs
vim.o.conceallevel = 2
require("lspconfig").intelephense.setup({})
-- --copilot
-- vim.api.nvim_set_keymap("i", "<M-h>", "v:lua.require'copilot'.accept()", { expr = true, noremap = true, silent = true })
-- arrowkeys
vim.o.guicursor = "n:ver25,i:ver25"
local modes = { "n", "v" }
for _, mode in ipairs(modes) do
	vim.api.nvim_set_keymap(mode, "h", "i", { noremap = true, silent = true })

	vim.api.nvim_set_keymap(mode, "j", "<Left>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap(mode, "k", "<Down>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap(mode, "i", "<Up>", { noremap = true, silent = true })
end
vim.opt.whichwrap:append("h,l,<,>,[,]")
-- -- ok i really need to change hte nvim explorer key binds
-- vim.api.nvim_create_augroup("NetrwMapping", { clear = true })
-- vim.api.nvim_create_autocmd("FileType", {
-- 	group = "NetrwMapping",
-- 	pattern = "netrw",
-- 	callback = function()
-- 		vim.api.nvim_buf_set_keymap(0, "n", "h", "i", { noremap = true, silent = true })
-- 		vim.api.nvim_buf_set_keymap(0, "n", "i", "<Up>", { noremap = true, silent = true })
-- 	end,
-- })
-- vim.g.netrw_liststyle = 3
-- going directly to init main
local config_dir = vim.fn.stdpath("config") -- Gets the path to the Neovim configuration directory

-- Example: Open the init.lua file with a keybinding
vim.api.nvim_set_keymap(
	"n",
	"<leader>im",
	":e " .. config_dir .. "/init.lua<CR>",
	{ desc = "edit global config", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>ip",
	":e " .. config_dir .. "/lua/saad/myconfig.lua<CR>",
	{ desc = "edit my personal config", noremap = true, silent = true }
)
-- numbering system
-- vim.api.nvim_set_keymap("i", "<M-m>", "1", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-m>", "1", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-m>", "1", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-,>", "2", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-,>", "2", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-,>", "2", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-.>", "3", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-.>", "3", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-.>", "3", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-j>", "4", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-j>", "4", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-j>", "4", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-k>", "5", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-k>", "5", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-k>", "5", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-l>", "6", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-l>", "6", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-l>", "6", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-u>", "7", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-u>", "7", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-u>", "7", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-i>", "8", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-i>", "8", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-i>", "8", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-o>", "9", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-o>", "9", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-o>", "9", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-;>", "0", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<M-;>", "0", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-;>", "0", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-a>", "<Left>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-s>", "<Down>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-d>", "<Right>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-w>", "<Up>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<M-c>", "<ESC>", { noremap = true, silent = true })

-- tab movment system
-- vim.api.nvim_set_keymap("n", "p<M-w>n", "<C-w>w", { desc = "Switch window", noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "w<M-w>j", "<C-w>h", { desc = "Switch to left window", noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-w>", "<C-w>l", { desc = "Switch to right window", noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-w>i", "<C-w>k", { desc = "Switch to the above window", noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-w>k", "<C-w>j", { desc = "Switch to the below window", noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-w>v", "<C-w>v", { desc = "Split vertically", noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-w>h", "<C-w>s", { desc = "Split horizontally", noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-w>i", "<C-w>k", { desc = "Switch to the below window", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>k", "<C-w>j", { desc = "Switch to the below window", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>j", "<C-w>h", { desc = "Switch to the above window", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>h", "<C-w>s", { desc = "Split horizontally", noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-w>s", "<leader>wj", { desc = "Select window", noremap = true, silent = true })
--zenmode
vim.api.nvim_set_keymap("n", "<leader>mz", ":ZenMode<CR>", { desc = "Enter ZenMode", noremap = true, silent = true })
-- nvim tree
vim.api.nvim_set_keymap(
	"n",
	"<leader>nt",
	":lua OpenTree()<CR>",
	{ desc = "open nvim tree", noremap = true, silent = true }
)
function OpenTree()
	vim.cmd("NvimTreeToggle<CR>")
	vim.cmd("setlocal relativenumber")
end
--markdown stuff
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.api.nvim_set_keymap(
	"n",
	"<leader>ff",
	":Telescope find_files<cr>",
	{ desc = "Find a file in current directory", noremap = true, silent = true }
)
-- note taking system
function _G.InsertDashOnEnter()
	if vim.bo.filetype == "markdown" then
		local line = vim.api.nvim_get_current_line()
		if line:match("^%s*%- ") then
			return vim.api.nvim_replace_termcodes("<CR>- ", true, true, true)
		end
	end
	return vim.api.nvim_replace_termcodes("<CR>", true, true, true)
end

vim.api.nvim_set_keymap("i", "<CR>", "v:lua.InsertDashOnEnter()", { expr = true, noremap = true })
vim.api.nvim_set_keymap(
	"n",
	"<leader>nn",
	":lua CreateNextNoteFile()<CR>",
	{ desc = "Create a new note", noremap = true, silent = true }
)
function Mylog(msg)
	local logFile = os.getenv("HOME") .. "/Logfile.txt" -- Update this path
	local file, err = io.open(logFile, "a")
	if not file then
		print("Error opening log file: " .. err) -- This will print the error to Neovim
		return
	end
	local timestamp = os.date("%Y-%m-%d %H:%M:%S")
	file:write(timestamp .. " - " .. tostring(msg) .. "\n")
	file:close()
	print("Logged: " .. msg) -- Confirmation message
end
function CreateNextNoteFile()
	-- Get the full path of the current file
	local full_path = vim.fn.expand("%:p")
	-- Extract the directory path
	local dir_path = vim.fn.expand("%:p:h") .. "/"
	-- Extract the file name
	local file_name = vim.fn.expand("%:t")

	-- Pattern to match file name ending in a number, e.g., "note-123.txt"
	local base_name, num, extension = file_name:match("(.+)-(%d+)(%.%w+)")
	if num then
		local path = dir_path .. base_name
		path = path:gsub(" ", "\\ ")
		local command = "ls " .. path .. "-*"
		Mylog("Command used: " .. command)
		local pfile = io.popen(command)
		local output = pfile:read("*a") -- Read the entire output of the command
		pfile:close() -- Close the process file
		Mylog("output of ls : " .. vim.inspect(output))
		local highest = 0
		for line in output:gmatch("([^\n]+)") do
			local pattern = base_name .. "%-(%d+)%" .. extension .. "$"
			Mylog("the pattern in the loop: " .. pattern)
			local n = line:match(pattern)
			Mylog("number of file in the loop : " .. tostring(n))
			if n then
				n = tonumber(n)
				if n and n > highest then
					highest = n
				end
			end
		end
		highest = highest + 1
		local filename = path .. "-" .. highest .. extension
		vim.cmd("e " .. filename)
		vim.cmd("w" .. "")
	else
		print("Current file does not end in a number")
	end
end
-- harpoon
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>ua", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<leader>ul", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>um", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>u,", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>u.", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>uj", function()
	harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored wituin Harpoon list
vim.keymap.set("n", "<leader>uw", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<leader>ur", function()
	harpoon:list():next()
end)
