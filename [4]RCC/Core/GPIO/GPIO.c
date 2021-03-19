#include "GPIO.h"



/*********************************** Button *************************************************************/
void ButtonInit(){
	RCC->APB2ENR |= (RCC_APB2ENR_IOPBEN); //Enable clock for PORTB

	GPIOB->CRH &= ~(GPIO_CRH_MODE9_1); GPIOB->CRH &= ~(GPIO_CRH_MODE9_0); 	//Set input mode
	GPIOB->CRH |= (GPIO_CRH_CNF9_1);  GPIOB->CRH &= ~(GPIO_CRH_CNF9_0); 	//Pull-up/down mode

	GPIOB->ODR |= (GPIO_ODR_ODR9);	//Chose pull-up
}
uint32_t ButtonRead(){
	return !(GPIOB->IDR & (GPIO_IDR_IDR9));
}


/************************************** LED *************************************************************/
void LED_Init(){
	RCC->APB2ENR |= (RCC_APB2ENR_IOPCEN); //Enable clock for PORTC

	GPIOC->CRH |= (GPIO_CRH_MODE13_1);  GPIOC->CRH &= ~(GPIO_CRH_MODE13_0); //Set output mode
	GPIOC->CRH &= ~(GPIO_CRH_CNF13_1); GPIOC->CRH &= ~(GPIO_CRH_CNF13_0); //Set push-pull mode

	GPIOC->ODR |= (1<<13); 	//Светодиод выключается при подаче единицы
}
void Led_On(){
	GPIOC->ODR &= ~(1<<13); 	//Светодиод включается при подаче 0
}
void Led_Off(){
	GPIOC->ODR |= (1<<13); 	//Светодиод выключается при подаче единицы
}
void Led_Toggle(){
	GPIOC->ODR ^= (1<<13);
}
