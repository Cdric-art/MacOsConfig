-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.lua" },
    { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.pack.tailwindcss" },
    { import = "astrocommunity.pack.laravel" },
    { import = "astrocommunity.pack.blade" },
    { import = "astrocommunity.pack.swift" },
    { import = "astrocommunity.recipes.disable-tabline" },
    { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
    { import = "astrocommunity.color.nvim-highlight-colors" },
    { import = "astrocommunity.icon.mini-icons" },
    { import = "astrocommunity.scrolling.mini-animate" },
}
