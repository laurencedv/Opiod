/*!
 @file		Opioid-A0.c
 @brief		OpIUM Opioid node firmware revision A0
			
 @version	0.1
 @note		
 
 @date		February 28th 2011
 @author	Laurence DV
*/

// ################## Includes ################## //
//Hardware
#include "PIC32MX575_config.h"	//Must be before stddef_megaxone because of some define
#include "hardware.h"

//Library
#include <peripheral/pic32_clock.h>
#include <peripheral/pic32_timer.h>
#include <peripheral/pic32_uart.h>
#include <peripheral/pic32_output_compare.h>
#include <peripheral/pic32_interrupt.h>
#include <peripheral/pic32_spi.h>
#include <peripheral/pic32_adc.h>
//#include <peripheral/pic32_pps.h>
//#include <peripheral/pic32_dma.h>
//#include <device/pic32_SN65HVD11.h>
#include <soft/pic32_ringBuffer.h>
#include <soft/pic32_realtime.h>

//OpIUM
#include <op_general.h>

//Microchip's
#include <stdlib.h>
#include <sys/attribs.h>
//#include <plib.h>

//Definition
#include <definition/datatype_megaxone.h>
#include <definition/stddef_megaxone.h>

//Dev macro
#include <tool/splitvar_megaxone.h>
#include <tool/bitmanip_megaxone.h>
// ############################################## //


// ################## Defines ################### //
//System

#define OPIUM_NODE_UID			0x0100000000000000		//Unique Identification number of the Node

//Test
#define LED_R_SYSTICK_INTERVAL	10
#define LED_G_SYSTICK_INTERVAL	15
#define LED_B_SYSTICK_INTERVAL	40
// ############################################## //


// ################## Prototype ################# //
U8 opioidInit(void);
void interruptSetIPL(U8 wantedIPL);
// ############################################## //


// ################## Variables ################# //
// System
U32 gu1 = 0;								//Global unsigned variable 1
U32 gu2 = 0;
U32 gu3 = 0;

U32 ledSTRed = 0;
U32 ledSTBlue = 0;
U32 ledSTGreen = 0;
U8 ledRed = 0;
U8 ledRedDir = 0;
U8 ledGreen = 0;
U8 ledGreenDir = 0;
U8 ledBlue = 0;
U8 ledBlueDir = 0;
extern U32 sysTick;

U8 softCntTestID;
U8 softCntTestFlag = 0xDD;
U32 softCntTestPeriod = 100;

// COM 0
tSPISlaveControl * pCOM0SlaveControl = NULL;			//COM0 SPI Control structure
tSPITransaction COM0ControlTransaction;
// ############################################## //


