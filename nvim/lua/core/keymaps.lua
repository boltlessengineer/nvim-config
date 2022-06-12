-- Shorten function name
local set = vim.keymap.set
-- local del = vim.keymap.del

-- Remap space as leader key
set('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--  n : normal mode
--  i : insert mode
--  v : visual mode & select mode
--  x : visual mode only
--  s : select mode only
--  t : terminal mode
--  c : command mode

-- Normal --
-- Better window navigation
-- set('n', '<C-h>', '<C-w><C-h>')
-- set('n', '<C-j>', '<C-w><C-j>')
-- set('n', '<C-k>', '<C-w><C-k>')
-- set('n', '<C-l>', '<C-w><C-l>')

-- Resize with arrows
set('n', '<C-w><Up>', '<C-w>+')
set('n', '<C-w><Down>', '<C-w>-')
set('n', '<C-w><Left>', '<C-w><')
set('n', '<C-w><Right>', '<C-w>>')

-- Navigate buffers
set('n', '<Right>', '<cmd>BufferLineCycleNext<CR>')
set('n', '<Left>', '<cmd>BufferLineCyclePrev<CR>')

-- Navigate tabs
set('n', '<Tab>', '<cmd>tabnext<CR>')
set('n', '<S-Tab>', '<cmd>tabprev<CR>')
set('n', '<leader>t', ':tabnew ')

set('n', '`', '<cmd>NvimTreeToggle<CR>')

-- Keeping search results centered
set('n', 'n', 'nzzzv')
set('n', 'N', 'Nzzzv')

-- Insert --
-- Press jk fast to exit Insert mode
set({ 'i', 'v', 'x' }, 'jk', '<ESC>')

-- TODO using clipboard in graphical applications
-- https://github.com/neovide/neovide/issues/1282#issuecomment-1108646687
-- `"+y` to copy, `"+p` to paste
-- `<D-` stands for super key. see `:h <D-`
vim.g.neovide_input_use_logo = true
set('v', '<D-c>', '<cmd>echo "want to copy"<CR>')
set('v', '<D-v>', '<cmd>echo "want to paste"<CR>')

-- Visual --
-- Stay in indent mode
set('v', '<', '<gv')
set('v', '>', '>gv')

-- Move text opt and down
set('v', 'J', ":m '>+1<CR>gv=gv")
set('v', 'K', ":m '<-2<CR>gv=gv")
