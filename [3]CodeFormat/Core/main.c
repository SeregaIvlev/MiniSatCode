
#include "main.h"




int main(void)
{
	LED_Init();
	ButtonInit();

    /* Loop forever */
	while(1){

		if(ButtonRead())
			GPIOC->ODR = 0;
		else
			GPIOC->ODR = (1<<13);

	}
}
