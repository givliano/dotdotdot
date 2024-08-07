-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('bufferline').setup {
        options = {
          enabled = true,
          delay = 200,
          reveal = { 'close' },
          indicator = {
            style = 'underline'
          }
        }
      }
    end,
  },
}
