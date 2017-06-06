/*
 * ldr.h
 *
 *  Created on: 02/06/2017
 *      Author: kareen
 */

#ifndef LDR_H_
#define LDR_H_

void LDR_INIT();
void LDR_START();
uint32_t LDR_GET();
void LDR_STOP();
extern int flag_ADC;

#endif /* LDR_H_ */
