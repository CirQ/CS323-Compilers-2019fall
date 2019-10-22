CC=gcc
CFLAGS=-I.

lltest: clean
	$(CC) symtab_ll.c --shared -fPIC -o libsymtab.so
	@echo "\e[92mRunning test for \e[4mlinked list\e[24m implementation...\e[0m"
	@python3 test.py ||:
httest: clean
	$(CC) symtab_ht.c --shared -fPIC -o libsymtab.so
	@echo "\e[92mRunning test for \e[4mhash table\e[24m implementation...\e[0m"
	@python3 test.py ||:
bttest: clean
	$(CC) symtab_bt.c --shared -fPIC -o libsymtab.so
	@echo "\e[92mRunning test for \e[4mbinary tree\e[24m implementation...\e[0m"
	@python3 test.py ||:
clean:
	@rm -f *.out *.so
.PHONY: lltest httest bttest

