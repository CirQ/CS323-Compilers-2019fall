CC=gcc
CFLAGS=-I.

hello:
	$(CC) hello_world.c -o hello
main:
	$(CC) linked_list.c main.c -o ll_menu
libll:
	$(CC) linked_list.c --shared -o libll.so
clean:
	@rm -f a.out hello ll_menu
.PHONY: hello

