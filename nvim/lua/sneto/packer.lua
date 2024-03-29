-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself 
    -- Packer:
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
          'nvim-tree/nvim-web-devicons', -- optional
        },
  }

  use'ThePrimeagen/vim-be-good'

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'tomasiser/vim-code-dark'
    use "savq/melange-nvim"
    use 'Mofiqul/vscode.nvim'
    -- use 'christoomey/vim-system-clipboard'
    use 'tiyn/tccs.nvim'
    -- use "savq/melange-nvim"
    use 'wbthomason/packer.nvim'
    -- use 'sainnhe/everforest'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

      use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
      -- use('nvimtokyonighttreesitter/playground')

  use 'folke/tokyonight.nvim'
  use "terrortylor/nvim-comment"

  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              call(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}

    use({ 'rose-pine/neovim', as = 'rose-pine'})
    use ('ThePrimeagen/harpoon')

    use "fatih/vim-go"

    use ('windwp/nvim-ts-autotag')


    use {"jose-elias-alvarez/null-ls.nvim", 
        ft = "go",
        opts = function()
            return require "custom.config.nulls-ls"
        end,
    }

    use { "catppuccin/nvim", as = "catppuccin" }


-- use {
--     "ellisonleao/gruvbox.nvim", -- theme
--     priority = 1000,
--     config = function()
--         require("gruvbox").setup({
--             contrast = "hard",
--             palette_overrides = {dark0_hard = "#0E1018"},
--             overrides = {
--                 -- Comment = {fg = "#626A73", italic = true, bold = true},
--                 -- #736B62,  #626273, #627273 
--                 Comment = {fg = "#81878f", italic = true, bold = true},
--                 Define = {link = "GruvboxPurple"},
--                 Macro = {link = "GruvboxPurple"},
--                 ["@constant.builtin"] = {link = "GruvboxPurple"},
--                 ["@storageclass.lifetime"] = {link = "GruvboxAqua"},
--                 ["@text.note"] = {link = "TODO"},
--                 ["@namespace.latex"] = {link = "Include"},
--                 ["@namespace.rust"] = {link = "Include"},
--                 ContextVt = {fg = "#878788"},
--                 CopilotSuggestion = {fg = "#878787"},
--                 CocCodeLens = {fg = "#878787"},
--                 CocWarningFloat = {fg = "#dfaf87"},
--                 CocInlayHint = {fg = "#ABB0B6"},
--                 CocPumShortcut = {fg = "#fe8019"},
--                 CocPumDetail = {fg = "#fe8019"},
--                 DiagnosticVirtualTextWarn = {fg = "#dfaf87"},
--                 -- fold
--                 Folded = {fg = "#fe8019", bg = "#3c3836", italic = true},
--                 FoldColumn = {fg = "#fe8019", bg = "#0E1018"},
--                 SignColumn = {bg = "#fe8019"},
--                 -- new git colors
--                 DiffAdd = { bold = true, reverse = false, fg = "", bg = "#2a4333"},
--                 DiffChange = { bold = true, reverse = false, fg = "", bg = "#333841" },
--                 DiffDelete = { bold = true, reverse = false, fg = "#442d30", bg = "#442d30" },
--                 DiffText = { bold = true, reverse = false, fg = "", bg = "#213352" },
--                 -- statusline
--                 StatusLine = {bg = "#ffffff", fg = "#0E1018"},
--                 StatusLineNC = {bg = "#3c3836", fg = "#0E1018"},
--                 CursorLineNr = {fg = "#fabd2f", bg = ""},
--                 GruvboxOrangeSign = {fg = "#dfaf87", bg = ""},
--                 GruvboxAquaSign = {fg = "#8EC07C", bg = ""},
--                 GruvboxGreenSign = {fg = "#b8bb26", bg = ""},
--                 GruvboxRedSign = {fg = "#fb4934", bg = ""},
--                 GruvboxBlueSign = {fg = "#83a598", bg = ""},
--                 WilderMenu = {fg = "#ebdbb2", bg = ""},
--                 WilderAccent = {fg = "#f4468f", bg = ""},
--                 -- coc semantic token
--                 CocSemStruct = {link = "GruvboxYellow"},
--                 CocSemKeyword = {fg = "", bg = "#0E1018"},
--                 CocSemEnumMember = {fg = "", bg = "#0E1018"},
--                 CocSemTypeParameter = {fg = "", bg = "#0E1018"},
--                 CocSemComment = {fg = "", bg = "#0E1018"},
--                 CocSemMacro = {fg = "", bg = "#0E1018"},
--                 CocSemVariable = {fg = "", bg = "#0E1018"},
--                 -- CocSemFunction = {link = "GruvboxGreen"},
--                 -- neorg
--                 ["@neorg.markup.inline_macro"] = {link = "GruvboxGreen"}
--             }
--         })
--     end}
--


end)

