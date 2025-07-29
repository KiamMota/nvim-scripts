vim.keymap.set('n', '<Tab>', '$')
vim.keymap.set('n', '<S-f>', function() vim.cmd('Ex') end)

local function MoveContents()
vim.keymap.set('', '<S-Up>', function() vim.cmd('m .-2')end)
vim.keymap.set('', '<S-Down>', function() vim.cmd('m .+1') end)

end

vim.keymap.set('n', 'x', 'V', { noremap = true, silent = false})
vim.keymap.set('n', '<C-d>', function() vim.cmd('t-1') end, { noremap = true, silent = false})
vim.keymap.set('n', 'q', 'G', { noremap = true, silent = false})

vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

local function KbWindowNavigation()
  vim.keymap.set('n', '<A-Right>', function() vim.cmd('wincmd l') end, {})
  vim.keymap.set('n', '<A-Left>', function() vim.cmd('wincmd h') end, {})
  vim.keymap.set('n', '<A-Up>', function() vim.cmd('wincmd k') end, {})
  vim.keymap.set('n', '<A-Down>', function() vim.cmd('wincmd j') end, {})
end

local function KbBufferNavigation()
	vim.keymap.set('n', '<S-Tab>', ':bnext<CR>', {})
  vim.keymap.set('n', '<Tab-Left>', function() vim.cmd('bprev') end, {})
  vim.keymap.set('n', '<Tab-Right>', function() vim.cmd('bnext') end, {})
end

vim.schedule(function()
KbWindowNavigation()
KbBufferNavigation()
MoveContents()
end)
