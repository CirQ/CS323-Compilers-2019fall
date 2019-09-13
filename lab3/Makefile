CC=gcc
FLEX=flex
BISON=bison
calc:
	$(BISON) -t -d syntax.y
	$(FLEX) lex.l
	$(CC) syntax.tab.c -lfl -ly -o calc.out
clean:
	@rm -f lex.yy.c syntax.tab.* *.out
