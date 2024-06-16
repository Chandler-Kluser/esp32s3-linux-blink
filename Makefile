.phony: all flash clear

TOOLCHAIN = xtensa-esp32s3-linux-uclibcfdpic-
CC = gcc
CFLAGS += -O2 -mfdpic -D_GNU_SOURCE
CFLAGS += -Iinc

all: obj build
	$(TOOLCHAIN)$(CC) $(CFLAGS) ./obj/gpio-utils.o ./obj/main.o -o ./bin/gpio

obj: build
	$(TOOLCHAIN)$(CC) -c $(CFLAGS) src/gpio-utils.c -o obj/gpio-utils.o
	$(TOOLCHAIN)$(CC) -c $(CFLAGS) src/main.c -o obj/main.o

clean:
	rm -rf bin obj

build:
	mkdir -p obj
	mkdir -p bin