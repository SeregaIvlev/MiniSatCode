################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/startup_stm32f102c4tx.s 

C_SRCS += \
../Drivers/syscalls.c \
../Drivers/sysmem.c 

OBJS += \
./Drivers/startup_stm32f102c4tx.o \
./Drivers/syscalls.o \
./Drivers/sysmem.o 

S_DEPS += \
./Drivers/startup_stm32f102c4tx.d 

C_DEPS += \
./Drivers/syscalls.d \
./Drivers/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/startup_stm32f102c4tx.o: ../Drivers/startup_stm32f102c4tx.s
	arm-none-eabi-gcc -mcpu=cortex-m3 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/startup_stm32f102c4tx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"
Drivers/syscalls.o: ../Drivers/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F102C4Tx -DSTM32F1 -DDEBUG -c -I"C:/Users/Sergei/Desktop/minisat/Code/BaseProject_CMSIS/Drivers/CMSIS/Include" -I"C:/Users/Sergei/Desktop/minisat/Code/BaseProject_CMSIS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/syscalls.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/sysmem.o: ../Drivers/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F102C4Tx -DSTM32F1 -DDEBUG -c -I"C:/Users/Sergei/Desktop/minisat/Code/BaseProject_CMSIS/Drivers/CMSIS/Include" -I"C:/Users/Sergei/Desktop/minisat/Code/BaseProject_CMSIS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/sysmem.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

