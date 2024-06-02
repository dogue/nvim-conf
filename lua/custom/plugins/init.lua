-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'windwp/nvim-autopairs', event = 'InsertEnter', config = true },

  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    config = function()
      local bufferline = require 'bufferline'
      bufferline.setup {
        options = {
          mode = 'buffers',
          always_show_bufferline = false,
          show_buffer_close_icons = false,
          -- enforce_regular_tabs = true,
        },
      }
    end,
  },

  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },

  {
    'dogue/jm',
    dir = '/home/dogue/Projects/Lua/jm',
    opts = {
      root = '/home/dogue/Documents/Notes',
    },
  },
}
