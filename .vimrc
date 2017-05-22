set cindent
set tabstop=4 		    "количество пробелов таба
set shiftwidth=4
set smarttab
set et 			        "включим автозамену по умолчанию	
set autoindent          "установить автоотступ
set cin 		        "включим отступы в стиле Си
set backup              "создавать .bak файлы (по умолчанию <oldname>~)
set incsearch           "при поиске перескакивать на найденный текст в процессе набора строки
set number              "Нумерация строк
set hlsearch            "Включаем подстветку найденных вариантов, и так всё видно./выключить добавить nohl..
set wildmenu            "При авто-дополнении в командной строке над ней выводятся возможные варианты"

set nocompatible
filetype off  "обязательно!

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  "  filetype plugin indent on     " обязательно!

"репозитории на github
    "Менеджер пакетов    
    Plugin 'gmarik/vundle'

   " Plugin 'tpope/vim-fugitive'
   " Plugin 'lokaltog/vim-easymotion'
    
    "превращает в теги 
    " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
    "показывает дерево файлов
    Plugin 'scrooloose/nerdtree'
    "отображает красивую строку состояния
    Plugin 'Lokaltog/vim-powerline'
    " Plugin 'vim-scripts/clang-complete'
    "Коменты блоками по gcc
    Plugin 'vim-scripts/tComment'
    "Построение дерева класса
    Plugin 'majutsushi/tagbar'
    Plugin 'vim-jp/ctags'
    "
    "Супертаб работает как афтодополнение по табу
    Plugin 'ervandew/supertab'

    ""репозитории vim/scripts
    Plugin 'L9'
    Plugin 'FuzzyFinder'
    Plugin 'rails.vim'
    Plugin 'Townk/vim-autoclose' 
    "aфтозакрывающиеся кавычки
    
    "git репозитории (не на github)
    "Plugin 'git://git.wincent.com/command-t.git'
"call vundle#end()            " required
"filetype plugin indent on    " required
"
"execute pathogen#infect()
call vundle#end()

set nocompatible    " Disable vi-compatibility
set laststatus=2    " Always show the statusline
set encoding=utf-8  " Necessary to show Unicode glyphs
set t_Co=256        " Explicitly tell Vim that the terminal supports 256 colors


"call pathogen#infect()
syntax on 
filetype plugin indent on    
"settings powerline mod
let g:Powerline_mode_n = 'NORMAL'
let g:Powerline_dividers_override = ['>>', '>', '<<', '<'] 
let g:Powerline_stl_path_style = 'full'

augroup project
        autocmd!
        autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

let &path.="src/include,/usr/include/AL,"

:inoremap " ""<LEFT>
"imap [ []<LEFT>
"imap ( ()<LEFT>
"imap { {<Cr><Cr>}<UP><TAB>
imap <F12> #include <stdio.h><Cr>int main(){<Cr><Cr>return 0;<Cr>} <Cr><RIGHT><UP><UP><UP>


:ab #d #define
:ab #i #include
:ab #b /************************************************
:ab #e ************************************************/
:ab #l /*----------------------------------------------*/
":ab if if (/*Условие*/){<Cr><TAB><Cr>}<UP><TUB>}
 
map <F7> :wall \|  make <Cr>         
map <F4> :cn<Cr>zvzz:cc<Cr>
map <S-F4> :cp<Cr>zvzz:cc<Cr>       
nmap <F8> :TagbarToggle<CR> 
