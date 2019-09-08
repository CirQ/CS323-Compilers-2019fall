CC=gcc
FLEX=flex
calc:
	$(FLEX) lex.l
	$(CC) lex.yy.c -lfl -o calc.out
clean:
	@rm -f lex.yy.c *.out
.PHONY: calc
