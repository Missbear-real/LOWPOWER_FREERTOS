################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/freertos.c \
../Src/fsm.c \
../Src/ldr.c \
../Src/led.c \
../Src/main.c \
../Src/reactor.c \
../Src/stm32f0xx_hal_msp.c \
../Src/stm32f0xx_it.c \
../Src/system_stm32f0xx.c 

OBJS += \
./Src/freertos.o \
./Src/fsm.o \
./Src/ldr.o \
./Src/led.o \
./Src/main.o \
./Src/reactor.o \
./Src/stm32f0xx_hal_msp.o \
./Src/stm32f0xx_it.o \
./Src/system_stm32f0xx.o 

C_DEPS += \
./Src/freertos.d \
./Src/fsm.d \
./Src/ldr.d \
./Src/led.d \
./Src/main.d \
./Src/reactor.d \
./Src/stm32f0xx_hal_msp.d \
./Src/stm32f0xx_it.d \
./Src/system_stm32f0xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F051x8 -I"C:/Users/karee/workspace/ISEL_P4Copia/Inc" -I"C:/Users/karee/workspace/ISEL_P4Copia/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/karee/workspace/ISEL_P4Copia/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/karee/workspace/ISEL_P4Copia/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"C:/Users/karee/workspace/ISEL_P4Copia/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/karee/workspace/ISEL_P4Copia/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/karee/workspace/ISEL_P4Copia/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/karee/workspace/ISEL_P4Copia/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


