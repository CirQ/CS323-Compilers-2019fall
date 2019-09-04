CC=gcc
FLEX=flex
wc:
	$(FLEX) wc_lex.l
	$(CC) lex.yy.c -lfl -o wc.out
calc:
	$(FLEX) calc_lex.l
	$(CC) lex.yy.c -lfl -o calc.out
clean:
	@rm -f lex.yy.c *.out
.PHONY: wc calc
