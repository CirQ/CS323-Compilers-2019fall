%{
    #include"lex.yy.c"
    extern FILE *yyin;
    void yyerror(const char*);

    // what if (assume no syntax error)
    // Quiz QuizList { printf(" = %.2f\n", $1); }
%}
%error-verbose
%define api.value.type { float }
%token INT PERC EQ
%left ADD SUB
%left MUL DIV
%%
QuizList: %empty
    | QuizList Quiz { printf(" = %.2f\n", $2); }
    | QuizList ErrExp EQ {}
    ;
Quiz: Exp EQ { $$ = $1; }
    ;
Exp: INT
    | Exp ADD Exp { $$ = $1 + $3; }
    | Exp SUB Exp { $$ = $1 - $3; }
    | Exp MUL Exp { $$ = $1 * $3; }
    | Exp DIV Exp { $$ = $1 / $3; }
    | Exp ADD Disc { $$ = $1 * (1 + $3); }
    | Exp SUB Disc { $$ = $1 * (1 - $3); }
    ;
ErrExp:
      Exp ADD error
    | Exp SUB error
    | Exp MUL error
    | Exp DIV error
    ;
Disc: INT PERC { $$ = 0.01 * $1; }
    ;
%%
void yyerror(const char *s){
    fprintf(stderr, "%s\n", s);
}
int main(int argc, char **argv){
    yyin = fopen(argv[1], "r");
    yyparse();
    fclose(yyin);
}
