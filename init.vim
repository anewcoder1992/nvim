
" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')

" coc 安装命令
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" 插件配置
lua require 'nvim-treesitter.install'.compilers = { "gcc","gcc-8" }
lua require('plugin-config/treesitter')
set guifont=DroidSansMono_Nerd_Font:h11
noremap <A-f> :Telescope find_files<CR>
"normal mapping
"退出键映射
 noremap <S-q> <Esc>:q<CR>
noremap <S-h> <Esc>:BufferPrevious<CR>
noremap <S-l> <Esc>:BufferNext<CR>
nnoremap<S-c> <Esc>:BufferClose<CR>
noremap <S-s> <Esc>:w <CR>
inoremap <S-s> <Esc>:w<CR>
 
 
"NerdTree Switch between different windows by their direction`
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-e> :NvimTreeToggle<CR>

vnoremap <C-y> "+y
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
" colorscheme nvcode " Or whatever colorscheme you make
colorscheme duskfox
" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" 终端快捷键
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
