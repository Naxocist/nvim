local Plugin = { 'nvim-treesitter/nvim-treesitter' }

Plugin.main = 'nvim-treesitter.configs'

Plugin.build = ':TSUpdate'

Plugin.dependencies = {
	'nvim-treesitter/nvim-treesitter-textobjects',
	'nvim-treesitter/playground'
}

-- See :help nvim-treesitter-modules
Plugin.opts = {
  auto_install = true,

  highlight = { enable = true },

  -- :help nvim-treesitter-textobjects-modules
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
  },

  ensure_installed = {
    'vim',
    'vimdoc',
		'lua',
		'python',
		'cpp',
		'c'
  },
}

return Plugin

