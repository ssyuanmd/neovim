--local fn = vim.fn
--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--[[
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end
--]]

return require('packer').startup(function()
-- Packer can manage itself
-- -- Install nvim-cmp, and buffer source as a dependency
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'hoob3rt/lualine.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  use 'mfussenegger/nvim-jdtls'

  use 'neovim/nvim-lspconfig'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {'hrsh7th/nvim-cmp', requires = {'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer'}}
  use 'hrsh7th/vim-vsnip'

  use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use {'syuanda/makabaka'}

  vim.cmd[[colorscheme catppuccin]]
end)

