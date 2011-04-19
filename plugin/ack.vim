function! Ack(args)
    let grepprg_bak=&grepprg
    set grepprg=ack-grep\ -H\ --nocolor\ --nogroup\ --type-add\ ruby=.erb
    execute "silent! grep " . a:args
    botright copen
    let &grepprg=grepprg_bak
endfunction

command! -nargs=* -complete=file Ack call Ack(<q-args>)
