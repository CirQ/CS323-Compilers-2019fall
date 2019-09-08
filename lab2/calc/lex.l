%{
%}
%%
. { putchar(yytext[0]); }
%%
int main(int argc, char **argv){
    int i;
    char *file_path;
    if(argc < 2){
        fprintf(stderr, "Usage: %s <file_path>...\n", argv[0]);
        return EXIT_FAILURE;
    }
    else{
        for(i = 1; i < argc; i++){
            file_path = argv[i];
            FILE *fd = fopen(file_path, "r");
            if(!fd){
                perror(file_path);
                return EXIT_FAILURE;
            }
            yyrestart(fd);
            yylex();
            fclose(fd);
        }
        return EXIT_SUCCESS;
    }
}
