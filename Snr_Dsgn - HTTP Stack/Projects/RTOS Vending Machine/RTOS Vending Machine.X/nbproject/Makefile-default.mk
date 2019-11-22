#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOS_Vending_Machine.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOS_Vending_Machine.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../FreeRTOS/Source/event_groups.c ../../../FreeRTOS/Source/list.c ../../../FreeRTOS/Source/queue.c ../../../FreeRTOS/Source/tasks.c ../../../FreeRTOS/Source/portable/MemMang/heap_4.c ../ETHPIC32ExtPhy.c ../ETHPIC32ExtPhySMSC8720.c "../Vending Machine/ARP.c" "../Vending Machine/CustomHTTPApp.c" "../Vending Machine/Delay.c" "../Vending Machine/DNS.c" "../Vending Machine/Helpers.c" "../Vending Machine/HTTP2.c" "../Vending Machine/ICMP.c" "../Vending Machine/IP.c" "../Vending Machine/MPFS2.c" "../Vending Machine/MPFSImg2.c" "../Vending Machine/SNTP.c" "../Vending Machine/StackTsk.c" "../Vending Machine/TCP.c" "../Vending Machine/Tick.c" "../Vending Machine/UDP.c" "../Vending Machine/ETHPIC32IntMac.c" "../Vending Machine/LCDBlocking.c" ../chipKIT_PRO_MX7.c ../main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1599763551/port.o ${OBJECTDIR}/_ext/1599763551/port_asm.o ${OBJECTDIR}/_ext/190470153/event_groups.o ${OBJECTDIR}/_ext/190470153/list.o ${OBJECTDIR}/_ext/190470153/queue.o ${OBJECTDIR}/_ext/190470153/tasks.o ${OBJECTDIR}/_ext/636803636/heap_4.o ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o ${OBJECTDIR}/_ext/1172304309/ARP.o ${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o ${OBJECTDIR}/_ext/1172304309/Delay.o ${OBJECTDIR}/_ext/1172304309/DNS.o ${OBJECTDIR}/_ext/1172304309/Helpers.o ${OBJECTDIR}/_ext/1172304309/HTTP2.o ${OBJECTDIR}/_ext/1172304309/ICMP.o ${OBJECTDIR}/_ext/1172304309/IP.o ${OBJECTDIR}/_ext/1172304309/MPFS2.o ${OBJECTDIR}/_ext/1172304309/MPFSImg2.o ${OBJECTDIR}/_ext/1172304309/SNTP.o ${OBJECTDIR}/_ext/1172304309/StackTsk.o ${OBJECTDIR}/_ext/1172304309/TCP.o ${OBJECTDIR}/_ext/1172304309/Tick.o ${OBJECTDIR}/_ext/1172304309/UDP.o ${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/1172304309/LCDBlocking.o ${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o ${OBJECTDIR}/_ext/1472/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1599763551/port.o.d ${OBJECTDIR}/_ext/1599763551/port_asm.o.d ${OBJECTDIR}/_ext/190470153/event_groups.o.d ${OBJECTDIR}/_ext/190470153/list.o.d ${OBJECTDIR}/_ext/190470153/queue.o.d ${OBJECTDIR}/_ext/190470153/tasks.o.d ${OBJECTDIR}/_ext/636803636/heap_4.o.d ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o.d ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o.d ${OBJECTDIR}/_ext/1172304309/ARP.o.d ${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1172304309/Delay.o.d ${OBJECTDIR}/_ext/1172304309/DNS.o.d ${OBJECTDIR}/_ext/1172304309/Helpers.o.d ${OBJECTDIR}/_ext/1172304309/HTTP2.o.d ${OBJECTDIR}/_ext/1172304309/ICMP.o.d ${OBJECTDIR}/_ext/1172304309/IP.o.d ${OBJECTDIR}/_ext/1172304309/MPFS2.o.d ${OBJECTDIR}/_ext/1172304309/MPFSImg2.o.d ${OBJECTDIR}/_ext/1172304309/SNTP.o.d ${OBJECTDIR}/_ext/1172304309/StackTsk.o.d ${OBJECTDIR}/_ext/1172304309/TCP.o.d ${OBJECTDIR}/_ext/1172304309/Tick.o.d ${OBJECTDIR}/_ext/1172304309/UDP.o.d ${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o.d ${OBJECTDIR}/_ext/1172304309/LCDBlocking.o.d ${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o.d ${OBJECTDIR}/_ext/1472/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1599763551/port.o ${OBJECTDIR}/_ext/1599763551/port_asm.o ${OBJECTDIR}/_ext/190470153/event_groups.o ${OBJECTDIR}/_ext/190470153/list.o ${OBJECTDIR}/_ext/190470153/queue.o ${OBJECTDIR}/_ext/190470153/tasks.o ${OBJECTDIR}/_ext/636803636/heap_4.o ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o ${OBJECTDIR}/_ext/1172304309/ARP.o ${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o ${OBJECTDIR}/_ext/1172304309/Delay.o ${OBJECTDIR}/_ext/1172304309/DNS.o ${OBJECTDIR}/_ext/1172304309/Helpers.o ${OBJECTDIR}/_ext/1172304309/HTTP2.o ${OBJECTDIR}/_ext/1172304309/ICMP.o ${OBJECTDIR}/_ext/1172304309/IP.o ${OBJECTDIR}/_ext/1172304309/MPFS2.o ${OBJECTDIR}/_ext/1172304309/MPFSImg2.o ${OBJECTDIR}/_ext/1172304309/SNTP.o ${OBJECTDIR}/_ext/1172304309/StackTsk.o ${OBJECTDIR}/_ext/1172304309/TCP.o ${OBJECTDIR}/_ext/1172304309/Tick.o ${OBJECTDIR}/_ext/1172304309/UDP.o ${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/1172304309/LCDBlocking.o ${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o ${OBJECTDIR}/_ext/1472/main.o

