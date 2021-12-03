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
ifeq "$(wildcard nbproject/Makefile-local-pic32mzw1_curiosity.mk)" "nbproject/Makefile-local-pic32mzw1_curiosity.mk"
include nbproject/Makefile-local-pic32mzw1_curiosity.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mzw1_curiosity
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mzw1_curiosity/bsp/bsp.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c ../src/config/pic32mzw1_curiosity/initialization.c ../src/config/pic32mzw1_curiosity/interrupts.c ../src/config/pic32mzw1_curiosity/exceptions.c ../src/config/pic32mzw1_curiosity/usb_device_init_data.c ../src/config/pic32mzw1_curiosity/tasks.c ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c ../src/kitprotocol_parser/hal/hal_delay.c ../src/kitprotocol_parser/hal/hal_i2c_harmony.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../src/kitprotocol_parser/usb_hid/usb_hid.c ../src/kitprotocol_parser/utilities/crc/crc_engines.c ../src/kitprotocol_parser/kit_device_info.c ../src/kitprotocol_parser/kit_hal_interface.c ../src/kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c ../src/config/pic32mzw1_curiosity/pmu_init.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2003125425/bsp.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ${OBJECTDIR}/_ext/658096385/plib_clk.o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ${OBJECTDIR}/_ext/1163406548/sys_int.o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ${OBJECTDIR}/_ext/410602519/usb_device.o ${OBJECTDIR}/_ext/580221153/initialization.o ${OBJECTDIR}/_ext/580221153/interrupts.o ${OBJECTDIR}/_ext/580221153/exceptions.o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ${OBJECTDIR}/_ext/580221153/tasks.o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/182291534/hal_delay.o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ${OBJECTDIR}/_ext/611661181/usb_hid.o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/580221153/pmu_init.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2003125425/bsp.o.d ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/658096385/plib_clk.o.d ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d ${OBJECTDIR}/_ext/1163406548/sys_int.o.d ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d ${OBJECTDIR}/_ext/410602519/usb_device.o.d ${OBJECTDIR}/_ext/580221153/initialization.o.d ${OBJECTDIR}/_ext/580221153/interrupts.o.d ${OBJECTDIR}/_ext/580221153/exceptions.o.d ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d ${OBJECTDIR}/_ext/580221153/tasks.o.d ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d ${OBJECTDIR}/_ext/182291534/hal_delay.o.d ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d ${OBJECTDIR}/_ext/611661181/usb_hid.o.d ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/580221153/pmu_init.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2003125425/bsp.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ${OBJECTDIR}/_ext/658096385/plib_clk.o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ${OBJECTDIR}/_ext/1163406548/sys_int.o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ${OBJECTDIR}/_ext/410602519/usb_device.o ${OBJECTDIR}/_ext/580221153/initialization.o ${OBJECTDIR}/_ext/580221153/interrupts.o ${OBJECTDIR}/_ext/580221153/exceptions.o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ${OBJECTDIR}/_ext/580221153/tasks.o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/182291534/hal_delay.o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ${OBJECTDIR}/_ext/611661181/usb_hid.o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/580221153/pmu_init.o

