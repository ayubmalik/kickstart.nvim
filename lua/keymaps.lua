local function map(mode, lhs, rhs)
  local options = { noremap = true, silent = true }
  vim.keymap.set(mode, lhs, rhs, options)
end

-- exit insert on kj
map('i', 'kj', '<esc>')

-- delete char from right
map('i', '<c-d>', '<esc>lxi')

-- save file on ctrl-s
map('i', '<c-s>', '<esc>:update<cr>')
map('n', '<c-s>', ':update<cr>')

-- visual indent
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Disable arrow keys 😅
map('n', '<up>', '<nop>')
map('n', '<down>', '<nop>')
map('n', '<left>', '<nop>')
map('n', '<right>', '<nop>')
map('i', '<up>', '<nop>')
map('i', '<down>', '<nop>')
map('i', '<left>', '<nop>')
map('i', '<right>', '<nop>')
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')
