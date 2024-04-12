PRJ=ctui

# Директории
SRC_DIR= . src

# Исходники
SRC = main.c


LIBDIR = /usr/local/lib
LIBS_DIRS = -I./include/
LIBS = $(LIBS_DIRS) -lncursesw -ltinfo

DST = ./appendix

# Компилятор
CC=gcc
# Флаги
CFLAGS= -g3 -fno-inline -O1 -Wall -Wextra -std=gnu99 -fgnu89-inline -Wno-unused-but-set-variable

.PHONY: clean build
all: build

build: $(SRC:%.c=%.o)
	$(CC) $(DST)/*.o -o $(DST)/$(PRJ) $(LIBS)

run:
	./$(DST)/$(PRJ)

clean:
	 @rm -f $(DST)/*.o $(DEST)/$(PRJ)
	 @(printf "Cleaning done!\n");

main.o: main.c
	@echo
	@(printf "COMPILING: %s $< (%s$@)\n");
	@$(CC) -c $(CFLAGS) $(LIBS) $< -o $(DST)/$@
	@(printf "COMPILING DONE!\n");
