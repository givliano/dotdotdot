-- CUSTOM SETTINGS
-- Tab/Indentation settings
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.incsearch = true

vim.opt.title = true
vim.opt.scrolloff = 10
vim.opt.inccommand = 'split'
vim.opt.breakindent = true

vim.opt.relativenumber = true

vim.opt.wildignore:append { '*/node_modules/*' }

-- Backspace
vim.opt.backspace = 'indent,eol,start'

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Consider dash `-` part of the word when using `dw`
vim.opt.iskeyword:append('-')

-- Show tab-line even if only one tab
vim.opt.showtabline = 2

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- KEYMAPS
local keymap = vim.keymap
-- PRIMEAGEN SETTINGS
keymap.set('v', 'J', '>+1<CR>gv=gv')
keymap.set('v', 'K', '<-2<CR>gv=gv')

-- Keep cursor aligned in middle while navigating
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', '<C-f>', '<C-f>zz')
keymap.set('n', '<C-b>', '<C-b>zz')

-- Replace word moving the word to the void register so it doesn't overwrite
-- the pasted value
keymap.set('x', '<leader>p', '\'_dP')

-- Easily close tabs
keymap.set('n', 'Q', ':q<CR>')

-- Do no yank with x
keymap.set('n', 'x', '"_x')
-- Delete a word backwards
-- keymap.set('n', 'dw', 'vb"_d')
-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')
-- New tab
keymap.set('n', 'te', ':tabedit<CR>')
-- Split window
keymap.set('n', '<space>\\', ':split<Return><C-w>w')
keymap.set('n', '<space>-', ':vsplit<Return><C-w>w')

-- Easier save
keymap.set({ 'n', 'i' }, '<C-a>', ':w<CR>')

-- Move window
keymap.set('n', '<space>s<left>', '<C-w>h')
keymap.set('n', '<space>s<up>', '<C-w>k')
keymap.set('n', '<space>s<down>', '<C-w>j')
keymap.set('n', '<space>s<right>', '<C-w>l')
--keymap.set('n', '<space>sh', '<C-w>h')
--keymap.set('n', '<space>sk', '<C-w>k')
--keymap.set('n', '<space>sj', '<C-w>j')
--keymap.set('n', '<space>sl', '<C-w>l')

-- keymap.set('n', '/', ':Neotree toggle current reveal_force_cwd<cr>')
keymap.set('n', '\\', ':Neotree toggle<CR>')
-- keymap.set('n', 'gd', ':Neotree float reveal_file=<cfile> reveal_force_cwd<cr>')
keymap.set('n', '|', ':Neotree toggle show buffers right<CR>')
-- keymap.set('n', '<leader>s', ':Neotree float git_status<CR>')
--
-- COLORS
-- vim.cmd('colorscheme citylights')
-- vim.cmd('colorscheme transparent')
