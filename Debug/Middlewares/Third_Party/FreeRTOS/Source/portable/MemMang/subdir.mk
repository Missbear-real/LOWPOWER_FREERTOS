################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/%.o: ../Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F051x8 -I"C:/Users/Miguel/workspaceSTM/Ejercicio4STide/Inc" -I"C:/Users/Miguel/workspaceSTM/Ejercicio4STide/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Miguel/workspaceSTM/Ejercicio4STide/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Miguel/workspaceSTM/Ejercicio4STide/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"C:/Users/Miguel/workspaceSTM/Ejercicio4STide/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Miguel/workspaceSTM/Ejercicio4STide/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/Miguel/workspaceSTM/Ejercicio4STide/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/Miguel/workspaceSTM/Ejercicio4STide/Drivers/CMSIS/Include" -I"C:/Users/Miguel/workspaceSTM/Ejercicio4STide/Inc"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


