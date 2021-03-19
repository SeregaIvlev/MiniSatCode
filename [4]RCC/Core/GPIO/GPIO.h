#ifndef GPIO_GPIO_H_
#define GPIO_GPIO_H_

#include "stm32f1xx.h"

void LED_Init();
void Led_On();
void Led_Off();
void Led_Toggle();

void ButtonInit();
uint32_t ButtonRead();

#endif /* GPIO_GPIO_H_ */
