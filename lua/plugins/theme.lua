return {
    {
        "tjdevries/colorbuddy.vim",
        branch = 'development',
    },
    {
        "nobbmaestro/nvim-andromeda",
        lazy = true,
        name = "andromeda",
        branch = 'development',
        priority = 1000,
        config = function()
            require("andromeda").setup({
                --transparent_bg = true,
                colors = {
                    background = "#141724"
                },
            })
            vim.cmd.colorscheme "andromeda"
        end
    },
}
