#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#define STACK_LEN 32

char *convert(char *expr){
    char opstack[STACK_LEN];
    char stack[STACK_LEN];
    int optop, top;
    char *c, *ret;

    memset(opstack, '\0', STACK_LEN);
    memset(stack, '\0', STACK_LEN);
    optop = top = 0;
    c = expr;

    while(*c != '\0'){
        if((*c >= '0') && (*c <= '9')){

        }
        else if((*c == '+') || (*c == '-')){

        }
        else{
            // lexical errors
        }
        c++;
    }

    ret = (char*)malloc(strlen(stack)+1);
    sprintf(ret, "%s", stack);
    return ret;
}

int main(){
    puts( convert("3-7+4-5") );
    return 0;
}