// ################ Main Program ################ //
int main(void)
{
	//* --------------- Init --------------- *//
	opioidInit();

	// Init the Clock
	//outputPIN(REFOCLK);
	//REFOCONbits.RODIV = 4;	//Div by 8
	//REFOCONbits.ROSEL = 1;	//PBCLK outputed
	//REFOCONbits.OE = 1;		//enbale ouput
	//REFOCONbits.ON = 1;		//enable REFOCLK
	//* ------------------------------------ *//


	//* ----------- Testing Space ---------- *//
	//timerInit(TIMER_2,0);
	//ocSetConfig(OC_2,OC_MODE_PWM|OC_TIMER_2);
	//ocSetConfig(OC_3,OC_MODE_PWM|OC_TIMER_2);
	//ocSetConfig(OC_4,OC_MODE_PWM|OC_TIMER_2);
	//pwmSetPeriod(OC_2,1000);
	//pwmSetPeriod(OC_3,1000);
	//pwmSetPeriod(OC_4,1000);
	//ocStart(OC_2);
	//ocStart(OC_3);
	//ocStart(OC_4);

	softCntTestID = softCntInit(softCntTestPeriod, &softCntTestFlag, 0xFF, SOFT_CNT_RELOAD_EN+SOFT_CNT_TARGET_EN);
	softCntStart(softCntTestID);

	//SPI test

	//nrfInit(COM0_SPI_ID, &LATA, COM0_IO2);

	/*
	COM0ControlTransaction.pSlave = pCOM0SlaveControl;
	COM0ControlTransaction.control.all = 0;
	COM0ControlTransaction.transferNb = 10;
	COM0ControlTransaction.txNbRemaining = 10;
	COM0ControlTransaction.rxNbDone = 0;
	COM0ControlTransaction.pTX = sourceArray;
	COM0ControlTransaction.pRX = checkArray;
	*/
	//spiStartTransaction(&COM0ControlTransaction);

	//testBufCtlPtr = rBufCreate(10, sizeof(U8));
	//if (uartInit(0,UART_TX_INT_TSR_EMPTY|UART_RX_INT_DATA_READY|UART_MODE_8N1,1250000) == STD_EC_SUCCESS)
	//	setPIN(LED_B);
	//* ------------------------------------ *//

	
	//* ----------- Loop forever ----------- *//
	for (;;)
	{
		// -- Software Counter -- //
		softCntEngine();
		// ---------------------- //

		// -- Real Time keeping -- //
		rtTimeEngine();
		// ----------------------- //

		// -- COM wing handling -- //
		comWingDetectionEngine();
		comWingEngine(COM_WING_0);
		comWingEngine(COM_WING_1);
		// ----------------------- //

		if (softCntTestFlag)
		{
			togglePIN(LED_R);
			softCntTestFlag = 0;
		}

		//Set COM Dir to TX and Set STAT LED
		setPIN(COM0_IO1);
		setPIN(COM0_IO2);

		/*
		if ((sysTick - ledSTRed) >= LED_R_SYSTICK_INTERVAL)
		{
			// -- Handle boundary -- //
			if (ledRed == 255)
				ledRedDir = 0;
			else if (ledRed == 0)
				ledRedDir = 1;
			// --------------------- //

			// -- Duty mouvement -- //
			if (ledRedDir)
				ledRed++;
			else
				ledRed--;
			// -------------------- //

			pwmSetDuty(OC_2,ledRed,0xFF);

			ledSTRed = sysTick;
		}

		if ((sysTick - ledSTGreen) >= LED_G_SYSTICK_INTERVAL)
		{
			// -- Handle boundary -- //
			if (ledGreen == 255)
				ledGreenDir = 0;
			else if (ledGreen == 0)
				ledGreenDir = 1;
			// --------------------- //

			// -- Duty mouvement -- //
			if (ledGreenDir)
				ledGreen++;
			else
				ledGreen--;
			// -------------------- //

			pwmSetDuty(OC_3,ledGreen,0xFF);

			ledSTGreen = sysTick;
		}

		if ((sysTick - ledSTBlue) >= LED_B_SYSTICK_INTERVAL)
		{
			// -- Handle boundary -- //
			if (ledBlue == 255)
				ledBlueDir = 0;
			else if (ledBlue == 0)
				ledBlueDir = 1;
			// --------------------- //

			// -- Duty mouvement -- //
			if (ledBlueDir)
				ledBlue++;
			else
				ledBlue--;
			// -------------------- //

			pwmSetDuty(OC_4,ledBlue,0xFF);

			ledSTBlue = sysTick;

			
		}
		*/
	}
	//* ------------------------------------ *//
}
// ############################################## //


