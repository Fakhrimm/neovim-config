require("vim-options")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")
-- require("neotex.core")
-- require("neotex.bootstrap")

-- vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal right<CR>', {})
-- vim.keymap.set('n', '<leader>n', ':Neotree toggle', {})
vim.keymap.set('n', '<leader>n', ':Neotree toggle right<CR>', { noremap = true, silent = true })
vim.api.nvim_set_option("clipboard", "unnamed")
