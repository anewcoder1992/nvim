
" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')

" 皮肤设置
" https://github.com/ellisonleao/gruvbox.nvim
set background=dark 
" or light if you want light mode
colorscheme gruvbox

" coc 安装命令
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" 插件配置
lua require 'nvim-treesitter.install'.compilers = { "gcc","gcc-8" }
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
noremap <C-e> :NvimTreeToggle<CR>
noremap <C-=> :BufferPrevious<CR>
noremap <C--> :BufferNext<CR>
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
nmap <silent>rn <Plug>(coc-rename)

" configure nvcode-color-schemes
let g:nvcode_termcolors=256

syntax on
" colorscheme nvcode " Or whatever colorscheme you make
colorscheme duskfox

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif