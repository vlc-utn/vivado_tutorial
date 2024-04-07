#include <xparameters.h>
#include <xstatus.h>
#include <xil_exception.h>
#include <xil_printf.h>
#include <sleep.h>

#include "myip.h"

#define BASE_ADDR 0x43C00000

int main(void) {
    uint16_t x1 = 17;
    uint16_t x2 = 18;

    u16 product = 0;
    u16 sum = 0;

    while(1) {
        MYIP_mWriteReg(BASE_ADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, x1);
        MYIP_mWriteReg(BASE_ADDR, MYIP_S00_AXI_SLV_REG1_OFFSET, x2);

        sleep(1);

        product = MYIP_mReadReg(BASE_ADDR, MYIP_S00_AXI_SLV_REG2_OFFSET);
        sum = MYIP_mReadReg(BASE_ADDR, MYIP_S00_AXI_SLV_REG3_OFFSET);

        sleep(1);

        xil_printf("PROD: %d\n\r", product);
        xil_printf("SUM: %d\n\r", sum);

        sleep(1);
    }
}