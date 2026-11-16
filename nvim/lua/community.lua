-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  -- { import = "astrocommunity.colorscheme.neosolarized-nvim" },
  { import = "astrocommunity.completion.blink-copilot" },
  { import = "astrocommunity.ai.copilotchat-nvim" },
  { import = "astrocommunity.ai.codex-nvim" },
  { import = "astrocommunity.scrolling.satellite-nvim" },
  -- { import = "astrocommunity.scrolling.nvim-scrollbar" },
  -- import/override with your plugins folder
}
