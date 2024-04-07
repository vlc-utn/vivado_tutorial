#include <xil_printf.h>
#include <sleep.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <xparameters.h>

#include "xmy_fun_hw.h"
#include "xmy_fun.h"

#define MYFUN_BASE_ADDR 0x40000000


u32 float_to_u32(float val) {
    u32 result;
    union float_bytes {
        float v;
        unsigned char bytes[4];
    } data;
    data.v = val;
    result = (data.bytes[3]<<24)+(data.bytes[2]<<16)+(data.bytes[1]<<8)+(data.bytes[0]);
    return result;
}

float u32_to_float(u32 val) {
    union {
        float val_float;
        unsigned char bytes[4];
    } data;
    data.bytes[3] = (val >> (8*3)) & 0xff;
    data.bytes[2] = (val >> (8*2)) & 0xff;
    data.bytes[1] = (val >> (8*1)) & 0xff;
    data.bytes[0] = (val >> (8*0)) & 0xff;
    return data.val_float;
}

int main(void) {

    // Initialize my IP core
    XMy_fun myFun;

    float x1=10.0f;
    float x2=5.0f;
    float x3=2.0f;

    if (XMy_fun_Initialize(&myFun, MYFUN_BASE_ADDR) != XST_SUCCESS) {
        printf("Error initializing MyFun\n");
    } else {
        printf("MyFun initialized\n");
    }
    
    while(1) {
        XMy_fun_Set_x1(&myFun, float_to_u32(x1));
        XMy_fun_Set_x2(&myFun, float_to_u32(x2));
        XMy_fun_Set_x3(&myFun, float_to_u32(x3));

        XMy_fun_Start(&myFun);

        while(!XMy_fun_IsDone(&myFun));

        printf("x1=%.2f; x2=%.2f; x3=%.2f\n", x1, x2, x3);
        printf("x1*x2*x3 = %.2f\n", u32_to_float(XMy_fun_Get_b_y1(&myFun)));
        printf("x1+x2+x3 = %.2f\n", u32_to_float(XMy_fun_Get_y2(&myFun)));
        printf("sqrt(y1+y2) = %.2f\n", u32_to_float(XMy_fun_Get_y3(&myFun)));

        sleep(1);
    }
}