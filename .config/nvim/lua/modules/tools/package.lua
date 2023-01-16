local package = require('core.pack').package
local conf = require('modules.tools.config')

package({
    'kristijanhusak/vim-dadbod-ui',
    cmd = { 'DBUIToggle', 'DBUIAddConnection', 'DBUI' },
    config = conf.vim_dadbod_ui,
    dependencies = { 'tpope/vim-dadbod' },
})

package({
    'glepnir/coman.nvim',
    event = 'BufRead',
})

package({
    'glepnir/template.nvim',
    ft = { 'c', 'lua', 'go' },
    config = conf.template_nvim,
})

package({
    'norcalli/nvim-colorizer.lua',
    ft = { 'lua', 'css', 'html', 'sass', 'less', 'typescriptreact' },
    config = function()
        require('colorizer').setup()
    end,
})
