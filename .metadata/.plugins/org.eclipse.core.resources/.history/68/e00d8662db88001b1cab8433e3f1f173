################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../System/startup_stm32f103c8tx.s 

C_SRCS += \
../System/syscalls.c \
../System/sysmem.c 

OBJS += \
./System/startup_stm32f103c8tx.o \
./System/syscalls.o \
./System/sysmem.o 

S_DEPS += \
./System/startup_stm32f103c8tx.d 

C_DEPS += \
./System/syscalls.d \
./System/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
System/startup_stm32f103c8tx.o: ../System/startup_stm32f103c8tx.s
	arm-none-eabi-gcc -mcpu=cortex-m3 -g3 -c -x assembler-with-cpp -MMD -MP -MF"System/startup_stm32f103c8tx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"
System/syscalls.o: ../System/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -c -I"C:/Users/Sergei/Desktop/minisat/Code/[1]LedBlink/System/CMSIS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"System/syscalls.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
System/sysmem.o: ../System/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DDEBUG -c -I"C:/Users/Sergei/Desktop/minisat/Code/[1]LedBlink/System/CMSIS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"System/sysmem.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

