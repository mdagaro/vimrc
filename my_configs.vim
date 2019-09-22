" Edit vimr configuration file
nnoremap <Leader>ve :tabnew $HOME/dotfiles/vim/my_configs.vim<CR>

" Commenting for apache servers
au BufNewFile,BufRead *.conf.tmpl let &l:commentstring='#%s'

autocmd QuickFixCmdPost Ggrep* cwindow
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.man setlocal textwidth=80
au BufRead,BufNewFile *.tex :setfiletype tex
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w

" NERDTree settings
try
    let NERDTreeQuitOnOpen=1
    let NERDTreeMinimalUI=1
    let NERDTreeDirArrows=1
    let NERDTreeAutoDeleteBuffer=1
    autocmd StdinReadPre * let s:std_in=1
endtry

try
    let g:bufExplorerDefaultHelp=1
endtry

try
    " Colorscheme
    set background=dark
    colorscheme peaksea
catch
    colorscheme desert
endtry

try
    let g:pymode_options_colorcolumn = 0
    let g:pymode_options_max_line_length = 80
    let g:pymode_lint_checkers = ['pep8']
    let g:pymode_lint_ignore = ["E501", "E722", "W",]
endtry

" Black settings
try
    let g:black_linelength = 80
endtry

" bufexplorer settings
try
    let g:bufExplorerShowRelativePath=0
endtry

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

