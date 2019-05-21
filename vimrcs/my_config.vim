" Edit vimr configuration file
nnoremap <Leader>ve :e $HOME/.vimrc<CR>

" Define some conda things
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

command! -nargs=* Python :!python % <args>