// ################ Sub-routine ################# //
/**
* \fn		U8 uOpioidInit(void)
* @brief	Initialise the µOpioid node to the default state
* @note		
* @arg		nothing
* @return	U8 errorCode		STD Error Code (return STD_EC_SUCCESS if successful)
*/
U8 opioidInit(void)
{
	U8 errorCode = STD_EC_SUCCESS;

	// ====== µC Initialisation ====== //
	// Reset the Port
	LATA = BTN|OW_BUS;						//Button is active low and OW bus idle to HIGH
	LATB = 0;
	LATC = 0;
	LATD = LED_B|LED_R|LED_G|COM1_TX;				//LEDS are active low, TX idle to HIGH
	LATE = 0;
	LATF = COM0_TX;							//TX idle to HIGH
	LATG = EXT0_TX|EXT1_TX;						//TX idle to HIGH

	// -- Set the IO direction -- //
	TRISA = 0xFFFF;				
	TRISB = 0xFFFF ^ (COM1_IO0|COM1_IO1|COM1_IO2);			//COM1 IOs are output
	TRISC = 0xFFFF;
	TRISD = 0xFFFF ^ (LED_R|LED_G|LED_B|COM0_IO2|COM0_IO1|COM0_IO0|COM0_MOSI|COM0_SCK|COM1_TX);	//LEDs are output, COM0 IOs are output, COM0 MOSI and SCK are output, COM1 TX is output
	TRISE = 0xFFFF;
	TRISF = 0xFFFF ^ (COM0_TX|COM1_MOSI|COM1_SCK);			//COM0 TX is output, COM1 MOSI and SCK are output
	TRISG = 0xFFFF ^ (EXT0_TX|EXT1_TX);				//EXTs TX are output
	// -------------------------- //
	
	// -- Init the Interrupts -- //
	INTEnableSystemMultiVectoredInt();

	intFastSetPriority(EXT0_IRQ_INT_ID, 3);
	intSetExternalEdge(EXT0_IRQ_INT_IRQ, RISING);			//EXT0 IRQ0 is Rising edge by default
	intFastSetPriority(EXT0_UART_INT_ID, 4);
	intFastSetPriority(BTN_INT_ID, 1);
	intSetExternalEdge(BTN_INT_IRQ, FALLING);			//BTN Falling edge trigger
	intFastInit(BTN_INT_ID);

	intFastEnableGlobal();
	// ------------------------- //

	// -- Init the ADC -- //
	adcSetInput(VIN_SENSE_AN_MUX+COM0_ID_AN_MUX+COM1_ID_AN_MUX);
	errorCode = adcSetSampleRate(ADC_1,100000);
	if (errorCode != STD_EC_SUCCESS)
		return errorCode;
	errorCode = adcInit(ADC_1);
	if (errorCode != STD_EC_SUCCESS)
		return errorCode;
	errorCode = adcCalibrate(ADC_1);
	if (errorCode != STD_EC_SUCCESS)
		return errorCode;
	intFastSetPriority(INT_ADC_1, 2);
	intFastInit(INT_ADC_1);
	// ------------------ //

	// -- Init the realTime system -- //
	errorCode = realTimeInit(OPIUM_SYSTICK_VALUE);
	if (errorCode != STD_EC_SUCCESS)
		return errorCode;
	// ------------------------------ //
	// =============================== //


	// ====== External Initialization ====== //
	// -- COM0 Initialisation -- //
	//Init the COM SPI
	spiSetConfig(COM0_SPI_ID,SPI_MODE_MASTER|SPI_ENHANCED_BUF|SPI_TX_BUF_INT_BUF_EMPTY|SPI_RX_BUF_INT_BUF_HALF_FULL);
	spiSetBaudRate(COM0_SPI_ID,5000000);
	spiStart(COM0_SPI_ID);
	// ------------------------- //

	// -- COM1 Initialisation -- //
	//Init the COM SPI
	spiSetConfig(COM1_SPI_ID,SPI_MODE_MASTER|SPI_ENHANCED_BUF|SPI_TX_BUF_INT_BUF_EMPTY|SPI_RX_BUF_INT_BUF_HALF_FULL);
	spiSetBaudRate(COM0_SPI_ID,5000000);
	spiStart(COM0_SPI_ID);
	// ------------------------- //


	// -- EXT0 Initialisation -- //
	//Init the EXT Uart

	// ------------------------- //

	// -- EXT1 Initialisation -- //
	//Init the EXT Uart

	// ------------------------- //
	// ===================================== //
	
	return errorCode;
}
// ############################################## //


