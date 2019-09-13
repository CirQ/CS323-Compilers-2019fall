%{
    #include"lex.yy.c"
    int yyerror(const char*);
%}
%token INT
%token ADD SUB MUL DIV PERC EQ
%%
QuizList: Quiz QuizList
    |
    ;
Quiz: Exp EQ { printf(" %d\n", $1); }
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
int main(){
    //yydebug = 1;
    yyparse();
}
