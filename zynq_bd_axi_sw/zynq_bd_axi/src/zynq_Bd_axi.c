#include <stdio.h>
#include "xparameters.h"

int main (void)
{
    unsigned int* base_addr = 0x40000000;
    enum  swto7seg {zero = 0x3f, one =0x06, two =0x5b, three = 0x4f, four= 0x66, five= 0x6d,six=0x7d,seven= 0x27,eight=0x7f,nine=0x6f};
    int sw; 

    while (1)
    {   
        sw = *(base_addr);
        switch(sw)
        {
            case 0:
            *(base_addr + 4) = zero;
            break;

            case 1:
            *(base_addr + 4) = one;
            break;

            case 2:
            *(base_addr + 4) = two;
            break;
            
            case 3:
            *(base_addr + 4) = three;
            break;

            case 4:
            *(base_addr + 4) = four;
            break;

            case 5:
            *(base_addr + 4) = five;
            break;

            case 6:
            *(base_addr + 4) = six;
            break;

            case 7:
            *(base_addr + 4) = seven;
            break;

            case 8:
            *(base_addr + 4) = eight;
            break;

            case 9:
            *(base_addr + 4) = nine;
            break;

            default :
            *(base_addr + 4) = 0x00;
            break;

        }
    }
}