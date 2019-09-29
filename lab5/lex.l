%{
    #include"syntax.tab.h"
%}
%%
[0-9]+ { yylval = atoi(yytext); return INT; }
"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"%" { return PERC; }
"\n" { return EQ; }
[ \r\t] {}
. { fprintf(stderr, "unknown symbol: %s\n", yytext); }
