CC=gcc
FLEX=flex
ipaddr:
	$(FLEX) lex.l
	$(CC) lex.yy.c -lfl -o ipaddr.out
clean:
	@rm -f lex.yy.c *.out
.PHONY: ipaddr
