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
FINAL_IMAGE=${DISTDIR}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mzw1_curiosity/bsp/bsp.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c ../src/config/pic32mzw1_curiosity/initialization.c ../src/config/pic32mzw1_curiosity/interrupts.c ../src/config/pic32mzw1_curiosity/exceptions.c ../src/config/pic32mzw1_curiosity/usb_device_init_data.c ../src/config/pic32mzw1_curiosity/tasks.c ../src/config/pic32mzw1_curiosity/pmu_init.c ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c ../src/kitprotocol_parser/hal/hal_delay.c ../src/kitprotocol_parser/hal/hal_i2c_harmony.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../src/kitprotocol_parser/usb_hid/usb_hid.c ../src/kitprotocol_parser/utilities/crc/crc_engines.c ../src/kitprotocol_parser/kit_device_info.c ../src/kitprotocol_parser/kit_hal_interface.c ../src/kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2003125425/bsp.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ${OBJECTDIR}/_ext/658096385/plib_clk.o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ${OBJECTDIR}/_ext/1163406548/sys_int.o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ${OBJECTDIR}/_ext/410602519/usb_device.o ${OBJECTDIR}/_ext/580221153/initialization.o ${OBJECTDIR}/_ext/580221153/interrupts.o ${OBJECTDIR}/_ext/580221153/exceptions.o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ${OBJECTDIR}/_ext/580221153/tasks.o ${OBJECTDIR}/_ext/580221153/pmu_init.o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/182291534/hal_delay.o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ${OBJECTDIR}/_ext/611661181/usb_hid.o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2003125425/bsp.o.d ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/658096385/plib_clk.o.d ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d ${OBJECTDIR}/_ext/1163406548/sys_int.o.d ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d ${OBJECTDIR}/_ext/410602519/usb_device.o.d ${OBJECTDIR}/_ext/580221153/initialization.o.d ${OBJECTDIR}/_ext/580221153/interrupts.o.d ${OBJECTDIR}/_ext/580221153/exceptions.o.d ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d ${OBJECTDIR}/_ext/580221153/tasks.o.d ${OBJECTDIR}/_ext/580221153/pmu_init.o.d ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d ${OBJECTDIR}/_ext/182291534/hal_delay.o.d ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d ${OBJECTDIR}/_ext/611661181/usb_hid.o.d ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2003125425/bsp.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ${OBJECTDIR}/_ext/658096385/plib_clk.o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ${OBJECTDIR}/_ext/1163406548/sys_int.o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ${OBJECTDIR}/_ext/410602519/usb_device.o ${OBJECTDIR}/_ext/580221153/initialization.o ${OBJECTDIR}/_ext/580221153/interrupts.o ${OBJECTDIR}/_ext/580221153/exceptions.o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ${OBJECTDIR}/_ext/580221153/tasks.o ${OBJECTDIR}/_ext/580221153/pmu_init.o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/182291534/hal_delay.o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ${OBJECTDIR}/_ext/611661181/usb_hid.o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/pic32mzw1_curiosity/bsp/bsp.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c ../src/config/pic32mzw1_curiosity/initialization.c ../src/config/pic32mzw1_curiosity/interrupts.c ../src/config/pic32mzw1_curiosity/exceptions.c ../src/config/pic32mzw1_curiosity/usb_device_init_data.c ../src/config/pic32mzw1_curiosity/tasks.c ../src/config/pic32mzw1_curiosity/pmu_init.c ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c ../src/kitprotocol_parser/hal/hal_delay.c ../src/kitprotocol_parser/hal/hal_i2c_harmony.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../src/kitprotocol_parser/usb_hid/usb_hid.c ../src/kitprotocol_parser/utilities/crc/crc_engines.c ../src/kitprotocol_parser/kit_device_info.c ../src/kitprotocol_parser/kit_hal_interface.c ../src/kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c



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
	${MAKE}  -f nbproject/Makefile-pic32mzw1_curiosity.mk ${DISTDIR}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/flags/pic32mzw1_curiosity/afdb55467d3fb330dd083a073a447002db163e26 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/flags/pic32mzw1_curiosity/c7a5b08a2ae6e1d2f78e3f2b0469afc1fe36429a .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/flags/pic32mzw1_curiosity/ef702d676cb4925516ab6c695fefd3697d869e8c .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1_curiosity/3b0faa1d11ac3669f296a544d084a8d2860501de .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1_curiosity/460ae35f70ad4af955eae0cdae5d2634112d9d49 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1_curiosity/a65115cd4d16d3d7a37b40ed1a70e537a04f1531 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mzw1_curiosity/a99aa5ef26f48052243cd0f9812f3773b4eccb13 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/pic32mzw1_curiosity/d7d96f97e35a136fdabc21533ab6b30b3c5f76b0 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1_curiosity/25fc7dfc131af730c48eb8e6e1d99f78bb871dcb .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1_curiosity/18789defbf9852100e2eaf839e569075d8b67957 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1_curiosity/7be6640828850c7ea685b9214bc3315494391f3c .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/flags/pic32mzw1_curiosity/23f3b3ab316f4bde035c592b04f041d871c73979 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/flags/pic32mzw1_curiosity/2e994fea15e4593332b5f463c7f3e3dbf8f36f31 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/flags/pic32mzw1_curiosity/e61548ef6d18edf49f6a3f23d2142233c9fe303d .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/flags/pic32mzw1_curiosity/b6ff1847fdfce3b0a2702f7ea78ff99072ec610a .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/flags/pic32mzw1_curiosity/1934f474e9610ef228051d3222abaeb94f673fe8 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/flags/pic32mzw1_curiosity/5cbce1d6a58cbbdb611128b927993653a2adcc1d .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/flags/pic32mzw1_curiosity/e59c6ea3166c24b720bcececdb0fc64d2d4c43de .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/pmu_init.o: ../src/config/pic32mzw1_curiosity/pmu_init.c  .generated_files/flags/pic32mzw1_curiosity/4ec76289df594907a07da83099b4839249b88aa4 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/pmu_init.o.d" -o ${OBJECTDIR}/_ext/580221153/pmu_init.o ../src/config/pic32mzw1_curiosity/pmu_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/flags/pic32mzw1_curiosity/d14948c6afd5369643a63a70a65769ab6ac66f4e .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/flags/pic32mzw1_curiosity/2bbcf94a04272b4151da99cc5ad67e5d263c736b .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/flags/pic32mzw1_curiosity/3c133e98f31929d14cd3e292982038ad13fff96c .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/pic32mzw1_curiosity/3e7bb21552e5e024bbae9a33d5631e7cfa905aa5 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/pic32mzw1_curiosity/4159bfc792e9ddf12f092c710f62868c53d0e068 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/pic32mzw1_curiosity/6ec9a73a34c4f6661c50c72c546a0bf1a344080b .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/pic32mzw1_curiosity/9b82939afe99cd7887d4643610572b3652a0ac9e .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/flags/pic32mzw1_curiosity/a100d2905f10ce540c1d71c3e57f400914919780 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/pic32mzw1_curiosity/1c41a074179911175068ec0d22a220ea7776e9fd .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/flags/pic32mzw1_curiosity/13eae596918364dca723aea6da559196dbe1695b .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/pic32mzw1_curiosity/bbd90d175148f4b0784d0c44a2750b11d4dc5b1f .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/flags/pic32mzw1_curiosity/c4bcc6a8506e3d6bc6496d5a75602c7bf04b5407 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1_curiosity/a1e851e29592af54124068bd3ecb174d302d80ea .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1_curiosity/181c64ef6e1a6f287a9230bae9d3a51b524cfe08 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/flags/pic32mzw1_curiosity/739d3cfacb1b95a30dcb253a43caaf790a9509be .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/flags/pic32mzw1_curiosity/bd21f6ed342f9257e77ce9f916cc55645e1e7c55 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/flags/pic32mzw1_curiosity/774375cd1865b5383d5fba140d12bf557b92ac4f .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1_curiosity/7ac434d3eec69ff26f88f5ab2c5a8842e7914657 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1_curiosity/8e704bb445d6aed05e3221573a807ddbbc774cca .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1_curiosity/487bb28ce6ebfa41498e6da7d9b8d9a1074fac63 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mzw1_curiosity/1f19f8f1d9edcb0b42572f927fc8cc55c6f08dc8 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/pic32mzw1_curiosity/4ca0c4de2f7d0cb22fb92145f12adcaf001c7030 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1_curiosity/5e28e31a7903da733804e5fbc0cf06fa1cb32e06 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1_curiosity/6077a779a896bf487bb9bd7af56fde6b3401297a .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1_curiosity/348d258e35879100e903ae0aef75bbecee237fde .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/flags/pic32mzw1_curiosity/891d3d3dbbdf96d35519f8c4b4a4e75134f7cf45 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/flags/pic32mzw1_curiosity/4d8fc3d5c6a73e8b6c88d868a8cba85a86eff2fa .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/flags/pic32mzw1_curiosity/5a1fc7e088a8587eb56b34ebb867ad6ac4182c1b .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/flags/pic32mzw1_curiosity/b475d04abe2bb5dd46ce159ec8322881de34a705 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/flags/pic32mzw1_curiosity/5db2d17d5b6722f76113d5577c05f258b43d856a .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/flags/pic32mzw1_curiosity/f10579a31d44148aa3ec2ce8eec1cbb048026386 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/flags/pic32mzw1_curiosity/c38a0d95dd93ef5a6292d5b0a6984caed6d1ebcc .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/pmu_init.o: ../src/config/pic32mzw1_curiosity/pmu_init.c  .generated_files/flags/pic32mzw1_curiosity/3c98a3658f7f70877d39ca1448de0731e1f2e59c .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/pmu_init.o.d" -o ${OBJECTDIR}/_ext/580221153/pmu_init.o ../src/config/pic32mzw1_curiosity/pmu_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/flags/pic32mzw1_curiosity/51cc355827bcc29e32f2bdc06188f8d6339c1d0b .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/flags/pic32mzw1_curiosity/696ad3288f26b5bd4e1b40d48806766def676381 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/flags/pic32mzw1_curiosity/3800694c361f6e56f5990e53425ad33a101f4032 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/pic32mzw1_curiosity/7c9f21076625005a5b2770723ae94fdedfd4d867 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/pic32mzw1_curiosity/946685ef6a3244195ac0c81d00e522de21956bcc .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/pic32mzw1_curiosity/fff0705a2f9ffaaaa490c0f1b43b9a76228e889c .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/pic32mzw1_curiosity/28f840e583540f9aac67903fec631a9608cc12e6 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/flags/pic32mzw1_curiosity/2b83a9852caaeee428ae71207115ef8006842f71 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/pic32mzw1_curiosity/ad894c93aece50da6573f9426bfdcce3a1e039e8 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/flags/pic32mzw1_curiosity/16b0b0319a0b49a58e5fd3a5802ac33778d65c50 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/pic32mzw1_curiosity/61241560427871b65cd9b05b9e5d39ae7bfb0bcf .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/flags/pic32mzw1_curiosity/7920637ff6133cb4117118f806d4ffe4ef348b86 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1_curiosity/a36e9383fb696c9449f52787a95bf346d896c14 .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1_curiosity/b68b849a684cfb72101b04485fb0b498c9a0e2ce .generated_files/flags/pic32mzw1_curiosity/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mzw1_curiosity/p32MZ1025W104132.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/kitprotocol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mzw1_curiosity/p32MZ1025W104132.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/kitprotocol.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/kitprotocol.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
