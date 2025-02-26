#include <stdio.h>
#include "xparameters.h"

int main (void)
{
    int mode;
    int reg_select;
    int num;
    volatile unsigned int* base_addr = 0x40000000;

    while(1)
    {

        printf("mode select\r\n");
        printf("write mode => 1, read mode => 2\r\n");
        scanf("%d",&mode);



        if (mode == 1)
        {
            printf("mode : 1 (write) \r\n");
            printf("select register \r\n");
            scanf ("%d",&reg_select);
            printf("selected register : %d \r\n",reg_select);
            printf("type int number \r\n");
            scanf ("%d",&num);
            printf("typed num : %d \r\n",num);
            
            *(base_addr + 4*reg_select) = num;


        } 
        if (mode == 2)
        {
            printf("mode : 2 read \r\n");
            printf("select register \r\n");
            scanf ("%d",&reg_select);
            printf("%d",*(base_addr + 4*reg_select));
        }
    }




    return 0;
}