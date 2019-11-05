%{
    #include"lex.yy.c"
    void yyerror(char*s){}

    /*
     * We make assumptions on the input:
     * there are no syntax errors, and
     * only consist two operators, plus
     * and minus, and all numbers contain
     * exactly one digit, no spaces.
     */

    // where reverse Polish notation goes
    char *result;
%}
%define api.value.type { char* }
%token TERM ADD SUB

%%
Eval: Expr { result = $1; }
Expr: TERM              /* write the   */
    | Expr ADD TERM     /* SDT actions */
    | Expr SUB TERM     /* at HERE     */
%%

char *convert(char *expr){
    YY_BUFFER_STATE buf;
    buf = yy_scan_string(expr);
    yyparse();
    yy_delete_buffer(buf);
    return result;
}
