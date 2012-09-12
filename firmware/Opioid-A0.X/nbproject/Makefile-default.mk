#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Opioid-A0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Opioid-A0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o ${OBJECTDIR}/_ext/704692979/op_general.o ${OBJECTDIR}/_ext/704692979/op_link_layer.o ${OBJECTDIR}/_ext/704692979/op_network_layer.o ${OBJECTDIR}/_ext/704692979/op_presentation_layer.o ${OBJECTDIR}/_ext/704692979/op_session_layer.o ${OBJECTDIR}/_ext/704692979/op_link_rs-485.o ${OBJECTDIR}/_ext/618025088/pic32_clock.o ${OBJECTDIR}/_ext/618025088/pic32_interrupt.o ${OBJECTDIR}/_ext/618025088/pic32_output_compare.o ${OBJECTDIR}/_ext/618025088/pic32_spi.o ${OBJECTDIR}/_ext/618025088/pic32_timer.o ${OBJECTDIR}/_ext/618025088/pic32_uart.o ${OBJECTDIR}/_ext/782569170/pic32_realtime.o ${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o ${OBJECTDIR}/_ext/618025088/pic32_adc.o ${OBJECTDIR}/_ext/1472/Opioid-A0.o ${OBJECTDIR}/_ext/1472/hardware.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o.d ${OBJECTDIR}/_ext/704692979/op_general.o.d ${OBJECTDIR}/_ext/704692979/op_link_layer.o.d ${OBJECTDIR}/_ext/704692979/op_network_layer.o.d ${OBJECTDIR}/_ext/704692979/op_presentation_layer.o.d ${OBJECTDIR}/_ext/704692979/op_session_layer.o.d ${OBJECTDIR}/_ext/704692979/op_link_rs-485.o.d ${OBJECTDIR}/_ext/618025088/pic32_clock.o.d ${OBJECTDIR}/_ext/618025088/pic32_interrupt.o.d ${OBJECTDIR}/_ext/618025088/pic32_output_compare.o.d ${OBJECTDIR}/_ext/618025088/pic32_spi.o.d ${OBJECTDIR}/_ext/618025088/pic32_timer.o.d ${OBJECTDIR}/_ext/618025088/pic32_uart.o.d ${OBJECTDIR}/_ext/782569170/pic32_realtime.o.d ${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o.d ${OBJECTDIR}/_ext/618025088/pic32_adc.o.d ${OBJECTDIR}/_ext/1472/Opioid-A0.o.d ${OBJECTDIR}/_ext/1472/hardware.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o ${OBJECTDIR}/_ext/704692979/op_general.o ${OBJECTDIR}/_ext/704692979/op_link_layer.o ${OBJECTDIR}/_ext/704692979/op_network_layer.o ${OBJECTDIR}/_ext/704692979/op_presentation_layer.o ${OBJECTDIR}/_ext/704692979/op_session_layer.o ${OBJECTDIR}/_ext/704692979/op_link_rs-485.o ${OBJECTDIR}/_ext/618025088/pic32_clock.o ${OBJECTDIR}/_ext/618025088/pic32_interrupt.o ${OBJECTDIR}/_ext/618025088/pic32_output_compare.o ${OBJECTDIR}/_ext/618025088/pic32_spi.o ${OBJECTDIR}/_ext/618025088/pic32_timer.o ${OBJECTDIR}/_ext/618025088/pic32_uart.o ${OBJECTDIR}/_ext/782569170/pic32_realtime.o ${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o ${OBJECTDIR}/_ext/618025088/pic32_adc.o ${OBJECTDIR}/_ext/1472/Opioid-A0.o ${OBJECTDIR}/_ext/1472/hardware.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Opioid-A0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX575F256L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o: ../../../../../../Dev/PIClib/lib/device/pic32_nrf24l01+.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867898790 
	@${RM} ${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o.d" -o ${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o ../../../../../../Dev/PIClib/lib/device/pic32_nrf24l01+.c  
	
${OBJECTDIR}/_ext/704692979/op_general.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_general.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_general.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_general.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_general.o.d" -o ${OBJECTDIR}/_ext/704692979/op_general.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_general.c  
	
${OBJECTDIR}/_ext/704692979/op_link_layer.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_link_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_link_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_link_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_link_layer.o.d" -o ${OBJECTDIR}/_ext/704692979/op_link_layer.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_link_layer.c  
	
${OBJECTDIR}/_ext/704692979/op_network_layer.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_network_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_network_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_network_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_network_layer.o.d" -o ${OBJECTDIR}/_ext/704692979/op_network_layer.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_network_layer.c  
	
${OBJECTDIR}/_ext/704692979/op_presentation_layer.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_presentation_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_presentation_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_presentation_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_presentation_layer.o.d" -o ${OBJECTDIR}/_ext/704692979/op_presentation_layer.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_presentation_layer.c  
	
${OBJECTDIR}/_ext/704692979/op_session_layer.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_session_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_session_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_session_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_session_layer.o.d" -o ${OBJECTDIR}/_ext/704692979/op_session_layer.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_session_layer.c  
	
${OBJECTDIR}/_ext/704692979/op_link_rs-485.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_link_rs-485.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_link_rs-485.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_link_rs-485.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_link_rs-485.o.d" -o ${OBJECTDIR}/_ext/704692979/op_link_rs-485.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_link_rs-485.c  
	
${OBJECTDIR}/_ext/618025088/pic32_clock.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_clock.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_clock.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_clock.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_clock.c  
	
${OBJECTDIR}/_ext/618025088/pic32_interrupt.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_interrupt.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_interrupt.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_interrupt.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_interrupt.c  
	
${OBJECTDIR}/_ext/618025088/pic32_output_compare.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_output_compare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_output_compare.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_output_compare.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_output_compare.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_output_compare.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_output_compare.c  
	
${OBJECTDIR}/_ext/618025088/pic32_spi.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_spi.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_spi.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_spi.c  
	
${OBJECTDIR}/_ext/618025088/pic32_timer.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_timer.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_timer.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_timer.c  
	
${OBJECTDIR}/_ext/618025088/pic32_uart.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_uart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_uart.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_uart.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_uart.c  
	
${OBJECTDIR}/_ext/782569170/pic32_realtime.o: ../../../../../../Dev/PIClib/lib/soft/pic32_realtime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/782569170 
	@${RM} ${OBJECTDIR}/_ext/782569170/pic32_realtime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/782569170/pic32_realtime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/782569170/pic32_realtime.o.d" -o ${OBJECTDIR}/_ext/782569170/pic32_realtime.o ../../../../../../Dev/PIClib/lib/soft/pic32_realtime.c  
	
${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o: ../../../../../../Dev/PIClib/lib/soft/pic32_ringBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/782569170 
	@${RM} ${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o.d" -o ${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o ../../../../../../Dev/PIClib/lib/soft/pic32_ringBuffer.c  
	
${OBJECTDIR}/_ext/618025088/pic32_adc.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_adc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_adc.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_adc.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_adc.c  
	
${OBJECTDIR}/_ext/1472/Opioid-A0.o: ../Opioid-A0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Opioid-A0.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Opioid-A0.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/Opioid-A0.o.d" -o ${OBJECTDIR}/_ext/1472/Opioid-A0.o ../Opioid-A0.c  
	
${OBJECTDIR}/_ext/1472/hardware.o: ../hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hardware.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/hardware.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/hardware.o.d" -o ${OBJECTDIR}/_ext/1472/hardware.o ../hardware.c  
	
else
${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o: ../../../../../../Dev/PIClib/lib/device/pic32_nrf24l01+.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867898790 
	@${RM} ${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o.d" -o ${OBJECTDIR}/_ext/867898790/pic32_nrf24l01+.o ../../../../../../Dev/PIClib/lib/device/pic32_nrf24l01+.c  
	
${OBJECTDIR}/_ext/704692979/op_general.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_general.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_general.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_general.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_general.o.d" -o ${OBJECTDIR}/_ext/704692979/op_general.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_general.c  
	
${OBJECTDIR}/_ext/704692979/op_link_layer.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_link_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_link_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_link_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_link_layer.o.d" -o ${OBJECTDIR}/_ext/704692979/op_link_layer.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_link_layer.c  
	
${OBJECTDIR}/_ext/704692979/op_network_layer.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_network_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_network_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_network_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_network_layer.o.d" -o ${OBJECTDIR}/_ext/704692979/op_network_layer.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_network_layer.c  
	
${OBJECTDIR}/_ext/704692979/op_presentation_layer.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_presentation_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_presentation_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_presentation_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_presentation_layer.o.d" -o ${OBJECTDIR}/_ext/704692979/op_presentation_layer.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_presentation_layer.c  
	
${OBJECTDIR}/_ext/704692979/op_session_layer.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_session_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_session_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_session_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_session_layer.o.d" -o ${OBJECTDIR}/_ext/704692979/op_session_layer.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_session_layer.c  
	
${OBJECTDIR}/_ext/704692979/op_link_rs-485.o: ../../../../../../Dev/PIClib/lib/protocol/opium/op_link_rs-485.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/704692979 
	@${RM} ${OBJECTDIR}/_ext/704692979/op_link_rs-485.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704692979/op_link_rs-485.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/704692979/op_link_rs-485.o.d" -o ${OBJECTDIR}/_ext/704692979/op_link_rs-485.o ../../../../../../Dev/PIClib/lib/protocol/opium/op_link_rs-485.c  
	
${OBJECTDIR}/_ext/618025088/pic32_clock.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_clock.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_clock.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_clock.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_clock.c  
	
${OBJECTDIR}/_ext/618025088/pic32_interrupt.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_interrupt.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_interrupt.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_interrupt.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_interrupt.c  
	
${OBJECTDIR}/_ext/618025088/pic32_output_compare.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_output_compare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_output_compare.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_output_compare.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_output_compare.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_output_compare.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_output_compare.c  
	
${OBJECTDIR}/_ext/618025088/pic32_spi.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_spi.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_spi.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_spi.c  
	
${OBJECTDIR}/_ext/618025088/pic32_timer.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_timer.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_timer.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_timer.c  
	
${OBJECTDIR}/_ext/618025088/pic32_uart.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_uart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_uart.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_uart.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_uart.c  
	
${OBJECTDIR}/_ext/782569170/pic32_realtime.o: ../../../../../../Dev/PIClib/lib/soft/pic32_realtime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/782569170 
	@${RM} ${OBJECTDIR}/_ext/782569170/pic32_realtime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/782569170/pic32_realtime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/782569170/pic32_realtime.o.d" -o ${OBJECTDIR}/_ext/782569170/pic32_realtime.o ../../../../../../Dev/PIClib/lib/soft/pic32_realtime.c  
	
${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o: ../../../../../../Dev/PIClib/lib/soft/pic32_ringBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/782569170 
	@${RM} ${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o.d" -o ${OBJECTDIR}/_ext/782569170/pic32_ringBuffer.o ../../../../../../Dev/PIClib/lib/soft/pic32_ringBuffer.c  
	
${OBJECTDIR}/_ext/618025088/pic32_adc.o: ../../../../../../Dev/PIClib/lib/peripheral/pic32_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/618025088 
	@${RM} ${OBJECTDIR}/_ext/618025088/pic32_adc.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/618025088/pic32_adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/618025088/pic32_adc.o.d" -o ${OBJECTDIR}/_ext/618025088/pic32_adc.o ../../../../../../Dev/PIClib/lib/peripheral/pic32_adc.c  
	
${OBJECTDIR}/_ext/1472/Opioid-A0.o: ../Opioid-A0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Opioid-A0.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Opioid-A0.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/Opioid-A0.o.d" -o ${OBJECTDIR}/_ext/1472/Opioid-A0.o ../Opioid-A0.c  
	
${OBJECTDIR}/_ext/1472/hardware.o: ../hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hardware.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/hardware.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"E:/Dropbox/Electro/Dev/PIClib/lib" -I"E:/Dropbox/Electro/Dev/PIClib/header" -I"../" -I"D:/Dropbox/Electro/Dev/PIClib/header" -I"D:/Dropbox/Electro/Dev/PIClib/lib" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/hardware.o.d" -o ${OBJECTDIR}/_ext/1472/hardware.o ../hardware.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Opioid-A0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION) -O3 -mips16 -o dist/${CND_CONF}/${IMAGE_TYPE}/Opioid-A0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=8192,--defsym=_min_stack_size=1024,--report-mem 
else
dist/${CND_CONF}/${IMAGE_TYPE}/Opioid-A0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O3 -mips16 -o dist/${CND_CONF}/${IMAGE_TYPE}/Opioid-A0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8192,--defsym=_min_stack_size=1024,--report-mem
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Opioid-A0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
