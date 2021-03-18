################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/main.c 

OBJS += \
./User/main.o 

C_DEPS += \
./User/main.d 


# Each subdirectory must supply rules for building sources it contributes
User/main.o: ../User/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F102C4Tx -DSTM32F1 -DDEBUG -c -I"C:/Users/Sergei/Desktop/minisat/Code/BaseProject_CMSIS/Drivers/CMSIS/Include" -I"C:/Users/Sergei/Desktop/minisat/Code/BaseProject_CMSIS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"User/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

