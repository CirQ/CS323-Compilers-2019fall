expr_bison:
	flex lex.l &&  bison -t -d syntax.y
	gcc syntax.tab.c -lfl -ly -shared -fPIC -o libexpr.so
	@echo "\e[92mTesting BISON implementation...\e[0m"
	@python3 expr_test.py ||:
expr_stack:
	gcc stack.c -shared -fPIC -o libexpr.so
	@echo "\e[92mTesting STACK implementation...\e[0m"
	@python3 expr_test.py ||:
clean:
	@rm -f lex.yy.c syntax.tab.* *.out *.so
