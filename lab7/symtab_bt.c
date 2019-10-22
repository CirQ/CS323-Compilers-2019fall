#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#define KEY_LEN 32
#define VAL_T int

/*
 * struct definition for table entry,
 * should only be used internally
 */
struct _entry {
    char key[KEY_LEN+1];
    VAL_T value;
};

// init a table entry, to be inserted
void _entry_init(struct _entry *self, char *key, VAL_T value){
    sprintf(self->key, "%s", key);
    self->value = value;
}

/*
 * symbol table type, binary tree impl
 */
typedef struct symtab {
    struct _entry entry;
    struct symtab *left, *right;
} symtab;

// init a single symbol table
symtab *symtab_init();

// insert a key-value pair to the table
// if insert success, return 1, otherwise 0
int symtab_insert(symtab*, char*, VAL_T);

// lookup the value to a specific key
// return -1 if not found (for ptr VAL_T, return NULL)
VAL_T symtab_lookup(symtab*, char*);

// delete a key-value pair from the table
// if delete success, return 1, otherwise 0
int symtab_delete(symtab*, char*);

// ************************************************************
//    Your implementation goes here
// ************************************************************

symtab *symtab_init(){

}

int symtab_insert(symtab *self, char *key, VAL_T value){

}

VAL_T symtab_lookup(symtab *self, char *key){

}

int symtab_delete(symtab *self, char *key){

}

