function Py2()
    let g:syntastic_python_python_exec = 'python2'
endfunction

function Py3()
    let g:syntastic_python_python_exec = 'python3'
endfunction

execute pathogen#infect()
    call pathogen#helptags()
    filetype plugin indent on
    syntax on "Para utilizar com o tema solarized
    set wildmode=longest,list,full
    set wildmenu
    set lazyredraw "Melhoria de desempenho
    set history=10000
    set showcmd
    set hidden "Melhora o uso de buffers
    set ttyfast "Melhoria de tty
    set title "Editar o título do terminal
    set encoding=utf-8
    "set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
    "set list "Mostra quebra de linha
    "set showmatch "mostra caracteres ( { [ quando fechados
    set textwidth=80 "largura do texto
    set nowrap  "sem wrap (quebra de linha)
    "set mouse+=a "habilita todas as acoes do mouse
    set nu "numeracao de linhas
    set ts=4 "Seta onde o tab para
    set sw=4 "largura do tab
    set et "espacos em vez de tab
    set ignorecase "Busca case insensitive
    set smartcase "Forçar case insensitive mesmo quando maiúscula for usada
    set incsearch "Buscar enqanto se digita
    setlocal spell spelllang=en_us
    autocmd FileType latex,tex,md,txt,md,markdown setlocal spell spelllang=en_us
    "set nospell
    set background=light
    "set background=dark
    let g:ycm_min_num_of_chars_for_completion = 1
    set clipboard=unnamedplus "Permite copiar direto para o clipboard
    set laststatus=2
    set t_Co=256
    let g:airline_powerline_fonts=1
    set relativenumber
    colorscheme desert
    set cursorline
    set cursorcolumn
    hi CursorColumn ctermfg=White ctermbg=Blue cterm=bold guifg=white guibg=Grey10 gui=bold " Exemplo
    hi CursorLine term=bold cterm=bold guibg=Grey10
    hi CursorColumn guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=NONE cterm=BOLD
    set wildmenu
    " highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    " match OverLength /\%81v.*/
    highlight ColorColumn ctermbg=magenta "set to whatever you like
    call matchadd('ColorColumn', '\%81v', 100) "set column nr
    let &colorcolumn=join(range(81,999),",")
    let &colorcolumn="81,".join(range(400,999),",")
    if &diff
        syntax off
    endif
  
    "Syntastic configs
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_loc_list_height = 5
    let g:syntastic_auto_loc_list = 0
    let g:syntastic_check_on_open = 0
    let g:syntastic_check_on_wq = 1
    let g:syntastic_javascript_checkers = ['eslint']
    let g:syntastic_error_symbol = '❌'
    let g:syntastic_style_error_symbol = '⁉️'
    let g:syntastic_warning_symbol = '⚠️'
    let g:syntastic_python_checkers = ['python']
    call Py3()
    highlight link SyntasticErrorSign SignColumn
    highlight link SyntasticWarningSign SignColumn
    highlight link SyntasticStyleErrorSign SignColumn
    highlight link SyntasticStyleWarningSign SignColumn
