" Edit vimr configuration file
nnoremap <Leader>ve :tabnew $HOME/.vim_runtime/my_configs.vim<CR>

" Commenting for apache servers
au BufNewFile,BufRead *.conf.tmpl let &l:commentstring='#%s'

autocmd QuickFixCmdPost Ggrep* cwindow
au BufRead,BufNewFile *.md setlocal textwidth=80
au FocusGained * :e!

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
    let g:pymode_lint_ignore = ["E501", "W",]
endtry

" Black settings
try
    let g:black_linelength = 80
endtry

try
    let g:bufExplorerShowRelativePath=0
endtry