# Source Files
SOURCEFILES=../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../FreeRTOS/Source/event_groups.c ../../../FreeRTOS/Source/list.c ../../../FreeRTOS/Source/queue.c ../../../FreeRTOS/Source/tasks.c ../../../FreeRTOS/Source/portable/MemMang/heap_4.c ../ETHPIC32ExtPhy.c ../ETHPIC32ExtPhySMSC8720.c ../Vending Machine/ARP.c ../Vending Machine/CustomHTTPApp.c ../Vending Machine/Delay.c ../Vending Machine/DNS.c ../Vending Machine/Helpers.c ../Vending Machine/HTTP2.c ../Vending Machine/ICMP.c ../Vending Machine/IP.c ../Vending Machine/MPFS2.c ../Vending Machine/MPFSImg2.c ../Vending Machine/SNTP.c ../Vending Machine/StackTsk.c ../Vending Machine/TCP.c ../Vending Machine/Tick.c ../Vending Machine/UDP.c ../Vending Machine/ETHPIC32IntMac.c ../Vending Machine/LCDBlocking.c ../chipKIT_PRO_MX7.c ../main.c


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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/RTOS_Vending_Machine.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1599763551/port_asm.o: ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1599763551" 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port_asm.o.ok ${OBJECTDIR}/_ext/1599763551/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1599763551/port_asm.o.d" "${OBJECTDIR}/_ext/1599763551/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1599763551/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1599763551/port_asm.o ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1599763551/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../"
	
