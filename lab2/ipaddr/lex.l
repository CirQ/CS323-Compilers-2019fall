%{
%}
%%
. { putchar(yytext[0]); }
\n { puts("new line!"); }
%%
int main(void){
    yylex();
}
