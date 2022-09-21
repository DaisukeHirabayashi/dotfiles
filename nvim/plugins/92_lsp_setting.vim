function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal tagfunc=lsp#tagfunc
    setlocal signcolumn=yes
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> ge <plug>(lsp-type-definition)
    nmap <buffer> gR <plug>(lsp-rename)
    nmap <buffer> gA <Plug>(lsp-code-action)
    nmap <buffer> gs <Plug>(lsp-document-symbol-search)

    if &filetype !=# 'vim'
        nmap <buffer> K <plug>(lsp-hover)
    endif
endfunction

augroup vimrc
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
