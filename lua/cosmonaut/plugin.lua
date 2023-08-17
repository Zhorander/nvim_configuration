local _2afile_2a = "nvim/fnl/cosmonaut/plugin.fnl"
local _2amodule_name_2a = "cosmonaut.plugin"
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
local autoload = (require("aniseed.autoload")).autoload
local nvim = autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["nvim"] = nvim
nvim.g["conjure#filetype#scheme"] = "conjure.client.guile.socket"
nvim.g["conjure#client#fennel#aniseed#aniseed_module_prefix"] = "aniseed."
nvim.set_keymap("n", "<leader>tn", "<cmd>NERDTreeToggle<CR>", {noremap = true, silent = true})
local toggleterm = require("toggleterm")
local Terminal = (require("toggleterm.terminal")).Terminal
local layout = {direction = "float", float_opts = {border = "curved"}}
layout.on_open = function(term)
  vim.cmd("startinsert!")
  return nvim.buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
end
layout.on_close = function(term)
  return vim.cmd("startinsert!")
end
local myterm = Terminal:new(layout)
local function _1_()
  return myterm:toggle()
end
_myterm_toggle = _1_
nvim.set_keymap("n", "<leader>tg", "<cmd>lua _myterm_toggle()<CR>", {noremap = true, silent = true})
local setup = {}
setup.size = function(term)
  if (term.direction == "horizontal") then
    return 15
  elseif (term.direction == "vertical") then
    return (nvim.o.columns * 0.4)
  else
    return nil
  end
end
toggleterm.setup(setup)
return _2amodule_2a