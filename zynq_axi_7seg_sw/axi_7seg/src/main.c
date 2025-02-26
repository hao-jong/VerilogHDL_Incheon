/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include <unistd.h> // usleep 함수 포함

int main()
{
    int num;
    volatile unsigned int* base_addr = (unsigned int*)0x40000000; // 올바른 형 변환 추가

    while(1)
    {
        printf("read reg0 \r\n");
        printf("typed num : %d \r\n", *base_addr);
        usleep(500000); // 500ms 딜레이
    }
    return 0;
}