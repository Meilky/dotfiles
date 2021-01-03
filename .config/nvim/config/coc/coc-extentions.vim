" Install coc extensions
if match(&rtp, 'coc.nvim') >= 0
    let s:languages = [
        \ 'coc-css',
        \ 'coc-docker',
        \ 'coc-html',
        \ 'coc-java',
        \ 'coc-json',
        \ 'coc-python',
        \ 'coc-sh',
        \ 'coc-tsserver',
        \ ]

    let s:frameworks = [
        \ 'coc-vimlsp',
        \ ]

    let s:linters = [
        \ 'coc-tslint',
        \ 'coc-eslint',
        \ 'coc-stylelint',
        \ ]

    let s:utils = [
        \ 'coc-snippets',
        \ 'coc-emmet',
        \ 'coc-prettier',
        \ ]

    let s:extensions = s:languages + s:frameworks + s:linters + s:utils

    let g:coc_global_extensions = s:extensions

    if exists('g:did_coc_loaded')
        call coc#add_extension()
    end
endif
