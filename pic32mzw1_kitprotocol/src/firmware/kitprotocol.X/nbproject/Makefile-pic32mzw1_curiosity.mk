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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mzw1_curiosity/bsp/bsp.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c ../src/config/pic32mzw1_curiosity/initialization.c ../src/config/pic32mzw1_curiosity/interrupts.c ../src/config/pic32mzw1_curiosity/exceptions.c ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c ../src/config/pic32mzw1_curiosity/usb_device_init_data.c ../src/config/pic32mzw1_curiosity/tasks.c ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c ../src/kitprotocol_parser/hal/hal_delay.c ../src/kitprotocol_parser/hal/hal_i2c_harmony.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../src/kitprotocol_parser/usb_hid/usb_hid.c ../src/kitprotocol_parser/utilities/crc/crc_engines.c ../src/kitprotocol_parser/kit_device_info.c ../src/kitprotocol_parser/kit_hal_interface.c ../src/kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2003125425/bsp.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ${OBJECTDIR}/_ext/658096385/plib_clk.o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ${OBJECTDIR}/_ext/1163406548/sys_int.o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ${OBJECTDIR}/_ext/410602519/usb_device.o ${OBJECTDIR}/_ext/580221153/initialization.o ${OBJECTDIR}/_ext/580221153/interrupts.o ${OBJECTDIR}/_ext/580221153/exceptions.o ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ${OBJECTDIR}/_ext/580221153/tasks.o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/182291534/hal_delay.o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ${OBJECTDIR}/_ext/611661181/usb_hid.o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2003125425/bsp.o.d ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/658096385/plib_clk.o.d ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d ${OBJECTDIR}/_ext/1163406548/sys_int.o.d ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d ${OBJECTDIR}/_ext/410602519/usb_device.o.d ${OBJECTDIR}/_ext/580221153/initialization.o.d ${OBJECTDIR}/_ext/580221153/interrupts.o.d ${OBJECTDIR}/_ext/580221153/exceptions.o.d ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d ${OBJECTDIR}/_ext/580221153/tasks.o.d ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d ${OBJECTDIR}/_ext/182291534/hal_delay.o.d ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d ${OBJECTDIR}/_ext/611661181/usb_hid.o.d ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2003125425/bsp.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ${OBJECTDIR}/_ext/658096385/plib_clk.o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ${OBJECTDIR}/_ext/1163406548/sys_int.o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ${OBJECTDIR}/_ext/410602519/usb_device.o ${OBJECTDIR}/_ext/580221153/initialization.o ${OBJECTDIR}/_ext/580221153/interrupts.o ${OBJECTDIR}/_ext/580221153/exceptions.o ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ${OBJECTDIR}/_ext/580221153/tasks.o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/182291534/hal_delay.o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ${OBJECTDIR}/_ext/611661181/usb_hid.o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o

