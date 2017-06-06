/*
 * ldr.c
 *
 *  Created on: 02/06/2017
 *      Author: Karen Flores, David Sandoval y Miguel Villalba
 */
#include "stm32f0xx_hal.h"
#include "main.h"
#include "ldr.h"

ADC_HandleTypeDef hadc;
int flag_ADC;

void LDR_INIT() {
   MX_ADC_Init();
}

void LDR_START() {
   HAL_ADC_Start_IT(&hadc);
}

void LDR_STOP(){
	HAL_ADC_Stop_IT(&hadc);
}
uint32_t LDR_GET() {
	uint32_t val = HAL_ADC_GetValue(&hadc);
   return val;
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc){
	flag_ADC = 1;
}

