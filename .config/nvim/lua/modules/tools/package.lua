local package = require('core.pack').package
local conf = require('modules.tools.config')

package({ 'glepnir/coman.nvim', dev = true, event = 'BufRead' })

package({
  'glepnir/template.nvim',
  ft = { 'c', 'cpp', 'rust', 'lua', 'go' },
  config = conf.template_nvim,
})

package({
  'norcalli/nvim-colorizer.lua',
  ft = { 'lua', 'css', 'html', 'sass', 'less', 'typescriptreact' },
  config = function()
    require('colorizer').setup()
  end,
})

package({
  'glepnir/mutchar.nvim',
  ft = { 'c', 'cpp', 'go', 'rust', 'lua' },
  config = conf.mut_char,
})

package({
  'glepnir/hlsearch.nvim',
  event = 'BufRead',
  config = true,
})

package({
  'glepnir/dbsession.nvim',
  cmd = { 'SessionSave', 'SessionLoad', 'SessionDelete' },
  opts = true,
})

package({ 'phaazon/hop.nvim', event = 'BufRead', config = conf.hop })
