#include <stdio.h>
#include "../include/testFunc.h"
#include "myFunc.h"
int main(void)
{
#ifdef WWW1
    printf("hello world1\n");
#endif

#ifdef WWW2
    printf("hello world2\n");
#endif

    printf("Hello World\n");
    // func(100);
    add(101);
    return 0;
}
//  gcc main.c -I../myFunc/inc   ../myFunc/lib/libmyFunc.a -o app