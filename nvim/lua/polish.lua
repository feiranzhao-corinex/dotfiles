-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
vim.opt.list = true
vim.opt.listchars = { space = "·", tab = "» " }
vim.opt.tabstop = 8
vim.opt.expandtab = false
vim.g.snack_indent = false

-- Theme selector
local theme

if vim.fn.has "macunix" == 1 or vim.fn.has "mac" == 1 then
  local style = vim.fn.system { "defaults", "read", "-g", "AppleInterfaceStyle" }
  theme = vim.v.shell_error == 0 and style:match "Dark" and "dark" or "light"
elseif vim.fn.has "win32" == 1 then
  local style = vim.fn.system {
    "reg",
    "query",
    [[HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize]],
    "/v",
    "AppsUseLightTheme",
  }

  if vim.v.shell_error == 0 then
    if style:match "0x1" then
      theme = "light"
    elseif style:match "0x0" then
      theme = "dark"
    end
  end
elseif vim.fn.executable "gsettings" == 1 then
  local style = vim.fn.system {
    "gsettings",
    "get",
    "org.gnome.desktop.interface",
    "color-scheme",
  }

  if vim.v.shell_error == 0 then
    if style:match "prefer%-light" then
      theme = "light"
    elseif style:match "prefer%-dark" then
      theme = "dark"
    else
      local gtk_theme = vim.fn.system {
        "gsettings",
        "get",
        "org.gnome.desktop.interface",
        "gtk-theme",
      }
      if vim.v.shell_error == 0 then theme = gtk_theme:lower():match "dark" and "dark" or "light" end
    end
  end
end

if theme then
  vim.opt.background = theme
  vim.cmd.colorscheme(theme == "light" and "kanagawa-lotus" or "kanagawa-wave")
end

vim.opt.clipboard = "unnamedplus"
