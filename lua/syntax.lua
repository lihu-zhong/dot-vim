---@diagnostic disable: undefined-global
-- nvim-treesitter/nvim-treesitter
require("nvim-treesitter").install({
    "bash",
    "lua",
    "markdown",
    "python",
    "rust",
    "yaml",
})

-- neovim/nvim-lspconfig
-- All of these require a respective binary to be present in the PATH. Setting
-- that up is a manual process, there's docs for each respective project.
-- Install with node or dnf (nodejs-bash-language-server)
vim.lsp.enable("bashls")
-- Download a tarball from github
vim.lsp.enable("lua_ls")
-- `rustup component add rust-analyzer`
vim.lsp.enable("rust_analyzer")
-- Use poetry environment
vim.lsp.enable("pyright")
vim.lsp.enable("ruff")
vim.lsp.enable("tflint")

-- w0rp/ale
vim.g.ale_use_neovim_diagnostics_api = 1
vim.g.ale_linters_explicit = 1
vim.g.ale_linters = {
    gitcommit = { "gitlint" }, -- `pip install gitlint`
    markdown = { "mdl" }, -- `gem install mdl`
    sh = { "shellcheck" }, -- `mise use shellcheck`
    yaml = { "yamllint" }, -- `pip install yamllint`
    dockerfile = { "hadolint" }, -- `mise use hadolint`
}
vim.g.ale_fixers = {
    rust = { "rustfmt" },
    python = { "ruff", "ruff_format" },
    sh = { "shfmt" }, -- `mise use shfmt`
    terraform = { "terraform" },
    lua = { "stylua" },
    markdown = { "prettier" },
}
vim.g.ale_sh_shfmt_options = "-i 4 -sr"
vim.g.ale_lua_stylua_options = "--indent-type Spaces --column-width 80"
vim.g.ale_javascript_prettier_options = "--prose-wrap always"

vim.api.nvim_set_keymap(
    "n",
    "<Leader><space>",
    ":ALEFix<Enter>:w<Enter>",
    { noremap = true, silent = true }
)
