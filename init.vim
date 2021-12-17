
" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" coc 安装命令
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" 插件配置
lua require 'nvim-treesitter.install'.compilers = { "gcc-8" }
lua require('plugin-config/treesitter')
set guifont=DroidSansMono_Nerd_Font:h11
map <C-n> :NERDTreeToggle<CR>
noremap <leader>f :Telescope find_files<CR>
"normal mapping
"退出键映射
 noremap <leader>q <esc>:q<CR>
 
"NerdTree Switch between different windows by their direction`
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"coc config extensions intalled
let g:coc_global_extensions = [
      \'coc-markdownlint',
      \'coc-vetur',
      \'coc-html',
      \'coc-python',
      \'coc-prettier',
      \'coc-tabnine', 
      \'coc-css', 
      \'coc-json', 
      \'coc-git',
      \'coc-tsserver'
      \]
" GoTo code navigation.
nmap <silent>gd <Plug>(coc-definition)

