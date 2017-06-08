/*
 * led.c
 *
 *  Created on: 02/06/2017
 *      Author: Karen Flores, David Sandoval y Miguel Villalba
 *
 */
#include "main.h"
#include "stm32f0xx_hal.h"
#include "stm32f0xx_hal_dac.h"
#include "led.h"

DAC_HandleTypeDef hdac1;

void LED_INIT() {
	MX_DAC1_Init();
}

void LED_START() {
	HAL_DAC_Start(&hdac1, DAC_CHANNEL_1);
	HAL_DAC_SetValue(&hdac1, DAC_CHANNEL_1, DAC_ALIGN_12B_R, DARK_LEVEL);

}

void LED_SET(int value) {
	HAL_DAC_SetValue(&hdac1, DAC_CHANNEL_1, DAC_ALIGN_12B_R, value);
}


