" Edit vimr configuration file
nnoremap <Leader>ve :tabnew $HOME/.vim_runtime/my_configs.vim<CR>

" Define some conda things
if executable("conda")
    function! CondaActivate(env)
        let cmdline=printf("!conda activate %s", a:env)
        exe cmdline
    endfunction
    command! -nargs=1 CondaActivate call CondaActivate(<f-args>)
    
    function! CondaDeactivate(env)
        let cmdline=printf("!conda deactivate %s", a:env)
        exe cmdline
    endfunction
    command! -nargs=1 CondaDeactivate call CondaDeactivate(<f-args>)
endif

command! -nargs=* Python :!python % <args>

" Commenting for apache servers
au BufNewFile,BufRead *.conf.tmpl let &l:commentstring='#%s'

autocmd QuickFixCmdPost Ggrep* cwindow

" NERDTree settings
try
    let NERDTreeQuitOnOpen=1
    let NERDTreeMinimalUI=1
    let NERDTreeDirArrows=1
    let NERDTreeAutoDeleteBuffer=1
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
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
    autocmd BufWrite *.py :py3 Black()
endtry