// ################# Interrupt ################## //
//* ==== COM WING 0 ==== *//
// UART
void __ISR(COM0_UART_VECTOR, IPL5SOFT) com0uartISR(void)
{
	extern tRBufCtl * uartRxBuf[];
	extern tRBufCtl * uartTxBuf[];

	U32 interruptCheck = intFastCheckFlag(INT_UART_1);			//Fetch the all the flags for UART_1
	U16 byteNb;
	U8 tempBuf[8];
	togglePIN(LED_R);

	// === RX Interrupt ==== //
	if (interruptCheck & INT_MASK_UART_RX)
	{
		// -- Empty the buffer -- //
		while (U1STAbits.URXDA)
		{
			// Discard if error detected
			if (U1STA & (UART_MASK_PERR|UART_MASK_FERR))
				U1RXREG;
			//Save if the data is valid
			else
				tempBuf[byteNb] = U1RXREG;

			byteNb++;
		}
		// ---------------------- //

		// -- Save to the buffer -- //
		rBufPushU8(uartRxBuf[UART_1], (void*)tempBuf, byteNb, RBUF_FREERUN_PTR);	//Can loose data if the buffer is full
		// ------------------------ //

		intFastClearFlag(INT_UART_1_RX);
	}
	// ===================== //

	// === TX Interrupt ==== //
	if (interruptCheck & INT_MASK_UART_TX)
	{
		//Check for pending data
		byteNb = rBufGetUsedSpace(uartTxBuf[UART_1]);

		// -- No more byte to send --- //
		if (!byteNb)
			clearBIT(U1STA,UTXEN_MASK);		//Stop the transmitter
		// -- Send the pending data -- //
		else
		{
			if (byteNb > UART_FIFO_LVL)			//If there is more byte that the HW buffer can
				byteNb = UART_FIFO_LVL;			//contain, load the maximum

			//Pull the correct number of byte from the soft buffer into the HW buffer
			rBufPullU8(uartTxBuf[UART_1], (void*)&U1TXREG, byteNb, RBUF_FIXED_PTR);
		}
		// --------------------------- //

		intFastClearFlag(INT_UART_1_TX);
	}
	// ===================== //

	// === ERR Interrupt === //
	if (interruptCheck & INT_MASK_UART_ERR)
	{
		// -- Overrun Error -- //
		if (U1STAbits.OERR)
		{
			//Read all the HW buffer

			//Clear the error flag
		}
		// -- Framing Error -- //
		else if (U1STAbits.FERR)
		{
			//Clear the error flag
		}
		else
		// -- Parity Error --- //
		{
			//Clear the error flag
		}
		// ------------------- //

		intFastClearFlag(INT_UART_1_ERR);
	}
	// ===================== //
}

// SPI
void __ISR(COM0_SPI_VECTOR, IPL5SOFT) com0spiISR(void)
{
	spiMasterISR(COM0_SPI_ID,intFastCheckFlag(COM0_SPI_INT_ID));

	intFastClearFlag(COM0_SPI_INT_ID);
}

// Timer
void __ISR(COM0_TIMER_VECTOR, IPL5SOFT) com0timerISR(void)
{

	intFastClearFlag(COM0_TIMER_INT_ID);
}

// IRQ pin 0 and 1 for COM 0 and 1
void __ISR(COM0_IRQ0_VECTOR, IPL6SOFT) com0irq0ISR(void)
{

	intFastClearFlag(COM0_IRQ0_INT_ID);
}

