local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Leader mappings --
-- ToggleDiagOff

keymap("n", "<leader>z", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>o", ":Telescope resume<CR>", opts)
keymap("n", "<leader>ff", ":Telescope git_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>p", ":Telescope projects<CR>", opts)
keymap("n", "<leader>r", ":Telescope oldfiles <CR>", opts)
keymap("n", "<leader>r", ":Telescope oldfiles <CR>", opts)
keymap("n", "<leader>t", ":TransparentToggle<CR>", opts)

keymap("n", "<leader>d", ":ToggleDiag<CR>", opts)

keymap("n", "<leader>n", ":noh<CR>", opts)
keymap("n", "<leader>e", ":e#<CR>", opts)
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>a", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>y", ":lua vim.lsp.buf.format(nil, 100000)<CR>", opts)

keymap("n", "<leader>m", ":Alpha<CR>", opts) -- menu
keymap("n", "<leader>g", ":lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>l", ":luafile %<CR>", opts)
keymap("n", "<C-[>", "<C-[>:noh<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Move to beginning and end
keymap("n", "B", "_", opts)
keymap("n", "E", "$", opts)
keymap("v", "B", "_", opts)
keymap("v", "E", "$", opts)
keymap("x", "B", "_", opts)
keymap("x", "E", "$", opts)

-- Search and center
keymap("n", "N", "Nzzzv", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "J", "mzJ`z", opts)

-- Resize with arrows
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<leader>k", "<Esc>:m .-2<CR>", opts)
keymap("n", "<leader>j", "<Esc>:m .+1<CR>", opts)

-- Move text up and down
keymap("v", "<leader>j", ":m .+1<CR>==", opts)
keymap("v", "<leader>k", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<leader>j", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<leader>k", ":move '<-2<CR>gv-gv", opts)

-- USE 'ga' + keyboard shortcut for text case
