(module cosmonaut.init
  {autoload {nvim aniseed.nvim}})
; (local nvim :aniseed.nvim)

;;; Introduction

;; Aniseed compiles this (and all other Fennel files under fnl) into the lua
;; directory. The init.lua file is configured to load this file when ready.

;; We'll use modules, macros and functions to define our configuration and
;; required plugins. We can use Aniseed to evaluate code as we edit it or just
;; restart Neovim.

;; You can learn all about Conjure and how to evaluate things by executing
;; :ConjureSchool in your Neovim. This will launch an interactive tutorial.


;;; Generic configuration

(set nvim.o.termguicolors true)
(set nvim.o.sessionoptions "blank,curdir,folds,help,tabpages,winsize")

;; Remember in fennel that a string can start with ':' if it contains only
;; characters that are valid in symbols
(set nvim.o.background :dark)
(set nvim.o.clipboard :unnamedplus)
(set nvim.o.completeopt "noinsert,menuone,noselect")
(set nvim.o.cursorline true)
(set nvim.o.hidden true)
(set nvim.o.inccommand :split)
(set nvim.o.mouse :a)
(set nvim.o.number true)
(set nvim.o.relativenumber true)
(set nvim.o.splitbelow true)
(set nvim.o.splitright true)
(set nvim.o.title true)
(set nvim.o.ttimeoutlen 0)
(set nvim.o.wildmenu true)
(set nvim.o.t_Co 256)

;;; Plugins
(local plug (. nvim.fn "plug#"))

;; Run script/sync.sh to update, install and clean your plugins.
;; Packer configuration format: https://github.com/wbthomason/packer.nvim
(vim.call "plug#begin")
;; System
;; ------
(plug :Olical/conjure)
(plug :Olical/aniseed)
(plug :tpope/vim-commentary)
(plug :tpope/vim-dispatch)
(plug :tpope/vim-fugitive)
;; Theming
;; -------
(plug :vim-airline/vim-airline)
(plug :vim-airline/vim-airline-themes)
(plug :ryanoasis/vim-devicons)
(plug :EdenEast/nightfox.nvim)
(plug :sainnhe/everforest)
(plug :marko-cerovac/material.nvim)
(plug "lifepillar/vim-gruvbox8")
;; ui improvements
(plug :stevearc/dressing.nvim)
;; Utilities
;; ---------
(plug :sheerun/vim-polyglot)
(plug :jiangmiao/auto-pairs)
(plug :ap/vim-css-color)
(plug :preservim/nerdtree)
(plug :vimwiki/vimwiki)
(plug :akinsho/toggleterm.nvim {:tag "v2.7.1"})
(plug :HiPhish/guile.vim)
;; Completion / Linters / Formatters
;; ---------------------------------
(plug :plasticboy/vim-markdown)
(plug :neoclide/coc.nvim {:branch :release})
(plug :airblade/vim-gitgutter)
(vim.call "plug#end")


;; Commands

;; not sure what these do, but I'm rolling with it
; (nvim.ex.set :spell)
; (nvim.ex.set :list)

(nvim.ex.filetype :plugin :indent :on)
(nvim.ex.syntax :on)
;; Colorscheme
(nvim.ex.colorscheme :gruvbox8)

;; Airline Setup
(set nvim.g.airline_theme :bubblegum)
(set nvim.g.airline_powerline_fonts 1)
(tset nvim.g "airline#extensions#tabline#enabled" 1)

;; File Browser
(set NERDTreeShowHidden 1)

;; Disable math tex conceal feature
(set nvim.g.tex_conceal "")
(set nvim.g.vim_markdown_math 1)

;; Markdown
(set nvim.g.vim_markdown_folding_disabled 1)
(set nvim.g.vim_markdown_frontmatter 1)
(set nvim.g.vim_markdown_conceal 0)

;; Wiki
(set nvim.g.vimwiki_list
     [{:path "~/Documents/VimWiki"
       :syntax :markdown
       :ext ".md"}])

(require :cosmonaut.plugin)
