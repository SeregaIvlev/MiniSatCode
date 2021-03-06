
#include "main.h"

void LED_Init(){
	RCC->APB2ENR |= (1<<4); //Enable clock for PORTC
	GPIOC->CRH = (1<<21);  	//GPIO output
	GPIOC->ODR = (1<<13); 	//Светодиод выключается при подаче единицы
}
void ButtonInit(){
	RCC->APB2ENR |= (1<<3); //Enable clock for PORTB
	GPIOB->CRH = (1<<7);  	//GPIO input with pull-up/pull-down
	GPIOB->ODR = (1<<9);	//Chose pull-up
}
uint32_t ButtonRead()
{
	return !(GPIOB->IDR & (1<<9));
}


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
