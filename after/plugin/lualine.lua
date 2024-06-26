require('lualine').setup({
    options = {
        theme = 'gruvbox-baby'
    },
    sections = {
        lualine_b = {
            {
                'branch',
                icon = '󰮠'
            },
            'diff',
            {
                'diagnostics',
                symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' }
            }
        },
        lualine_c = {
            {
                'filename',
                path = 1
            }
        }
    }
})
