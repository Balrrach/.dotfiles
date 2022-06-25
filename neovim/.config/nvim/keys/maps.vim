" nnoremap(all modes except visual and select) to be able to write in the snippet
" gj in order to navigate wraped lines correctly

"""Movement Remapping
" Up
noremap n gj
" Down
noremap e gk
" Left
noremap e k
noremap E K
" Right
noremap i l
noremap I L
noremap l i
noremap L I

" For inverse order search
noremap k n
noremap K N
" set langmap=KN

" Forward end of word
noremap j e
noremap J E

" Enables writing in snippets selection
sunmap n
sunmap N
sunmap e
sunmap E
sunmap i
sunmap I
sunmap l
sunmap L
" sunmap k
" sunmap K
sunmap j
sunmap J

onoremap i l
