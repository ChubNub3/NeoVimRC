local g = vim.g
local opt = vim.opt
local keymap = vim.api.nvim_set_keymap
local o = vim.o
local opts = { noremap = true, silent = true }

g.mapleader = "'"

g.list = true
opt.termguicolors = true
o.hlsearch = true
o.shiftwidth=2
o.tabstop=2
o.tabstop=2
o.softtabstop=2
o.breakindent = true -- Enable break indent
o.undofile = true -- Save undo history
o.ignorecase = true -- Case insensitive searchign /C or capital in search
o.smartcase = true -- Smart Case
o.signcolumn = "yes" -- always show sign column
o.mouse="a" -- Enable mouse

require('lualine').setup()

require("nvim-tree").setup()
require("startup").setup({theme = "dashboard"})

require("indent_blankline").setup {
  show_current_context = true,
	show_current_context_start = true,
  show_end_of_line = true,
  space_char_blankline = " ",
}

require('snippy').setup({
    mappings = {
        is = {
            ['s'] = 'expand_or_advance',
            ['<S-Tab>'] = 'previous',
        },
        nx = {
            ['<leader>x'] = 'cut_text',
        },
    },
})


require'nvim-web-devicons'.get_icons()

o.relativenumber = true

keymap('i', 'jj', '<esc>', {noremap = true}) -- Go to normal mode with jj  
keymap('n', '<leader>q', ':wq<CR>', {noremap = true}) -- Write and quit
keymap('n', '<space>s', ':w<CR>', {noremap = true}) -- Save

-- Find file stuff
keymap('n', '<leader>a', ':NvimTreeToggle<CR>', {noremap = true}) --Open and close NvimTreeToggle
keymap('n', '<leader>t', ':Telescope <CR>', {noremap = true}) --Telescope

--Navigating windows
keymap('n', '<leader>s', '<C-w>v', {noremap = true}) -- Split windows vertically
keymap('n', '<leader>w', '<C-w>w', {noremap = true}) -- navigate between windows 
keymap('n', '<C-t>', '<C-w>s:term<CR>', {}) -- Open terminal

-- Move tabs 
keymap('n', '<leader>f', ':BufferPrevious<CR>', opts)
keymap('n', '<leader>1', ':BufferGoto 1<CR>', opts) -- Move tab to front
keymap('n', '<leader>2', ':BufferGoto 2<CR>', opts) -- Move tab to back


--running files
keymap('n', '<leader>c', ':!gcc % && ./a.out<CR>', opts) -- Run a C file
keymap('n', '<leader>b', ':!chmod +x ./% && ./% <CR>', opts) -- Run a Bash file
keymap('n', '<leader>p', ' :w <CR> :!python3 % <CR>', opts) -- Run a python file
keymap('n', '<leader>j', ':w <CR> :!javac % && java %:r <CR>', opts) -- Run a java file

-- Neogit
keymap('n', '<leader>g', ':Neogit <CR>', opts) 

require('packer-plugins')
