set nocompatible            " disable compatibility to old-time vi
set nobackup
set noswapfile " disable creating swap file
set undodir=~/.config/.nvim/undodir
set undofile
set scrolloff=4
set showmatch               " show matching                 " middle-click paste with
set nohlsearch              " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set smartindent             " indent a new line the same amount as the line just typed
set number                  " add line numbers
set colorcolumn=80 " set an 80 column border for good coding style
set cmdheight=2
set updatetime=50
set shortmess+=c
set hidden
set signcolumn=yes
set vb t_vb=
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set guicursor=            " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set splitbelow splitright
set wrap
"set spell                 " enable spell check (may need to download language package)
"set backupdir=~/.cache/nvim Directory to store backup files.

syntax on                   " syntax highlighting

filetype off

call plug#begin('~/.config/.nvim/plugged')
" A fuzzy file finder
  Plug 'kien/ctrlp.vim'
" Comment/Uncomment tool
  Plug 'scrooloose/nerdcommenter'
" Switch to the begining and the end of a block by pressing %
  Plug 'tmhedberg/matchit'
" A Tree-like side bar for better navigation
  Plug 'scrooloose/nerdtree'
" A cool status bar
  Plug 'vim-airline/vim-airline'
" Airline themes
  Plug 'vim-airline/vim-airline-themes'
" Nord
    Plug 'arcticicestudio/nord-vim'
" Better syntax-highlighting for filetypes in vim
  Plug 'sheerun/vim-polyglot'
" Intellisense engine
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git integration
  Plug 'tpope/vim-fugitive'
" Auto-close braces and scopes
  Plug 'jiangmiao/auto-pairs'
" Track the engine.
"  Plug 'SirVer/ultisnips'
"
"  MiniStarter
  Plug 'echasnovski/mini.nvim'
  "Artificial Intelligence TabNine
" Plug 'zxqfl/tabnine-vim'
 Plug 'dapplebeforedawn/vim-typing-practice'
 Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
 Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
 Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
 Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
 Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
"  Plugin Section
call plug#end()

filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting

" Theming 
highlight Normal guibg=none
set cul " highlight the cursorline
"colorscheme nord
colorscheme gruvbox " selected colorscheme
set background=dark " Specifying a Darkbackground


" Setting default Python Origin
let g:python_hostprog = '/usr/bin/python'
let g:python3_hostprog = '/bin/python3'


let mapleader=' ' " Setting Leader button
map <C-t> :NERDTreeToggle<CR> "Nerd
let NERDTreeShowHidden=1 " Show hidden files in NerdTree buffer.

set fileformats=unix,dos,mac
" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "yes"
let g:session_autosave = "yes"
let g:session_command_aliases = 1


" Fugitive --------------------------------------------------------------------

  nnoremap <silent> <leader>gs :Git<CR>
  nnoremap <silent> <leader>gd :Gdiffsplit<CR>
  nnoremap <silent> <leader>gc :Git commit<CR>
  nnoremap <silent> <leader>gl :Glog<CR>
  nnoremap <silent> <leader>gsh :Git push<CR>

" Split windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Split windows direction
map <Leader>vs :vsplit<CR>
map <Leader>sp :split<CR>

"I am the Best!
set hidden

"When invoked, unless a starting directory is specified, CtrlP will set its local working directory according to this variable:
let g:ctrlp_working_path_mode = ''

"autocmd BufEnter * call SyncTree()
set statusline^=%{coc#status()}

" NerdTreeUI ------------------------------------------------------------------
set t_Co=256
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

" Command of Completion ----------------------------------------------------------------------------
" May need for vim (not neovim) since coc.nvim calculate byte offset by count
" utf-8 byte sequence.
set encoding=utf-8
" Some servers have issues with backup files
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for refactor code actions.
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>" setting Command of Completion types

let g:coc_global_extensions = ['coc-snippets', 'coc-pairs', 'coc-eslint', 'coc-prettier', 'coc-json', 'coc-htmldjango', 'coc-svelte', 'coc-tabnine', '@yaegassy/coc-tailwindcss3']
"----------------------------------------------------------------------------------------------------

" Vim-Airline Configuration---------------------------------------------------


let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
let g:airline#extensions#ale#enabled = 1

" air-line
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'


" unicode symbols
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇' "⤴', ➔, ➥,
 let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
 let g:airline_symbols.whitespace = 'Ξ'
