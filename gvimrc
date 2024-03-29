"this file replace in /etc/vim
"file plug.vim in /usr/share/vim    ->    vim80/autoload/
"apt install git
"Далее следует добавить информацию об устанавливаемых плагинах (название плагина это ссылка из гитхаб http://git/scrooloose/nerdtree`) в файл vimrc:

"плагин установится при первом старте Vim'а
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}           "боковая панель
Plug 'morhetz/gruvbox' "цветовая схема
Plug 'altercation/vim-colors-solarized' "цветовая схема
Plug 'ErichDonGubler/vim-sublime-monokai'

call plug#end()

"Для установки плагинов необходимо выполнить команду PlugInstall, для обновления — PlugUpdate
"Для обновления самого плагина используется отдельная команда PlugUpgrade, для удаления плагинов PlugClean.

colorscheme  gruvbox  "цветовая схема
"set background=dark

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
map <C-n> :NERDTreeToggle<CR> "ctrl + n

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
":term - terminal




