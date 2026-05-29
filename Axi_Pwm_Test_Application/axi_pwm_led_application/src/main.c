#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"

#define PWM_BASE XPAR_AXI_PWM_IP_0_BASEADDR

int main()
{
    int duty;

    // Enable PWM
    Xil_Out32(PWM_BASE + 0, 1);

    while(1)
    {
        // Fade IN
        for(duty = 0; duty <= 255; duty++)
        {
            Xil_Out32(PWM_BASE + 4, duty);
            usleep(5000);
        }

        // Fade OUT
        for(duty = 255; duty >= 0; duty--)
        {
            Xil_Out32(PWM_BASE + 4, duty);
            usleep(5000);
        }
    }

    return 0;
}
