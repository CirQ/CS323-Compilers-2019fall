%{
    #include"syntax.tab.h"
%}
%%
[0-9] {
    yylval = (char*)malloc(2);
    memcpy(yylval, yytext, 2);
    return TERM;
}
"+" { yylval = "+"; return ADD; }
"-" { yylval = "-"; return SUB; }
. { /* do nothing */ }
