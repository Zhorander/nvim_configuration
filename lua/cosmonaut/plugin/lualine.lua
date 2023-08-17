local _2afile_2a = "/home/elias/.config/nvim/fnl/cosmonaut/plugin/lualine.fnl"
local _2amodule_name_2a = "cosmonaut.plugin.lualine"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
do
  local ok_3f, lualine = pcall(require, "lualine")
  if ok_3f then
    lualine.setup()
  else
  end
end
return _2amodule_2a