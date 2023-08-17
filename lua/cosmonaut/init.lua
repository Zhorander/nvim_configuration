local _2afile_2a = "/home/elias/.config/nvim/fnl/cosmonaut/init.fnl"
local _2amodule_name_2a = "cosmonaut.init"
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
nvim.o.termguicolors = true
nvim.o.sessionoptions = "blank,curdir,folds,help,tabpages,winsize"
nvim.o.background = "dark"
nvim.o.clipboard = "unnamedplus"
nvim.o.completeopt = "noinsert,menuone,noselect"
nvim.o.cursorline = true
nvim.o.hidden = true
nvim.o.inccommand = "split"
nvim.o.mouse = "a"
nvim.o.number = true
nvim.o.relativenumber = true
nvim.o.splitbelow = true
nvim.o.splitright = true
nvim.o.title = true
nvim.o.ttimeoutlen = 0
nvim.o.wildmenu = true
nvim.o.t_Co = 256
local plug = nvim.fn["plug#"]
vim.call("plug#begin")
plug("Olical/conjure")
plug("Olical/aniseed")
plug("tpope/vim-commentary")
plug("tpope/vim-dispatch")
plug("tpope/vim-fugitive")
plug("vim-airline/vim-airline")
plug("vim-airline/vim-airline-themes")
plug("ryanoasis/vim-devicons")
plug("EdenEast/nightfox.nvim")
plug("sainnhe/everforest")
plug("marko-cerovac/material.nvim")
plug("lifepillar/vim-gruvbox8")
plug("stevearc/dressing.nvim")
plug("sheerun/vim-polyglot")
plug("jiangmiao/auto-pairs")
plug("ap/vim-css-color")
plug("preservim/nerdtree")
plug("vimwiki/vimwiki")
plug("akinsho/toggleterm.nvim", {tag = "v2.7.1"})
plug("HiPhish/guile.vim")
plug("plasticboy/vim-markdown")
plug("neoclide/coc.nvim", {branch = "release"})
plug("airblade/vim-gitgutter")
vim.call("plug#end")
nvim.ex.filetype("plugin", "indent", "on")
nvim.ex.syntax("on")
nvim.ex.colorscheme("gruvbox8")
nvim.g.airline_theme = "bubblegum"
nvim.g.airline_powerline_fonts = 1
nvim.g["airline#extensions#tabline#enabled"] = 1
NERDTreeShowHidden = 1
nvim.g.tex_conceal = ""
nvim.g.vim_markdown_math = 1
nvim.g.vim_markdown_folding_disabled = 1
nvim.g.vim_markdown_frontmatter = 1
nvim.g.vim_markdown_conceal = 0
nvim.g.vimwiki_list = {{path = "~/Documents/VimWiki", syntax = "markdown", ext = ".md"}}
require("cosmonaut.plugin")
return _2amodule_2a