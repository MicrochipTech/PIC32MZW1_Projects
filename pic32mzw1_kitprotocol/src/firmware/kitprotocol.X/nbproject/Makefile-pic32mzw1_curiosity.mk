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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mzw1_curiosity/bsp/bsp.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c ../src/config/pic32mzw1_curiosity/initialization.c ../src/config/pic32mzw1_curiosity/interrupts.c ../src/config/pic32mzw1_curiosity/exceptions.c ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c ../src/config/pic32mzw1_curiosity/usb_device_init_data.c ../src/config/pic32mzw1_curiosity/tasks.c ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c ../src/kitprotocol_parser/hal/hal_delay.c ../src/kitprotocol_parser/hal/hal_i2c_harmony.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../src/kitprotocol_parser/usb_hid/usb_hid.c ../src/kitprotocol_parser/utilities/crc/crc_engines.c ../src/kitprotocol_parser/kit_device_info.c ../src/kitprotocol_parser/kit_hal_interface.c ../src/kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2003125425/bsp.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ${OBJECTDIR}/_ext/658096385/plib_clk.o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ${OBJECTDIR}/_ext/1163406548/sys_int.o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ${OBJECTDIR}/_ext/410602519/usb_device.o ${OBJECTDIR}/_ext/580221153/initialization.o ${OBJECTDIR}/_ext/580221153/interrupts.o ${OBJECTDIR}/_ext/580221153/exceptions.o ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ${OBJECTDIR}/_ext/580221153/tasks.o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/182291534/hal_delay.o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ${OBJECTDIR}/_ext/611661181/usb_hid.o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2003125425/bsp.o.d ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/658096385/plib_clk.o.d ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d ${OBJECTDIR}/_ext/1163406548/sys_int.o.d ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d ${OBJECTDIR}/_ext/410602519/usb_device.o.d ${OBJECTDIR}/_ext/580221153/initialization.o.d ${OBJECTDIR}/_ext/580221153/interrupts.o.d ${OBJECTDIR}/_ext/580221153/exceptions.o.d ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d ${OBJECTDIR}/_ext/580221153/tasks.o.d ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d ${OBJECTDIR}/_ext/182291534/hal_delay.o.d ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d ${OBJECTDIR}/_ext/611661181/usb_hid.o.d ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2003125425/bsp.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ${OBJECTDIR}/_ext/658096385/plib_clk.o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ${OBJECTDIR}/_ext/1163406548/sys_int.o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ${OBJECTDIR}/_ext/410602519/usb_device.o ${OBJECTDIR}/_ext/580221153/initialization.o ${OBJECTDIR}/_ext/580221153/interrupts.o ${OBJECTDIR}/_ext/580221153/exceptions.o ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ${OBJECTDIR}/_ext/580221153/tasks.o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/182291534/hal_delay.o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ${OBJECTDIR}/_ext/611661181/usb_hid.o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/pic32mzw1_curiosity/bsp/bsp.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c ../src/config/pic32mzw1_curiosity/initialization.c ../src/config/pic32mzw1_curiosity/interrupts.c ../src/config/pic32mzw1_curiosity/exceptions.c ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c ../src/config/pic32mzw1_curiosity/usb_device_init_data.c ../src/config/pic32mzw1_curiosity/tasks.c ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c ../src/kitprotocol_parser/hal/hal_delay.c ../src/kitprotocol_parser/hal/hal_i2c_harmony.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../src/kitprotocol_parser/usb_hid/usb_hid.c ../src/kitprotocol_parser/utilities/crc/crc_engines.c ../src/kitprotocol_parser/kit_device_info.c ../src/kitprotocol_parser/kit_hal_interface.c ../src/kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c



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
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/95d451992a9d9c27fb6a36e809332feac5f538a7.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/81282ca0d63c9ef9254c98081fb1623ba44a1363.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/4741d9c6e7e87e4c1884a939aa2559118ebcd63.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/24ade59549f2c0afa5da91fd0e67fa0b46cbdb66.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/5eb7bc08884e2cd2fa3616f964ff285f63dc4fc7.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/ad3a696b4fd722052f16345b9308afedf76cd2e3.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/9f9c6e0936529b3b9d329ed206a63a135413e991.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/85bad2a1d6312ddaaa8827f4656d6f7d574c686d.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/f9ad8e702710d1cfcbbfc09a0079014176a7166f.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/4083a1caab7d51e39391d1a6a12e09b56341b920.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/374fa12cf40de24d56904881c6c6d5fb02ff7698.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/b53762ef1f1312c40077f598543d176b5523c58d.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/ad9e861c80701dff8c22abf327be7c504d4f9cd3.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/b10f26572d6553e9176b513f78ad1cef694981e4.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/4e11b440e2b4cc131c1998b850ca8ed35378e497.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o: ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c  .generated_files/3446c8d81ff817bb37a212c14379ab489d9174f9.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/92e4d069c621e8fce7b9e3f9788585417a6f5db7.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/1f0b79601a26be01f22d6273c796364b5138d3e.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/9c587a474deaf64ec5fe7d3a942b0bb1baa3ad0a.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/cd850ec42bd2f09fa173bafb1bd3c2373232fcf9.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/18832360e408b10aecac4f8954ed6f317d8164e2.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/1ba7b31a888ae5b3526afa164750e6b79fd12023.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/bdf8b6be70aa68f02568f27632799416357dffe2.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/4aba5ae24eed7c66a14d1921bb842b21f46aac3a.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/a2633889d5067ee541916afa63d159130fc2aee5.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/601b7f23221c2e83e0597fde46d448096fab0341.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/564c8c09160d4554d2f3103a7b183013e079adf2.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/99f8ef726e0204d4c14c25a2f3d38591567b71bf.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/753a71916fdc7f7282b676aebaf43fc605f5b735.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/f32e4063da53d8b77fe6f470ee1b7f77061c4338.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/e703b59e5e9d3fe361dbbb305a5527abb2f938ff.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/241b6f15bb5c48ff6fdb514ccda1fe1ebba22df5.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/4d156db2ec0a3a4549b1d8268f301ce599196e06.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/afe3abc9fab6e1daa7612632c121ac5e06dc5528.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/bcd863140d6587539c6f43ad65563e5e3f819f7a.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/ac0b779c2dc24bf95f048b14c961983e1acf41ae.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/52bbdfbcea8bf8997cfc1087fcc3431cad0b6183.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/28855b66324ca163cb06704b82322984540e2e20.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/4ecbcdeb9ed1bb501e8440d1c0fa699de07469be.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/908aacceece5c67e06974306b8a09c7920b85203.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/4ada446d92397b1ddc5cd6cba63a086dcf6ddf15.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/89a0fefb9f16883133ab4ea8eca9e944a5c3a5f7.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/7e86b87e6b0fad2021ab9510ce8a02e519d9c4fe.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/24238bff9a36e914b312b3dcd3700158ff6f46a1.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/a50c9cea3077bf34108f85215b85353830e08fdd.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/109a5e0ab758dfbc4aefdad468051e26832d416b.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/1363ffaeb0fd81a5830f4ccbba55940534c731ee.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o: ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c  .generated_files/58214378e082ce15493a0c6224228d472e03d1c1.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/657087ab0a8097d95f8d1825fe4ae052f6eec41d.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/bf967d5ce9ef6621e0b856ca5b9a7b406f710740.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/55a7d36cefbc884c43bc680c250d852dc07faf86.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/dd04824d46dc56de21f92c186c91d7d48ea5f1cd.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/ff633abfff02f7e8ad9b9a6d289e79cd6c3e5301.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/9fa13609e4521cda635d42073c41101f0712c210.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/5fb85d4049b9081acc8fdae94d7ac0eda8a8f17c.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/5ce4967ff280fa8f06c55e9b60e5595a46641816.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/750d716bf4fa7beec740066cb19c373055f9cf17.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/6f00b9e92b9abeec14e7bfeea22f245a4fc58597.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/ba75424dfcebde4e2247b44c17dee0db22ddf15e.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/af928cc4e5b40fcc37be877adce88e1bf954aa27.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/da72de70aeaee6f201bc318e448c711b3fbd9cc3.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/29c4daa3f8fff889cfa900b797338928226c7f3a.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/1d7a6728fed1678416bb322a43d4a24d278f505a.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/b3beeff2c4a3a1626e563f007de6150360f5682.flag .generated_files/14246344638a0771e605d7c8fbe0f396e9d38a63.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
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
