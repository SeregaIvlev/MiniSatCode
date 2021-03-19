
#include "main.h"

int main(void)
{
	RCC->APB2ENR = (1<<4);  //Enable clock for PORTC

	GPIOC->CRH = (1<<21);  	//GPIO output

    /* Loop forever */
	while(1){
		GPIOC->ODR = 0; 		//Светодиод загорается при подаче единицы
		for(uint32_t cnt = 0; cnt < 100000; cnt++);
		GPIOC->ODR = (1<<13); 		//Светодиод выключается при подаче нуля
		for(uint32_t cnt = 0; cnt < 100000; cnt++);
	}
}
