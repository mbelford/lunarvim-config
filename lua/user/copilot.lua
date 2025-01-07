vim.keymap.set('i', '<S-CR>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.keymap.set('i', '<M-C-[>', '<Plug>(copilot-previous)');
vim.keymap.set('i', '<M-C-]>', '<Plug>(copilot-next)');
vim.g.copilot_no_tab_map = true
