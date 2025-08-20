
# Valk.vim

## Install

Install using [Plug](https://github.com/junegunn/vim-plug)

```
Plug 'valk-lang/valk-vim'
```

## LSP setup

Install [vim-lsp](https://github.com/prabirshrestha/vim-lsp) using `Plug`

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
