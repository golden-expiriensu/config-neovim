BIG_SCREEN_SIZE = 150
MID_SCREEN_SIZE = 120

local function lualine_x()
    if vim.o.columns > BIG_SCREEN_SIZE then
        return { 'encoding', 'fileformat', 'filetype' }
    elseif vim.o.columns > MID_SCREEN_SIZE then
        return { 'fileformat', 'filetype' }
    else
        return { 'filetype' }
    end
end

require('lualine').setup({
    options = {
        theme = 'gruvbox-baby'
    },
    sections = {
        lualine_b = {
            {
                'branch',
                icon = '󰮠',
                fmt = function(name)
                    if vim.o.columns > BIG_SCREEN_SIZE then
                        return name
                    elseif vim.o.columns > MID_SCREEN_SIZE then
                        return name:sub(0, vim.o.columns / 2) .. "…"
                    else
                        return name:sub(0, vim.o.columns / 3) .. "…"
                    end
                end
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
        },
        lualine_x = lualine_x(),
    }
})
