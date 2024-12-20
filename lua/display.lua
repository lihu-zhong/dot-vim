---@diagnostic disable: undefined-global
vim.o.ruler = true
vim.o.hlsearch = true
vim.o.list = true
vim.opt.listchars = {
    trail = "·",
    nbsp = "+",
    tab = "<->",
    leadmultispace = "···|",
}
vim.o.termguicolors = true

-- norcalli/nvim-colorizer.lua
-- Enable on all file types
require("colorizer").setup()

-- marko-cerovac/material.nvim
require("material").setup({
    disable = {
        background = true,
    },
    lualine_style = "stealth",
})
vim.cmd("colorscheme material")

-- hoob3rt/lualine.nvim
require("lualine").setup({
    options = { theme = "material" },
})

-- akinsho/bufferline.nvim
require("bufferline").setup({})

-- myusuf3/numbers.vim
vim.g.numbers_exclude = { "fern" }
