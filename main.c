#include <ncurses.h> //подключаем библиотеку ncurses

int main( )
{
    int row, col;
    // инициализация (должна быть выполнена 
    // перед использованием ncurses)
    initscr();

    // Измеряем размер экрана в рядах и колонках
    getmaxyx(stdscr, row, col);
  
    // перемещение курсора в стандартном экране
    move(row / 2, col / 2);

    printw("Hello world"); // вывод строки
    refresh(); // обновить экран
    getch(); // ждём нажатия символа
  
    endwin(); // завершение работы с ncurses
    return 1;
}
