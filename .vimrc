  1 call plug#begin()
  2 
  3 " Dracula 主题配色方案（暗色系，非常清晰护眼）
  4 Plug 'dracula/vim', { 'as': 'dracula' }
  5 
  6 " 提供一套 Vim 的合理默认设置（适合新手）
  7 Plug 'tpope/vim-sensible'
  8 
  9 " Python 开发插件集，支持 lint、autocomplete、virtualenv 等（仅在 Python 文件中加载）
 10 Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
 11 
 12 " 文件树浏览器，类似 VSCode 左侧文件栏
 13 Plug 'preservim/nerdtree'
 14 
 15 " Rust 语言支持（语法高亮、文件类型识别等）
 16 Plug 'rust-lang/rust.vim'
 17 
 18 " 用于快速包围/修改符号（如 `"text"` 改成 `[text]`）
 19 Plug 'tpope/vim-surround'
 20 
 21 " 增强文本对象的识别能力（如更精准的 `vi)`、`cit` 等操作）
 22 Plug 'wellle/targets.vim'
 23 
 24 " 强大的自动补全框架，支持 LSP、snippets 等
 25 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 26 
 27 " 自动补全括号、引号等符号
 28 Plug 'jiangmiao/auto-pairs'
 29 
 30 " 快速注释和取消注释代码（支持多种语言）
 31 Plug 'tpope/vim-commentary'
 32 
 33 call plug#end()
 34 
 35 " 设置配色方案
 36 colorscheme dracula
 37 
 38 " 补全菜单可见时按 <CR> 确认补全，否则换行（coc.nvim 配套设置）
 39 inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
 40 
 41 " 显示行号
 42 set number
 43 
 44 " 插入模式下输入 jj 替代 <Esc>，快速返回普通模式
 45 inoremap jj <Esc>
 46 
