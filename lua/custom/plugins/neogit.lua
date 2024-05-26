return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',  -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua',              -- optional
  },
  config = function()
    local neogit = require('neogit')
    neogit.setup {
      integrations = {
        telescope = true,
        diffview = true,
        fzf_lua = true
      }
    }
    vim.api.nvim_set_keymap('n', '<leader>ng', '<cmd>Neogit<CR>', { noremap = true, silent = true })
  end,
}
