################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/GPIO/GPIO.c 

OBJS += \
./Core/GPIO/GPIO.o 

C_DEPS += \
./Core/GPIO/GPIO.d 


# Each subdirectory must supply rules for building sources it contributes
Core/GPIO/GPIO.o: ../Core/GPIO/GPIO.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -c -I"C:/Users/Sergei/Desktop/minisat/Code/[4]RCC/System/CMSIS" -I"C:/Users/Sergei/Desktop/minisat/Code/[4]RCC/Core/GPIO" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/GPIO/GPIO.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

