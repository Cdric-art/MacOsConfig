return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        config = function()
            require("catppuccin").setup {
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                transparent_background = false, -- disables setting the background color.
            }
        end,
    },
}