else
${OBJECTDIR}/_ext/1599763551/port_asm.o: ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1599763551" 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port_asm.o.ok ${OBJECTDIR}/_ext/1599763551/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1599763551/port_asm.o.d" "${OBJECTDIR}/_ext/1599763551/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1599763551/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1599763551/port_asm.o ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1599763551/port_asm.o.asm.d",--gdwarf-2,-I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1599763551/port.o: ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1599763551" 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1599763551/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1599763551/port.o.d" -o ${OBJECTDIR}/_ext/1599763551/port.o ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/190470153/event_groups.o: ../../../FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/190470153" 
	@${RM} ${OBJECTDIR}/_ext/190470153/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/190470153/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/190470153/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/190470153/event_groups.o.d" -o ${OBJECTDIR}/_ext/190470153/event_groups.o ../../../FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/190470153/list.o: ../../../FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/190470153" 
	@${RM} ${OBJECTDIR}/_ext/190470153/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/190470153/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/190470153/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/190470153/list.o.d" -o ${OBJECTDIR}/_ext/190470153/list.o ../../../FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/190470153/queue.o: ../../../FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/190470153" 
	@${RM} ${OBJECTDIR}/_ext/190470153/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/190470153/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/190470153/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/190470153/queue.o.d" -o ${OBJECTDIR}/_ext/190470153/queue.o ../../../FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/190470153/tasks.o: ../../../FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/190470153" 
	@${RM} ${OBJECTDIR}/_ext/190470153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/190470153/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/190470153/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/190470153/tasks.o.d" -o ${OBJECTDIR}/_ext/190470153/tasks.o ../../../FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/636803636/heap_4.o: ../../../FreeRTOS/Source/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/636803636" 
	@${RM} ${OBJECTDIR}/_ext/636803636/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/636803636/heap_4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/636803636/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/636803636/heap_4.o.d" -o ${OBJECTDIR}/_ext/636803636/heap_4.o ../../../FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o: ../ETHPIC32ExtPhy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o ../ETHPIC32ExtPhy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o: ../ETHPIC32ExtPhySMSC8720.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o.d" -o ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o ../ETHPIC32ExtPhySMSC8720.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/ARP.o: ../Vending\ Machine/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/ARP.o.d" -o ${OBJECTDIR}/_ext/1172304309/ARP.o "../Vending Machine/ARP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o: ../Vending\ Machine/CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o "../Vending Machine/CustomHTTPApp.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/Delay.o: ../Vending\ Machine/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/Delay.o.d" -o ${OBJECTDIR}/_ext/1172304309/Delay.o "../Vending Machine/Delay.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/DNS.o: ../Vending\ Machine/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/DNS.o.d" -o ${OBJECTDIR}/_ext/1172304309/DNS.o "../Vending Machine/DNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/Helpers.o: ../Vending\ Machine/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/Helpers.o.d" -o ${OBJECTDIR}/_ext/1172304309/Helpers.o "../Vending Machine/Helpers.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/HTTP2.o: ../Vending\ Machine/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1172304309/HTTP2.o "../Vending Machine/HTTP2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/ICMP.o: ../Vending\ Machine/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/ICMP.o.d" -o ${OBJECTDIR}/_ext/1172304309/ICMP.o "../Vending Machine/ICMP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/IP.o: ../Vending\ Machine/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/IP.o.d" -o ${OBJECTDIR}/_ext/1172304309/IP.o "../Vending Machine/IP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/MPFS2.o: ../Vending\ Machine/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1172304309/MPFS2.o "../Vending Machine/MPFS2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/MPFSImg2.o: ../Vending\ Machine/MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/MPFSImg2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/MPFSImg2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1172304309/MPFSImg2.o "../Vending Machine/MPFSImg2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/SNTP.o: ../Vending\ Machine/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/SNTP.o.d" -o ${OBJECTDIR}/_ext/1172304309/SNTP.o "../Vending Machine/SNTP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/StackTsk.o: ../Vending\ Machine/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1172304309/StackTsk.o "../Vending Machine/StackTsk.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/TCP.o: ../Vending\ Machine/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/TCP.o.d" -o ${OBJECTDIR}/_ext/1172304309/TCP.o "../Vending Machine/TCP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/Tick.o: ../Vending\ Machine/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/Tick.o.d" -o ${OBJECTDIR}/_ext/1172304309/Tick.o "../Vending Machine/Tick.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/UDP.o: ../Vending\ Machine/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/UDP.o.d" -o ${OBJECTDIR}/_ext/1172304309/UDP.o "../Vending Machine/UDP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o: ../Vending\ Machine/ETHPIC32IntMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o "../Vending Machine/ETHPIC32IntMac.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/LCDBlocking.o: ../Vending\ Machine/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1172304309/LCDBlocking.o "../Vending Machine/LCDBlocking.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o: ../chipKIT_PRO_MX7.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o.d" -o ${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o ../chipKIT_PRO_MX7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1599763551/port.o: ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1599763551" 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1599763551/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1599763551/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1599763551/port.o.d" -o ${OBJECTDIR}/_ext/1599763551/port.o ../../../FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/190470153/event_groups.o: ../../../FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/190470153" 
	@${RM} ${OBJECTDIR}/_ext/190470153/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/190470153/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/190470153/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/190470153/event_groups.o.d" -o ${OBJECTDIR}/_ext/190470153/event_groups.o ../../../FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/190470153/list.o: ../../../FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/190470153" 
	@${RM} ${OBJECTDIR}/_ext/190470153/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/190470153/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/190470153/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/190470153/list.o.d" -o ${OBJECTDIR}/_ext/190470153/list.o ../../../FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/190470153/queue.o: ../../../FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/190470153" 
	@${RM} ${OBJECTDIR}/_ext/190470153/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/190470153/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/190470153/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/190470153/queue.o.d" -o ${OBJECTDIR}/_ext/190470153/queue.o ../../../FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/190470153/tasks.o: ../../../FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/190470153" 
	@${RM} ${OBJECTDIR}/_ext/190470153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/190470153/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/190470153/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/190470153/tasks.o.d" -o ${OBJECTDIR}/_ext/190470153/tasks.o ../../../FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/636803636/heap_4.o: ../../../FreeRTOS/Source/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/636803636" 
	@${RM} ${OBJECTDIR}/_ext/636803636/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/636803636/heap_4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/636803636/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/636803636/heap_4.o.d" -o ${OBJECTDIR}/_ext/636803636/heap_4.o ../../../FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o: ../ETHPIC32ExtPhy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhy.o ../ETHPIC32ExtPhy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o: ../ETHPIC32ExtPhySMSC8720.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o.d" -o ${OBJECTDIR}/_ext/1472/ETHPIC32ExtPhySMSC8720.o ../ETHPIC32ExtPhySMSC8720.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/ARP.o: ../Vending\ Machine/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/ARP.o.d" -o ${OBJECTDIR}/_ext/1172304309/ARP.o "../Vending Machine/ARP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o: ../Vending\ Machine/CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1172304309/CustomHTTPApp.o "../Vending Machine/CustomHTTPApp.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/Delay.o: ../Vending\ Machine/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/Delay.o.d" -o ${OBJECTDIR}/_ext/1172304309/Delay.o "../Vending Machine/Delay.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/DNS.o: ../Vending\ Machine/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/DNS.o.d" -o ${OBJECTDIR}/_ext/1172304309/DNS.o "../Vending Machine/DNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/Helpers.o: ../Vending\ Machine/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/Helpers.o.d" -o ${OBJECTDIR}/_ext/1172304309/Helpers.o "../Vending Machine/Helpers.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/HTTP2.o: ../Vending\ Machine/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1172304309/HTTP2.o "../Vending Machine/HTTP2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/ICMP.o: ../Vending\ Machine/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/ICMP.o.d" -o ${OBJECTDIR}/_ext/1172304309/ICMP.o "../Vending Machine/ICMP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/IP.o: ../Vending\ Machine/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/IP.o.d" -o ${OBJECTDIR}/_ext/1172304309/IP.o "../Vending Machine/IP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/MPFS2.o: ../Vending\ Machine/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1172304309/MPFS2.o "../Vending Machine/MPFS2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/MPFSImg2.o: ../Vending\ Machine/MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/MPFSImg2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/MPFSImg2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1172304309/MPFSImg2.o "../Vending Machine/MPFSImg2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/SNTP.o: ../Vending\ Machine/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/SNTP.o.d" -o ${OBJECTDIR}/_ext/1172304309/SNTP.o "../Vending Machine/SNTP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/StackTsk.o: ../Vending\ Machine/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1172304309/StackTsk.o "../Vending Machine/StackTsk.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/TCP.o: ../Vending\ Machine/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/TCP.o.d" -o ${OBJECTDIR}/_ext/1172304309/TCP.o "../Vending Machine/TCP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/Tick.o: ../Vending\ Machine/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/Tick.o.d" -o ${OBJECTDIR}/_ext/1172304309/Tick.o "../Vending Machine/Tick.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/UDP.o: ../Vending\ Machine/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/UDP.o.d" -o ${OBJECTDIR}/_ext/1172304309/UDP.o "../Vending Machine/UDP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o: ../Vending\ Machine/ETHPIC32IntMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/1172304309/ETHPIC32IntMac.o "../Vending Machine/ETHPIC32IntMac.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1172304309/LCDBlocking.o: ../Vending\ Machine/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1172304309" 
	@${RM} ${OBJECTDIR}/_ext/1172304309/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1172304309/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1172304309/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1172304309/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1172304309/LCDBlocking.o "../Vending Machine/LCDBlocking.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o: ../chipKIT_PRO_MX7.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o.d" -o ${OBJECTDIR}/_ext/1472/chipKIT_PRO_MX7.o ../chipKIT_PRO_MX7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -D_SUPPRESS_PLIB_WARNING -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I"../" -I"../../../FreeRTOS/Source" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/BufferManagement" -I"../../../FreeRTOS/Source/portable/MemMang" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS/Source/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/portable/Compiler/GCC" -I"../../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../FreeRTOS-Plus/Source/FreeRTOS-Plus-TCP/include" -I"../Vending Machine" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/RTOS_Vending_Machine.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOS_Vending_Machine.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=16000,--defsym=_min_stack_size=2048,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/RTOS_Vending_Machine.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOS_Vending_Machine.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=16000,--defsym=_min_stack_size=2048,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/RTOS_Vending_Machine.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
