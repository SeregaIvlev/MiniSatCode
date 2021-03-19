
#include <stdint.h>
#include "stm32f1xx.h"

int main(void)
{
	RCC->APB2ENR = (1<<4);  //Enable clock for PORTC

	GPIOC->CRH = (1<<21);  	//GPIO output

	GPIOC->ODR = 0; 		//Светодиод загорается при подаче единицы


    /* Loop forever */
	while(1);
}
