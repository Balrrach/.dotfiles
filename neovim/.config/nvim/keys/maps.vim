" nnoremap(all modes except visual and select) to be able to write in the snippet
" gj in order to navigate wraped lines correctly

"""Movement Remapping
" Down
noremap n gj
sunmap n

" Up
noremap e gk
sunmap e
noremap E K
sunmap E

" Right
noremap i l
sunmap i
noremap I L
sunmap I
noremap l i
sunmap l
noremap L I
sunmap L

" Forward end of word
noremap f e
sunmap f
noremap F E
sunmap F
" noremap e f
" noremap E F

" Back a word
noremap t b
sunmap t
noremap T B
sunmap T
noremap b t
sunmap b
noremap B T
sunmap B

" Search
noremap k n
sunmap k
noremap K N
sunmap K

" Forward end of word
" noremap j e
" noremap J E


" Enables writing in snippets selection
" sunmap N
" sunmap j
" sunmap J


" Set space as leader key
let mapleader=" "

" Scroll Down with C-n and up with C-e
" nnoremap <C-l> <C-e>
" nnoremap <C-u> <C-y>

" Next/previous buffer
nnoremap <silent> E :bnext<CR>
nnoremap <silent> N :bprevious<CR>
" Next/previous window 
map <silent> <C-e> :tabprevious<CR>
" Next/previous tab
nnoremap <silent> H :wincmd h<CR>
nnoremap <silent> I :wincmd l<CR>

" Map ; to :
nnoremap ; :
vnoremap ; :

" Paste copied(not deleted) content

" Exit from terminal
tnoremap <silent> <Esc> <C-\><C-n>

let g:asynctasks_term_pos = 'TAB'
