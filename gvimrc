"файл plug.vim поместить в vim80/autoload/
"нужно установить git
"Далее следует добавить информацию об устанавливаемых плагинах (название плагина это ссылка из гитхаб http://git/scrooloose/nerdtree`) в файл vimrc:

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}           "боковая панель
Plug 'morhetz/gruvbox' "цветовая схема

call plug#end()

"Для установки плагинов необходимо выполнить команду PlugInstall, для обновления — PlugUpdate
"Для обновления самого плагина используется отдельная команда PlugUpgrade, для удаления плагинов PlugClean.

colorscheme gruvbox    "цветовая схема
set background=dark

"нумерация строк
set number

"вместо таба 2 пробела
set expandtab
set tabstop=2 

"поиск
set hlsearch
set incsearch

"подсветка синтаксиса
syntax on

"показать боковую панель
map <C-n> :NERDTreeToggle<CR> "контрал + n

"размер окна
:set lines=50
:set columns=130

"вывод результата
"map <F5> :w !python3<cr>

"копировать в буфер системный
set clipboard=unnamedplus

"КОМАНДЫ
"vsp - разделить на 2 окна
"ctrl + w + w - сменить окно
":w !python3 -вывод результата скрипта
"e путь - открыть файл