# Source Files
SOURCEFILES=../src/config/pic32mzw1_curiosity/bsp/bsp.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c ../src/config/pic32mzw1_curiosity/initialization.c ../src/config/pic32mzw1_curiosity/interrupts.c ../src/config/pic32mzw1_curiosity/exceptions.c ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c ../src/config/pic32mzw1_curiosity/usb_device_init_data.c ../src/config/pic32mzw1_curiosity/tasks.c ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c ../src/kitprotocol_parser/hal/hal_delay.c ../src/kitprotocol_parser/hal/hal_i2c_harmony.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../src/kitprotocol_parser/usb_hid/usb_hid.c ../src/kitprotocol_parser/utilities/crc/crc_engines.c ../src/kitprotocol_parser/kit_device_info.c ../src/kitprotocol_parser/kit_hal_interface.c ../src/kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c



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
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/5594d16939e1936a908778c9fd5754b94ebcc6f7.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/7e190596b9703c44dfae62db8025bbcee8325d7.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/76e53a5554001d8bef43a65e8c24e5d0c66d823c.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/805fcaa0ad04142fd92d282cde2fc0805744b1d8.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/4d617cb849d66031d7cb87f014bda00b214d5374.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/673c54b35742837379b42e65fc342437e95f6b36.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/3ac35ab9d6535afdca621359476dd1ee2ed313f1.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/8ac78a7a51fe80128919f4204fd96d89fe680e5c.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/aa781b3c83c0e7e0fb022fc96e8f16c76ece6212.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/379afe7932c35d8313f8ff621b1ec53c35a060f2.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/4b95e02786c57587483a1939c9d97ef3c14f7fa3.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/3a155066f8cc3cc17c0d25d52cd60090b048df23.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/d5bea5433762fd4a50a6b7f6a8535b9c23115e74.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/63452a85476d718240cfced663116dfb4138f0a5.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/abc000f6709a847c2c6155bc964fa6225855b8d4.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o: ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c  .generated_files/28d7c9422702ee8e8860bea58751432500b7a5c0.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/612790f7f2c3fc6ed3d6710da93e980fd5022250.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/b9deda5134bb18dc507d340cb0fe4ac505448711.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/4ea314a6d81a49004da46c8ce6bf077da4ede3af.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/bc9b48f877c03f9d13e31b20a7f0806f96ed9d65.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/16ba9d51834968a3e0da3cf4d687395ecdab4331.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/7ac57aa7ad95a8028dbba3bbb7837b08deb0eacf.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/6c24660a15551799f1d9be4e602be0d74bc2651d.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/b54ac4402891d5daabb1a9e0ca9a57ff990787bb.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/70442da8303375ca416f8249771f4a9d0e784b9b.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/bbb504d0e620d0440dc9045140a205341f5aa82b.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/d9d82670ad835360285b689ca1de1b6d826bdeb3.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/7443a1bc4f4a3c6324534bf6213b01366c903a4f.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/ba14456b23a01460fe61414a99b7b6ae42e42baa.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/4b861bf52a655119e49af0a48f6140c696147920.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/7d289ac966200b67f3a02b76aa43da65ead302d8.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/af090d55881eda0f2ee57ef5694aa0d5b3b8da6.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/9bcd3e61a987014f116eefde48cdc22510fef8b5.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/7201f8aefa946771df256e9a45ac2c90f0e3bb92.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/d33a28d38e649ed47cd665e26319d14035b5531a.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/d28dd0db44fa791d26273d231e754583bfad3d53.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/f6b39f87020381f70d0c2ffc54ff2cd55f3273a9.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/cf17f7bd962dc1abd471350124b254da0e2997a3.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/51343a6b18afc81bd923fe95c2fafdc13801212.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/6f8b3b27adf1551210da61322b297120a0d3e4df.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/6e6cad5b8cede2ec77ab9f479c1ee45af350ca3a.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/df69d5d572970872566b04c4351eb382419d4882.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/f4deafa248be34e5d4ce4dc0176ab03a452649b6.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/dd97d3d98c7b771c0f0d661564bb8d99cde74085.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/5852bff71ca755527557c2badf465231f68b9b9.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/14bfbff253f0b72b551ad9b1468c1669893ab25d.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/655507280026b59a5807188d329fbc66f1f1f200.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/dfd05a2a7dc75a0cdb3b3c2e2f11cb5784a31a8c.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o: ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c  .generated_files/67fcfee98fc598cda66ee60b232b30b9c7e6e7ad.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/580221153/system_pmu_mldo_trim.o ../src/config/pic32mzw1_curiosity/system_pmu_mldo_trim.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/6b5ee8acd9a05b37d565c46f25534054c6259062.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/72e83a15d36a5194c55059a2ac58f56520918fa7.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/367283aefea47a770c801f53201a806ac7f75e0.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/5783abd05963ed04944a0f1e4945fba6126dab4e.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/f3adb24d02627466cc9547a0b4e828ea1949ec53.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/11afb1660cb8aef5c888a85482ab0dd40defece6.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/c6f247c31825b3adfb6e801f7b324821784a5bb9.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/682f5356231bca80e0133c8ac42ab6c4b8504114.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/3b6fe910ce8d9aa41216ab874dd4f8dacbd86e8c.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/c7b063d048c6dcf637968e510500c3e53ec9d1e0.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/53b02776a7f407367cb694afd42d87edda38c94e.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/1c0441b9b8bf73d12eac9abeb1c2d81fd468e257.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/acaaeec2ded91dce7d5e16774a774d55e1775657.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/d97180f9b1e67fdb211caa495246a909f55e60e4.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/dd5a074c7c27291f769d411cb479c9f6ae7da243.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/7457da0701508fa00b366ea408c9a243e7dfadf1.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/7155319cfbc7cd822329f0e11316f4f2895319bd.flag .generated_files/a9d3c86e4b79153ea6d317b26bef17013fd75ea1.flag
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
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
