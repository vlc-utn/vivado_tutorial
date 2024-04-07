#include "xsysmon.h"
#include "xparameters.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "sleep.h"

#define C_BASEADDR 0x43C00000

int main(void) {
    uint16_t data1 = 0;
    uint16_t data5 = 0;
    uint16_t data6 = 0;
    uint16_t data9 = 0;
    uint16_t data13 = 0;
    uint16_t data15 = 0;

    //xil_Out32(C_BASEADDR + 0x300 , 0x8016);
    //xil_Out32(C_BASEADDR + 0x304, 0x3F0F);
    //xil_Out32(C_BASEADDR + 0x308, 0x0800);
    //xil_Out32(C_BASEADDR + 0x324, 0x303);

    while(1) {
        data1 = Xil_In32(C_BASEADDR + 0x244);
        data5 = Xil_In32(C_BASEADDR + 0x254);
        data6 = Xil_In32(C_BASEADDR + 0x258);
        data9 = Xil_In32(C_BASEADDR + 0x264);
        data13 = Xil_In32(C_BASEADDR + 0x274);
        data15 = Xil_In32(C_BASEADDR + 0x27C);

        data1 = (data1 >> 4)*244e-3 * 3.32;   // mV
        data5 = (data5 >> 4)*244e-3 * 3.32;   // mV
        data6 = (data6 >> 4)*244e-3 * 3.32;   // mV
        data9 = (data9 >> 4)*244e-3 * 3.32;   // mV
        data13 = (data13 >> 4)*244e-3 * 3.32;   // mV
        data15 = (data15 >> 4)*244e-3 * 3.32;   // mV

        xil_printf("data1 = %03d [mV]\n\r", data1);
        xil_printf("data5 = %03d [mV]\n\r", data5);
        xil_printf("data6 = %03d [mV]\n\r", data6);
        xil_printf("data9 = %03d [mV]\n\r", data9);
        xil_printf("data13 = %03d [mV]\n\r", data13);
        xil_printf("data15 = %03d [mV]\n\r", data15);

        usleep(100000);
    }
}

