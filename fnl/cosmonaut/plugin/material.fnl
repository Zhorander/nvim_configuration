(module cosmonaut.plugin.material
  {autoload {nvim nfnl.nvim}})

(let [(ok? material) (pcall #(require :material))]
  (when ok?
    (material.setup
      {:custom_highlights {:FloatBorder {:fg "#1A1A1A"}}
       :borders true
       :high_visibility {:darker true}})

    (set nvim.g.material_style :darker)
    (nvim.ex.colorscheme :material)))
