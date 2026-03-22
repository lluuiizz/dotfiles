return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      -- Desligamos a transparência que eu tinha sugerido antes
      transparent = false, 
      
      -- AQUI ESTÁ A MÁGICA: Vamos forçar a cor do Habamax no fundo
      on_highlights = function(hl, colors)
        local habamax_bg = "#1c1c1c" -- A cor exata do fundo do Habamax
        
        -- Substitui o fundo principal do editor
        hl.Normal = { bg = habamax_bg }
        -- Substitui o fundo de janelas inativas (splits)
        hl.NormalNC = { bg = habamax_bg }
        -- Substitui o fundo da coluna da esquerda (onde ficam os números)
        hl.SignColumn = { bg = habamax_bg }

        hl.NeoTreeNormal = { bg = habamax_bg }   -- Fundo da árvore
        hl.NeoTreeNormalNC = { bg = habamax_bg } -- Fundo quando não está focado
        hl.NeoTreeWinSeparator = { fg = "#333333", bg = habamax_bg }

        hl.TelescopeNormal = { bg = habamax_bg }
        hl.TelescopeBorder = { bg = habamax_bg }
      end,
    })

    vim.cmd([[colorscheme tokyonight-night]])
  end,
}