//* ==== COM WING 1 ==== *//
// UART
void __ISR(COM1_UART_VECTOR, IPL5SOFT) com1uartISR(void)			//TODOOOOOO!!!!!
{
	extern tRBufCtl * uartRxBuf[];
	extern tRBufCtl * uartTxBuf[];

	U32 interruptCheck = intFastCheckFlag(INT_UART_1);			//Fetch the all the flags for UART_1
	U16 byteNb;
	U8 tempBuf[8];
	togglePIN(LED_R);

	// === RX Interrupt ==== //
	if (interruptCheck & INT_MASK_UART_RX)
	{
		// -- Empty the buffer -- //
		while (U1STAbits.URXDA)
		{
			// Discard if error detected
			if (U1STA & (UART_MASK_PERR|UART_MASK_FERR))
				U1RXREG;
			//Save if the data is valid
			else
				tempBuf[byteNb] = U1RXREG;

			byteNb++;
		}
		// ---------------------- //

		// -- Save to the buffer -- //
		rBufPushU8(uartRxBuf[UART_1], (void*)tempBuf, byteNb, RBUF_FREERUN_PTR);	//Can loose data if the buffer is full
		// ------------------------ //

		intFastClearFlag(INT_UART_1_RX);
	}
	// ===================== //

	// === TX Interrupt ==== //
	if (interruptCheck & INT_MASK_UART_TX)
	{
		//Check for pending data
		byteNb = rBufGetUsedSpace(uartTxBuf[UART_1]);

		// -- No more byte to send --- //
		if (!byteNb)
			clearBIT(U1STA,UTXEN_MASK);		//Stop the transmitter
		// -- Send the pending data -- //
		else
		{
			if (byteNb > UART_FIFO_LVL)			//If there is more byte that the HW buffer can
				byteNb = UART_FIFO_LVL;			//contain, load the maximum

			//Pull the correct number of byte from the soft buffer into the HW buffer
			rBufPullU8(uartTxBuf[UART_1], (void*)&U1TXREG, byteNb, RBUF_FIXED_PTR);
		}
		// --------------------------- //

		intFastClearFlag(INT_UART_1_TX);
	}
	// ===================== //

	// === ERR Interrupt === //
	if (interruptCheck & INT_MASK_UART_ERR)
	{
		// -- Overrun Error -- //
		if (U1STAbits.OERR)
		{
			//Read all the HW buffer

			//Clear the error flag
		}
		// -- Framing Error -- //
		else if (U1STAbits.FERR)
		{
			//Clear the error flag
		}
		else
		// -- Parity Error --- //
		{
			//Clear the error flag
		}
		// ------------------- //

		intFastClearFlag(INT_UART_1_ERR);
	}
	// ===================== //
}

// SPI
void __ISR(COM1_SPI_VECTOR, IPL5SOFT) com1spiISR(void)
{
	spiMasterISR(COM1_SPI_ID,intFastCheckFlag(COM1_SPI_INT_ID));

	intFastClearFlag(COM1_SPI_INT_ID);
}

// Timer
void __ISR(COM1_TIMER_VECTOR, IPL5SOFT) com1timerISR(void)
{

	intFastClearFlag(COM1_TIMER_INT_ID);
}

//* ==== EXT WING 0 ==== *//
// UART
void __ISR(EXT0_UART_VECTOR, IPL4SOFT) ext0uartISR(void)
{

	intFastClearFlag(EXT0_UART_INT_ID);
}

// IRQ pin
void __ISR(EXT0_IRQ_VECTOR, IPL3SOFT) ext0irqISR(void)
{

	intFastClearFlag(EXT0_IRQ_INT_ID);
}

//* ==== EXT WING 1 ==== *//
// UART
void __ISR(EXT1_UART_VECTOR, IPL4SOFT) ext1uartISR(void)
{

	intFastClearFlag(EXT1_UART_INT_ID);
}

// IRQ pin
void __ISR(EXT1_IRQ_VECTOR, IPL3SOFT) ext1irqISR(void)
{

	intFastClearFlag(EXT1_IRQ_INT_ID);
}

//* ==== SYSTEM ======== *//
// Button
void __ISR(BTN_VECTOR, IPL1SOFT) btnISR(void)
{
	//spiStartTransaction(&COM0ControlTransaction);
	softCntUpdatePeriod(softCntTestID, softCntTestPeriod += 100);

	// clear the interrupt flag
	intFastClearFlag(BTN_INT_ID);
}

// ADC 1
void __ISR(INT_VEC_ADC_1, IPL2SOFT) adc1ISR(void)
{
	adcISR(ADC_1);

	intFastClearFlag(INT_ADC_1);
}

// Real Time System
void __ISR(RT_TIMER_VECTOR, IPL7SOFT) rtTimerISR(void)
{
	rtISR();

	intFastClearFlag(RT_TIMER_INT_ID);
}
//* ==================== *//
// ############################################## //
