CC=gcc
FLEX=flex
wc:
	$(FLEX) wc_lex.l
	$(CC) lex.yy.c -o wc.out
clean:
	@rm -f lex.yy.c wc.out
.PHONY: wc
