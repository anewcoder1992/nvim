
" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" coc 安装命令
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" 插件配置
lua require('plugin-config/treesitter')
set guifont=DroidSansMono_Nerd_Font:h11
map <C-n> :NERDTreeToggle<CR>
map <leader>f :Telescope find_files<CR>
"NerdTree Switch between different windows by their direction`
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>r
noremap <C-h> <C-w>h
