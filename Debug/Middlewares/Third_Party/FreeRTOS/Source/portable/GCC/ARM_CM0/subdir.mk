################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0/port.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0/port.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0/%.o: ../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F051x8 -I"C:/Users/karee/workspace/ISEL_P4Copia/Inc" -I"C:/Users/karee/workspace/ISEL_P4Copia/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/karee/workspace/ISEL_P4Copia/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/karee/workspace/ISEL_P4Copia/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"C:/Users/karee/workspace/ISEL_P4Copia/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/karee/workspace/ISEL_P4Copia/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/karee/workspace/ISEL_P4Copia/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/karee/workspace/ISEL_P4Copia/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


