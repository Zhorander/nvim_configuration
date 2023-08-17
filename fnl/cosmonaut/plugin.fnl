(module cosmonaut.plugin
  {autoload {nvim aniseed.nvim}})

;;; Plugin Configuration
;;

;; Conjure
;;
(set nvim.g.conjure#filetype#scheme :conjure.client.guile.socket)
(set nvim.g.conjure#client#fennel#aniseed#aniseed_module_prefix :aniseed.)

;; NERDTree
;;
(nvim.set_keymap "n" "<leader>tn" "<cmd>NERDTreeToggle<CR>" {:noremap true :silent true})

;; Toggleterm
;;
(local toggleterm (require :toggleterm))

;; Create a custom terminal
(local Terminal (. (require :toggleterm.terminal) :Terminal))

(local layout
  {:direction :float
   :float_opts {:border :curved}})

(fn layout.on_open [term]
  (vim.cmd "startinsert!")
  (nvim.buf_set_keymap term.bufnr :n :q "<cmd>close<CR>" {:noremap true :silent true}))

(fn layout.on_close [term]
  (vim.cmd "startinsert!"))

(local myterm
  (Terminal:new layout))

(global _myterm_toggle
  (fn []
    (myterm:toggle)))

(nvim.set_keymap "n" "<leader>tg" "<cmd>lua _myterm_toggle()<CR>" {:noremap true :silent true})

;; create a custom setup
(local setup {})

(fn setup.size [term]
  (if (= term.direction :horizontal)
    15
  (= term.direction :vertical)
    (* nvim.o.columns 0.4)))

((. toggleterm :setup) setup)
