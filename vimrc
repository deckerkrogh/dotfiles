"TODO:
"make a writing mode that uses pencil, goyo, a spellchecker, etc (done: vimwrite)
"
"Spell checking:
"set spell spelllang=en_us
"
" NOTE: installed jiangmiao/auto-pairs manually
" IDEA: map SHIFT+ENTER to ALT+E in insert mode (auto-pairs, go to end of brackets)
" 	    or I could just go to end of line.

call plug#begin()

"Distraction-free mode:
"Plug 'junegunn/goyo.vim'

"changes new line buffer for writing
"Plug 'reedes/vim-pencil'

Plug 'jiangmiao/auto-pairs'

" C O C
" Not working, gives errors :|
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'pangloss/vim-javascript'

" ALE Plug and configuration
Plug 'dense-analysis/ale'
let g:ale_completion_enabled = 1

call plug#end()

"let g:AutoPairsFlyMode = 1

set tabstop=4
set shiftwidth=4
set relativenumber

"MAPPING

"ctrl+backspace a word
" NOTE: had to change terminal config to get working, not sure this
" mapping is actually necessary.
noremap! <C-BS> <C-W>
noremap! <C-h> <C-w>

" copy with ctrl+c (note: can paste with ctrl+shift+v with zsh)
vnoremap <C-c> "+y

" tab changing
nnoremap H gT
nnoremap L gt
