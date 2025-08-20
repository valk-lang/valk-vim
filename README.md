
# Valk.vim

## LSP setup

Install `vim-lsp` using `Plug`

```
Plug 'prabirshrestha/vim-lsp'
```

Then add this to your `.vimrc`

```
if executable('valk')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'valk-lsp',
        \ 'cmd': {server_info->['valk', 'lsp', 'run']},
        \ 'whitelist': ['valk'],
        \ })
endif
```

## Assosiate .valk

```
au BufNewFile,BufRead *.valk setlocal ft=valk
```