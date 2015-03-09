" use plugins, such as tComment 
" execute pathogen#infect()
syntax on
filetype plugin indent on

" set nerd tree key bindings
nmap \e :NERDTreeToggle<CR>

"Movements
   nnoremap j gj
   nnoremap k gk
   xnoremap j gj
   xnoremap k gk

   nnoremap <down> gj
   nnoremap <up> gk
   xnoremap <down> gj
   xnoremap <up> gk

"Split navigation
    nmap gh <C-w>h
    nmap gj <C-w>j
    nmap gk <C-w>k
    nmap gl <C-w>l


" number lines
set nu

" allow color highlighting
syntax enable

" good color scheme for white background
colorscheme delek
" colorscheme slate

" make sure arrow keys work on mac (http://vim.wikia.com/wiki/Fix_arrow_keys_that_display_A_B_C_D_on_remote_shell)
" this was messing things up so comment out
" set term=cons25
" use this instead: (http://vim.wikia.com/wiki/Fix_broken_arrow_key_navigation_in_insert_mode)
set term=builtin_ansi

"reselect after indenting
    vnoremap < <gv
    vnoremap > >gv

"Paste Toggle
" i.e., switch between paste-insert mode and ordinary insert-mode using \1
set pastetoggle=<Leader>1

" http://www.techrepublic.com/blog/linux-and-open-source/create-custom-keybindings-in-vim/
" in insert mode, map CTRL-E to end-of-line (insert mode)
inoremap <C-e> <esc>$i<right>
" in insert mode, map CTRL-A to beginning-of-line (insert mode)
inoremap <C-a> <esc>0i
" in insert mode, typing jj puts you into normal mode
inoremap jj <esc>

" set macro @s to add HTML tags around a word
let @a='bi<a href="">ea</a>'
let @b='bi<b>ea</b>'
let @c='bi<code>ea</code>'
let @i='bi<i>ea</i>'
let @s='bi<samp>ea</samp>'
let @u='bi<u>ea</u>'
let @m='bi<small>ea</small>'

" in normal mode, kk calls Pythonic func to toggle 4 space vs 8 space indents
nnoremap kk :call Pythonic()<cr>

function! Pythonic()
    " toggle function to make tabs pythonic - i.e., if tab 8 spaces, make 4 but if tab 4 spaces make 8
    " http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim

    " echom &tabstop
    if &tabstop == 8
        set tabstop=4
        set shiftwidth=4
        set expandtab
        echom "Number of spaces per tab:"&tabstop
    elseif &tabstop == 4
        set tabstop=8
        set shiftwidth=8
        set expandtab
        echom "Number of spaces per tab:"&tabstop
    endif
endfunction 
