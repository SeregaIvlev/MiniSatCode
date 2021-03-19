################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/main.c 

OBJS += \
./Core/main.o 

C_DEPS += \
./Core/main.d 


# Each subdirectory must supply rules for building sources it contributes
Core/main.o: ../Core/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -c -I"C:/Users/Sergei/Desktop/minisat/Code/[1]LedBlink/System/CMSIS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

