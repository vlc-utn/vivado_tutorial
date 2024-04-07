#include <xparameters.h>
#include <xstatus.h>
#include <xil_exception.h>
#include <xil_printf.h>
#include <sleep.h>
#include <stdio.h>

#include "myip.h"

#define BASE_ADDR 0x43C00000

int main (void) {
    uint32_t vq = 1309;
    uint32_t vd = 2597;
    uint32_t angle = 151;
    int16_t valpha = 0;
    int16_t vbeta = 0;

    double valpha_d = 0;
    double vbeta_d = 0;

    while(1) {
        MYIP_mWriteReg(BASE_ADDR, MYIP_S00_AXI_SLV_REG0_OFFSET, vq);
        MYIP_mWriteReg(BASE_ADDR, MYIP_S00_AXI_SLV_REG1_OFFSET, vd);
        MYIP_mWriteReg(BASE_ADDR, MYIP_S00_AXI_SLV_REG2_OFFSET, angle);

        sleep(1);

        valpha = (int16_t) MYIP_mReadReg(BASE_ADDR, MYIP_S00_AXI_SLV_REG3_OFFSET);
        vbeta = (int16_t) MYIP_mReadReg(BASE_ADDR, MYIP_S00_AXI_SLV_REG4_OFFSET);

        sleep(1);

        valpha_d = valpha * pow(2, -6);
        vbeta_d = vbeta * pow(2, -6);

        xil_printf("VQ: %d, VD: %d, ANGLE: %d\n", vq, vd, angle);
        printf("VALPHA: %f, VBETA: %f\n", valpha_d, vbeta_d);

        sleep(1);
    }
}