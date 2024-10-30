require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- 
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })


-- gett all items(functions, variables, structs etc...) in the file
map("n", "gt", "<cmd>Telescope lsp_document_symbols<CR>", {noremap = true, silent = true})

-- get all references of a specific item (function, variabla, class, enum etc...)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })

-- get all the coroutines in the specific file. 
map("n", "func", "<cmd>lua require('telescope.builtin').lsp_document_symbols({ symbols='function' })<CR>", {noremap = true, silent = true})

-- get all the methods in a file
map("n", "meth", "<cmd>lua require('telescope.builtin').lsp_document_symbols({ symbols='method' })<CR>", {noremap = true, silent = true})

