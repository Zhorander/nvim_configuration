-- Welcome to your magic kit!
-- This is the first file Neovim will load.
-- We'll ensure we have a plugin manager and Aniseed.
-- This will allow us to load more Fennel based code and download more plugins.

-- Make some modules easier to access.
local execute = vim.api.nvim_command
local fn = vim.fn
local fmt = string.format

vim.loader.enable()

vim.o.exrc = true
-- italics
vim.o.t_ZH = "\\e[3m"
vim.o.t_ZR = "\\e[23m"

local plug = fn["plug#"]

vim.call("plug#begin")
plug "Olical/aniseed"
vim.call("plug#end")

if not(pcall(require, "aniseed.compile")) then
  vim.api.nvim_command("PlugInstall")
end

vim.g["aniseed#env"] = {module = "cosmonaut.init"}
require "cosmonaut"
