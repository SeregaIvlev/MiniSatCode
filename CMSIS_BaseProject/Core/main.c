
#include "main.h"

int main(void)
{
	RCC->APB2ENR |= (1<<4);  //Enable clock for PORTC

	GPIOC->CRH |= (1<<21);  GPIOC->CRH &= ~(1<<20); //Set output mode
	GPIOC->CRH &= ~(1<<23); GPIOC->CRH &= ~(1<<22); //Set push-pull mode


    /* Loop forever */
	while(1){
		GPIOC->ODR ^= (1<<13); 	//Toggle ODR pin
		for(uint32_t cnt = 0; cnt < 100000; cnt++); //Simply delay
	}
}
