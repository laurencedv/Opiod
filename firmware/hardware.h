/*!
 @file		hardware.h
 @brief		Hardware definition for C32
			
 @version	0.1
 @note		Be sure to verify every constant in this file for each project
 
 @date		October 26th 2011
 @author	Laurence DV
*/

#ifndef _HARDWARE_H
#define _HARDWARE_H 1

// ================== Include =================== //
//Chip Specific
#include <p32xxxx.h>

//Board Specific
#include <board/opioid-a0.h>

//Definition
#include <definition/datatype_megaxone.h>
#include <definition/stddef_megaxone.h>
// ============================================== //


// =================== Define =================== //
// -- Clock -- //
#define OSC		80000000			//Freq of the main OSC source (in Hz)
#define	OSC_KHZ		(OSC/1000)			//Same in KHz
#define	OSC_MHZ		(OSC_KHZ/1000)			//Same in MHz

#define OSC_PERIOD_PS	(1000000000/OSC_KHZ)		//Oscillator period (in ps)
// ----------- //

// -- Processor -- //
#define CPU_FAMILY	PIC32MX5xxL			//Processor Family used in this project
#define CPU_MAX_FREQ	80000000			//Maximum running freq of the cpu
// --------------- //

// -- RAM -- //
#define HEAP_SIZE	8192				//Initial Heap size in byte
// --------- //

// -- DMA -- //
#define DMA_MAX_CHANNEL	4				//Maximum DMA channel used
// --------- //

// -- ADC -- //
#define ADC_MAX_PORT	1				//Maximum number of ADC peripherals used
// --------- //

// -- SPI -- //
#define SPI_MAX_PORT	2				//Maximum number of SPI peripherals used
// --------- //

// -- I2C -- //
#define I2C_MAX_PORT	0				//Maximum number of I2C peripherals used
// --------- //

// -- UART -- //
#define UART_MAX_PORT	6				//Maximum number of UART peripherals used
// ---------- //

// -- OC -- //
#define OC_MAX_PORT	3				//Maximum number of Output Compare peripherals used
// -------- //
// ============================================== //

#endif
