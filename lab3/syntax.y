%{
    #include"lex.yy.c"
    int yyerror(const char*);
    int result;
%}
%error-verbose
%token INT
%token ADD SUB MUL DIV PERC EQ
%%
Quiz: Exp EQ { result = $1; YYACCEPT; }
    ;
Exp: Factor
    | Factor ADD Exp { $$ = $1 + $3; }
    | Factor SUB Exp { $$ = $1 - $3; }
    ;
Factor: INT
    | INT MUL Factor { $$ = $1 * $3; }
    | INT DIV Factor { $$ = $1 / $3; }
    ;
%%
int yyerror(const char *s){
    fprintf(stderr, "%s\n", s);
    return 0;
}
int evaluate(char *expr){
    YY_BUFFER_STATE buf;
    buf = yy_scan_string(expr);
    yyparse();
    yy_delete_buffer(buf);
    return result;
}

#ifndef CALC_MAIN
#else
int main(){
    //yydebug = 1;
    while(1){
        yyparse();
        printf(" = %d\n", result);
    }
}
#endif