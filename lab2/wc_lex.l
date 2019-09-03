%{
    // just let you know you have macros!
    #define EXIT_OK 0
    #define EXIT_FAIL 1

    // and global variables
    int chars = 0;
    int words = 0;
    int lines = 0;
%}
%option noyywrap
letter [a-zA-Z]
%%
{letter}+ { words++; chars+=yyleng; }
\n { chars++; lines++; }
<<EOF>> { lines++; return 0; }
. { chars++; }
%%
int main(int argc, char **argv){
    if(argc < 2){
        fprintf(stderr, "Usage: %s <file_path>\n", argv[0]);
        return EXIT_FAIL;
    }
    else if(argc == 2){
        if(!(yyin = fopen(argv[1], "r"))){
            perror(argv[1]);
            return EXIT_FAIL;
        }
        yylex();
        printf("%8d%8d%8d\n", lines, words, chars);
        return EXIT_OK;
    }
    else{
        fputs("Too much arguments!\n", stderr);
        return EXIT_FAIL;
    }
}
