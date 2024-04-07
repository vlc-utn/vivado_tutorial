#include "custom_ip.h"

#include "sleep.h"
#include "xil_printf.h"
#include "xil_exception.h"
#include "xstatus.h"
#include "xparameters.h"
#include <xil_types.h>

#define BASE_IP_ADDRESS 0x43C00000

int main(void) {
    u16 counter = 0;
    while(1) {
        counter++;
        if (counter < 0xffff) {
            CUSTOM_IP_mWriteReg(BASE_IP_ADDRESS, CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET, counter);
        } else {
            counter = 0;
        }

        xil_printf("Buttons pressed: %d\n", CUSTOM_IP_mReadReg(BASE_IP_ADDRESS, CUSTOM_IP_S00_AXI_SLV_REG1_OFFSET));

        usleep(100000);
    }
}