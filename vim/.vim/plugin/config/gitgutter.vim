"disable git gutter by default
let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1

nmap <F2> :GitGutterToggle<cr>
"nmap <Leader>hs <Plug>GitGutterStageHunk
nnoremap <Leader>gu :GitGutterUndoHunk<CR>
nnoremap <Leader>gn :GitGutterNextHunk<CR>
nnoremap <Leader>gp :GitGutterPrevHunk<CR>
nnoremap <Leader>gg :Ggrep
nnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <leader>ga :Gwrite<cr>
nnoremap <leader>gl :Git log<cr>
