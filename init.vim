
" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" 插件配置
"lua require('plugin-config/treesitter')
set guifont=DroidSansMono_Nerd_Font:h11
map <F3> :NERDTreeToggle<CR>
map <leader>f :Telescope find_files<CR>
