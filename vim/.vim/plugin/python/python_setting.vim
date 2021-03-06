"------------------------------------------------------------------------
" Setting for python
"------------------------------------------------------------------------

" Press F10 to run current file.
autocmd BufRead,BufNewFile *.py map <F10> :% w !python<CR>

" Follow Python coding style: use four spaces to indent codes.
autocmd BufRead,BufNewFile *.py set sw=4 tabstop=4 smarttab expandtab

" Load Python indent
so ~/.vim/indent/python.vim

" Use 256 colors
set t_Co=256
colorscheme wombat256
set cursorline
let python_highlight_all = 1

" Load template for normal script and test script.
if expand("%") =~ ".*_test\.py"
        autocmd BufNewFile *_test.py 0r ~/.vim/template/test.py
elseif expand("%") =~ ".*\.py"
        autocmd BufNewFile *.py 0r ~/.vim/template/production.py
endif

" Press ddd to insert codes that call IPython to help debug.
imap ddd import IPythonIPython.Shell.IPShellEmbed()()

hi TempKeyword ctermfg=red
