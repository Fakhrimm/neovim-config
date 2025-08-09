return {
  'smoka7/hop.nvim',
  version = "*",
  -- opts = {
  --   keys = 'etovxqpdygfblzhckisuran'
  -- }
  config = function()
    require'hop'.setup()
    vim.api.nvim_set_keymap("n", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap=true}) 
    vim.api.nvim_set_keymap("n", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap=true})
  end
}
