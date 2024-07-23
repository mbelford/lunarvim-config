lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.visual_mode["K"] = ":move '<-2<CR>gv-gv"    -- K to move selection up one line
lvim.keys.visual_mode["J"] = ":move '>+1<CR>gv-gv"    -- J to move selection down one line
lvim.keys.normal_mode["cp"] = ':let @+ = expand("%")' -- cp to copy file path of current buffer
