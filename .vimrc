" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug  'blueshirts/darcula'

Plug 'vim-airline/vim-airline'

Plug 'bling/vim-bufferline'

Plug 'preservim/nerdtree'

call plug#end()

filetype plugin indent on "Включает определение типа файла, загрузку...
"... соответствующих ему плагинов и файлов отступов
set encoding=utf-8 "Ставит кодировку UTF-8
set nocompatible "Отключает обратную совместимость с Vi
syntax enable "Включает подсветку синтаксиса
set expandtab
set smarttab
set tabstop=4
set ruler
set number
"set foldcolumn=2

colorscheme darcula

" mouse
set mouse=a
set cursorline

"Если вы используете обычную qwerty, то поменяте mac на win
set keymap=russian-jcukenmac
"Язык ввода при старте Вима - Английский
set iminsert=0
"Аналогично настраивается режим поиска
set imsearch=0

" airline config
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop=1
let g:airline#extensions#bufferline#enabled=1

map <F5> :NERDTreeToggle<CR>

" -----------------------------
" --- Привычные комбинации ----
" --- клавиш для редакторов ---
" --- вне терминала -----------
" -----------------------------

" Ctrl+s для сохранения файла и возврата в нормальный режим (NORMAL)
"   из NORMAL
nnoremap <C-s> :w<CR>:echom expand('%:p')." saved!"<CR>
"   из INSERT
inoremap <C-s> <Esc>:w<CR>:echom expand('%:p')." saved!"<CR>
"   из VISUAL
vnoremap <C-s> <Esc>:w<CR>:echom expand('%:p')." saved!"<CR>

" Ctrl+c для закрытия текущего файла, находясь в режиме NORMAL
nnoremap <C-c> :q<CR>

" Ctrl+z для отмены изменений и Ctrl+x для возврата к изменениям
" в режимах NORMAL, VISUAL и INSERT
nnoremap <C-z> :undo<CR>
vnoremap <C-z> <Esc>:undo<CR>
inoremap <C-z> <Esc>:undo<CR>i
nnoremap <C-x> :redo<CR>
vnoremap <C-x> <Esc>:redo<CR>
inoremap <C-x> <Esc>:redo<CR>i

" Двигать текущую строку в режиме NORMAL
" вверх и вниз по нажатию Ctrl+Shift+Вверх/Вниз,
" где Вверх/Вниз это соответствующие стрелки на клавиатуре
nnoremap <silent> <C-S-Up> :m .-2<CR>
nnoremap <silent> <C-S-Down> :m .+1<CR>

" Аналогично, но уже для режима VISUAL
" перемещение нескольких строк за раз
vnoremap <silent> <C-S-Up> :m '<-2<CR>gv
vnoremap <silent> <C-S-Down> :m '>+1<CR>gv

" Выходим по Ctrl+q
nnoremap <C-q> :qa!i<CR>
noremap <C-q> <ESC>:qa!<CR>
vnoremap <C-q? <ESC>:qa!<CR>

 