# Source Files
SOURCEFILES=../src/config/pic32mzw1_curiosity/bsp/bsp.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c ../src/config/pic32mzw1_curiosity/initialization.c ../src/config/pic32mzw1_curiosity/interrupts.c ../src/config/pic32mzw1_curiosity/exceptions.c ../src/config/pic32mzw1_curiosity/usb_device_init_data.c ../src/config/pic32mzw1_curiosity/tasks.c ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c ../src/kitprotocol_parser/hal/hal_delay.c ../src/kitprotocol_parser/hal/hal_i2c_harmony.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../src/kitprotocol_parser/usb_hid/usb_hid.c ../src/kitprotocol_parser/utilities/crc/crc_engines.c ../src/kitprotocol_parser/kit_device_info.c ../src/kitprotocol_parser/kit_hal_interface.c ../src/kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c ../src/config/pic32mzw1_curiosity/pmu_init.c



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
	${MAKE}  -f nbproject/Makefile-pic32mzw1_curiosity.mk dist/${CND_CONF}/${IMAGE_TYPE}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1025W104132
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32mzw1_curiosity\p32MZ1025W104132.ld"
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
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/flags/pic32mzw1_curiosity/8385ef43ae19c42ab87016938b5bac2b8e23a994 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/flags/pic32mzw1_curiosity/43618f1dadc7264327825b95a8d164e17cf63c15 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/flags/pic32mzw1_curiosity/3185764d88d0f05da7eb5fcfa407fd4cfa54e1b .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1_curiosity/d9218f7e333ee9e349719c1a888ba0ed1930a883 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1_curiosity/7f55aa89bc3305607cdfce594410250341c952c8 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1_curiosity/5483c63f41b4064917bb1aba28a28459e875a9aa .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mzw1_curiosity/101042c0dcf0d0abc3bd7285a585fb388e688717 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/pic32mzw1_curiosity/f4eb6064098328081dc930010f025dc3031682aa .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1_curiosity/7287da93a4359c0033530cba4536f63b39199041 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1_curiosity/d562d459972320d81addabcf11d0e4163b9fecba .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1_curiosity/50cb68cd2481284979293e470b7560491729ac65 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/flags/pic32mzw1_curiosity/49cf925797f4b9250c989a36e3d042e84004da4a .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/flags/pic32mzw1_curiosity/71e06addd07a6f6c3f95d25e4a12b63721a24f03 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/flags/pic32mzw1_curiosity/1d8cbe42daa6ad9486a9e55c4cbf370351ad184 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/flags/pic32mzw1_curiosity/37e180a1143bfd098032e4af86499089e34ed5dc .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/flags/pic32mzw1_curiosity/d232cdc393f14919f6e7519d0656f88e4761fcbf .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/flags/pic32mzw1_curiosity/7848fb2131017b19d324d7cea10f90ab4375b947 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/flags/pic32mzw1_curiosity/e53f0f41c4f8802e302181aae2a70f5a3685ac8a .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/flags/pic32mzw1_curiosity/2c9ae6a149822a68cf7adf59e59dbf7753962711 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/flags/pic32mzw1_curiosity/2f6f3fb81504161d5709dca19c42d142374a8ef2 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/flags/pic32mzw1_curiosity/5e5e33104212921588bd6e2d7ea8ee535e5ac3d8 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/pic32mzw1_curiosity/914c22cddc4370eccbf41777720a6561e80ebc41 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/pic32mzw1_curiosity/48de574af4a7988c9ee10a98b0b4dfac7ada3aba .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/pic32mzw1_curiosity/bd630284e26af45deccf833bdf82ca5f2f29a0f3 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/pic32mzw1_curiosity/81e6c5c4754c84d80cd55804bc0ae79b8beda911 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/flags/pic32mzw1_curiosity/81e143ab671fe0fdf08160b828e19ab0a80603d5 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/pic32mzw1_curiosity/b600e3201a76472ec64876ccb36f637d306fb65e .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/flags/pic32mzw1_curiosity/e1b96fb6fe7a22c8aec4ae45f7c3349cba1f49a .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/pic32mzw1_curiosity/7fcc0f15f2e7e9fc041b284077b8deb45dce8f84 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/flags/pic32mzw1_curiosity/1d50fe2fc9e5e3d7f67e23e6d0108f13349f1969 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1_curiosity/158c4c409e3571f458fc5c4cc712b8e3b54a981c .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1_curiosity/332e9c2b23b4b7dc49bbcf521865dbc62284d6b .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/pmu_init.o: ../src/config/pic32mzw1_curiosity/pmu_init.c  .generated_files/flags/pic32mzw1_curiosity/7f2f2288bc39839af5e5b7fa729529b1f4dc3844 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/pmu_init.o.d" -o ${OBJECTDIR}/_ext/580221153/pmu_init.o ../src/config/pic32mzw1_curiosity/pmu_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/flags/pic32mzw1_curiosity/3c75d774ed515abc3bd34a83658a7068b9a26600 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/flags/pic32mzw1_curiosity/d215dab5fd97f5c83af438369f0328f9ba518a48 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/flags/pic32mzw1_curiosity/c81196633c7fad10bb8197b630b9f55fcd0cdfcd .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1_curiosity/2403874b9a5566a2650ff322b52286fb1ac23e36 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1_curiosity/58e7785c74c6eae5b4ef5499905ea118e891e9a3 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1_curiosity/b8a30c0705f8379a55575bca666bcffb03fe09e2 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mzw1_curiosity/c67bea9a46eebe957d5dc8feb8a33c850873a8c6 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/pic32mzw1_curiosity/9a51248b292ce8c2f51cea105110970e6450b24e .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1_curiosity/d2eba5f9a0c464919f1c8ce3c583f7d5b340dd7b .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1_curiosity/b1409e21b4bd877df46f0cf30bba867a7d089b49 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1_curiosity/cbd86aeb427366fe922f06f1f3d55cba4befec46 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/flags/pic32mzw1_curiosity/e94c09276ea03c68b77b2e8bb07304835dff0e66 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/flags/pic32mzw1_curiosity/e9c425e56c67086229b412aa5a0e991100d4e952 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/flags/pic32mzw1_curiosity/3f67e41cb752093eca2d427113e7ce93894af30b .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/flags/pic32mzw1_curiosity/98d72e4d248207349153c69915116fc0c86f9fd7 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/flags/pic32mzw1_curiosity/ca1589b68f619fe7b080c7c69b21393571ff868b .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/flags/pic32mzw1_curiosity/aa52345c7b6f623ad2504f6606466a9f5f6cfddf .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/flags/pic32mzw1_curiosity/4486a098d6bb87ed63cc475127017a59e76bb476 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/flags/pic32mzw1_curiosity/61c8d36cabbdc08e0c85747d6fc6674fa1d614dd .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/flags/pic32mzw1_curiosity/4d5cd503b6c0d4c353263107a6c9abfa0560c547 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/flags/pic32mzw1_curiosity/176d47fdfc72dc3a70965fac6dd871d6665dbef4 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/pic32mzw1_curiosity/52bc76668c55c18f946043affeefb216c52095d0 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/pic32mzw1_curiosity/c9cf2d80139148c64d5fb07a3ac760d94b70d768 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/pic32mzw1_curiosity/3013aa7fef61f2aaa3e004024a48440eacb1a726 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/pic32mzw1_curiosity/b0cad37886725df403723a3585f3e6145d596ccd .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/flags/pic32mzw1_curiosity/82874f893f1459a988c89620f5a8c10beec37018 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/pic32mzw1_curiosity/fe94474ac237f2a3199448e2b76ac249f59866c6 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/flags/pic32mzw1_curiosity/e2afca61ad75db337a49dbdb4d6f0752f6bf887 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/pic32mzw1_curiosity/4d3a0bdcc49d8ff35253174b4bc9b4e2f6305709 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/flags/pic32mzw1_curiosity/4ae128771596e411141caa4de347671edd8585d .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1_curiosity/20c398f430fa588c82cfffd621cd9393c759b6c7 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1_curiosity/b4ef36b4dcbeb70f390c231a7d92a1f23b98558d .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/pmu_init.o: ../src/config/pic32mzw1_curiosity/pmu_init.c  .generated_files/flags/pic32mzw1_curiosity/aa8aee090063ce1426a96da206d37d0966ab3112 .generated_files/flags/pic32mzw1_curiosity/18bced7ded2887964c191369e3193dd1156a0200
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/pmu_init.o.d" -o ${OBJECTDIR}/_ext/580221153/pmu_init.o ../src/config/pic32mzw1_curiosity/pmu_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mzw1_curiosity/p32MZ1025W104132.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mzw1_curiosity/p32MZ1025W104132.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/kitprotocol.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/kitprotocol.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mzw1_curiosity
	${RM} -r dist/pic32mzw1_curiosity

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
