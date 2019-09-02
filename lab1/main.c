#include "linked_list.h"

int main(void){
    node *head = linked_list_init();
    printf("%d\n", linked_list_size(head));
    linked_list_append(head, 1);
    linked_list_append(head, 3);
    linked_list_append(head, 7);
    linked_list_append(head, 101);
    linked_list_display(head);
    printf("%d\n", linked_list_size(head));
    linked_list_free(head);
    return 0;
}

