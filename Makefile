SHELL = /bin/sh

CC=gcc
CFLAGS=-Wall
LDFLAGS =-lncurses
SRC = ${wildcard *.c}
OBJ  = ${SRC:.c=.o}

.PHONY: all clean

all: horse

%.o: %.c
	${CC} -c -o $@ $< ${CFLAGS}

horse: ${OBJ}
	${CC} -o $@ $^ ${CFLAGS} $(LDFLAGS)

clean:
	-rm -f horse horse.exe $(OBJ)