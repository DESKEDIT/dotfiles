-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Enable transparent background
vim.cmd([[
   highlight Normal ctermbg=NONE guibg=NONE
   highlight NonText ctermbg=NONE guibg=NONE
   highlight NormalNC ctermbg=none guibg=none
   highlight VertSplit ctermbg=none guibg=none
   highlight MsgArea ctermbg=none guibg=none
   highlight StatusLine ctermbg=none guibg=none
   highlight StatusLineNC ctermbg=none guibg=none
   highlight FloatBorder ctermbg=none guibg=none
   highlight FloatTitle ctermbg=none guibg=none
   highlight Pmenu ctermbg=none guibg=none
   highlight PmenuSel ctermbg=none guibg=none
]])

-- Mappings
--[[
vim.cmd([[
 map <leader>s <cmd>exe "%s/\\v\<" .. expand("<cword>") .. ">/" .. input("Replace \"" .. expand("<cword>") .. "\" by? ") .. "/g"<cr>
]]
--)
