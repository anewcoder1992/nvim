
" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
set noswapfile
" coc 安装命令
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" 插件配置
lua require 'nvim-treesitter.install'.compilers = { "gcc","gcc-8" }
lua require('plugin-config/treesitter')
set guifont=DroidSansMono_Nerd_Font:h11
noremap ]f :Telescope find_files<CR>
noremap ]g :Telescope live_grep<CR>
"normal mapping
"退出键映射
 noremap Q <Esc>:q<CR>
noremap < <Esc>:BufferPrevious<CR>
noremap > <Esc>:BufferNext<CR>
nnoremap C <Esc>:BufferClose<CR>
noremap S <Esc>:w <CR>
 
 
"NerdTree Switch between different windows by their direction`
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap E :NvimTreeToggle<CR>
"系统复制粘贴
vnoremap <C-y> "+y
nnoremap <C-p> "*P
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
      \'coc-tsserver',
      \'coc-floaterm',
      \]
" GoTo code navigation.
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>rn <Plug>(coc-rename)


" 皮肤设置
syntax on
colorscheme kanagawa 
" " Or whatever colorscheme you make
"colorscheme duskfox
"colorscheme onedark

" 终端快捷键
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
" highlight
set hlsearch
nnoremap <Space> :nohlsearch<CR><CR>
