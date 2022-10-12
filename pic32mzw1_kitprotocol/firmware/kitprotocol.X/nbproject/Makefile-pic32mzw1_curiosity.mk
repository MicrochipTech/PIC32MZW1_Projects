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

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
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
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/flags/pic32mzw1_curiosity/ff27561836f96f88dfbb200ba1a59fb7d522031d .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/flags/pic32mzw1_curiosity/b6f09a61efc541c6f0c1534b6157c548251f0709 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/flags/pic32mzw1_curiosity/5cd5b89d5fd2b3319769bcb5768f3f0448dc9609 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1_curiosity/317571ac31253eb96a8336c5018b4fe60a5221ac .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1_curiosity/4d28b10adb11a42300cb60d210d7d9d95a4529d2 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1_curiosity/7cf8464811d653dd30a659321b0c1ee5a5ff2200 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mzw1_curiosity/e6e4aa47fe21e704645d2ad73fbcf568cfd0e40e .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/pic32mzw1_curiosity/6089c355d74071a700794dd9c912428dce7fa8e6 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1_curiosity/1a669ee595bf1fd138fd0500510b0882bf8fab19 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1_curiosity/1faeed983df6807438772848044ce47c40407358 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1_curiosity/21bdd2862a42a5ba1c0f5fae85f778140951057a .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/flags/pic32mzw1_curiosity/3b63d2b351cdd5f00143bf970b951c7b044ed278 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/flags/pic32mzw1_curiosity/ef02336618aad37a55c77e2d50b0446b9f5d0128 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/flags/pic32mzw1_curiosity/16d598d07aac5b8f335d2a9d7dd2a1a9b84193b5 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/flags/pic32mzw1_curiosity/c92c7f01c4951941ce195e364b0385dffb652446 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/flags/pic32mzw1_curiosity/352222b5a386a090e063f7239ad6c2452e5b3e1e .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/flags/pic32mzw1_curiosity/e598abea8732c513d5afcb068e411499ca2a31e9 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/flags/pic32mzw1_curiosity/1d556658662d39557968d8884ed5730250b132f0 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/pmu_init.o: ../src/config/pic32mzw1_curiosity/pmu_init.c  .generated_files/flags/pic32mzw1_curiosity/f4be59bff927f52765e11e0b5b468a3faf0106f8 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/pmu_init.o.d" -o ${OBJECTDIR}/_ext/580221153/pmu_init.o ../src/config/pic32mzw1_curiosity/pmu_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/flags/pic32mzw1_curiosity/aff5b6fa66dd4c1cb3e0d710fe0cc6204077952d .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/flags/pic32mzw1_curiosity/ad00ff9f2de919773d7e7b274e2acc69f6c82b85 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/flags/pic32mzw1_curiosity/f5aa3426015b283e9a89fbf16ab5d66d2e3e323e .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/pic32mzw1_curiosity/4b8febcb45c94fabd9b24ca981684b1fb3ccc5d5 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/pic32mzw1_curiosity/382d6e2690e6d25a550c0e73c6e6702c9d532333 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/pic32mzw1_curiosity/b42e0f55358b758f8055a5b3ec804946bbad6c4a .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/pic32mzw1_curiosity/4c74de8bd690b115985447ee5bc7c83916e50880 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/flags/pic32mzw1_curiosity/948b3f03f1c1d30d0e9de344fa7da2ec37d1a278 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/pic32mzw1_curiosity/fd3af3b574c9428b0a8f65be547389e9c92861c6 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/flags/pic32mzw1_curiosity/4e4ed9af04dec77abd960e89feb1ec850acfec62 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/pic32mzw1_curiosity/97f8d7e6ed7930d664813f86bfdbff40a81780b8 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/flags/pic32mzw1_curiosity/42992dcd306b727921db9f97905243e20cdb1da8 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1_curiosity/216c563728f4549cca559ea9a98696af3562da38 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1_curiosity/5796dbe6b146b20483e7b1975e1f5b66819cf0c1 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2003125425/bsp.o: ../src/config/pic32mzw1_curiosity/bsp/bsp.c  .generated_files/flags/pic32mzw1_curiosity/aa84710bab46106c8d0b4d0b87564ca12b4e42e4 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/2003125425" 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003125425/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2003125425/bsp.o.d" -o ${OBJECTDIR}/_ext/2003125425/bsp.o ../src/config/pic32mzw1_curiosity/bsp/bsp.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c  .generated_files/flags/pic32mzw1_curiosity/b9a5871c3af161b2e9c897761626072f11795af9 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o: ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c  .generated_files/flags/pic32mzw1_curiosity/45d503234ee196f872c00cd13cf9f713cec49f38 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1283736412" 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1283736412/drv_usbfs_device.o ../src/config/pic32mzw1_curiosity/driver/usb/usbfs/src/drv_usbfs_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658096385/plib_clk.o: ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1_curiosity/8d19c908dc95668417e242492b4b2f6d27c18c07 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/658096385" 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/658096385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/658096385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/658096385/plib_clk.o ../src/config/pic32mzw1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073917774/plib_evic.o: ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1_curiosity/95fee5d3e42f7d881fe47ac74af89a398c0a7d47 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1073917774" 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073917774/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073917774/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1073917774/plib_evic.o ../src/config/pic32mzw1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1073971602/plib_gpio.o: ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1_curiosity/9e1a9ca6f66d966bb85b0acb8ca6ec2901613b97 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1073971602" 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1073971602/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1073971602/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1073971602/plib_gpio.o ../src/config/pic32mzw1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/pic32mzw1_curiosity/e166603e717819e9f5768b6d3ad576072b583a59 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c2_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o: ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/pic32mzw1_curiosity/513f6b163148dc63f470e415158820d359638091 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/933484794" 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/933484794/plib_i2c1_master.o ../src/config/pic32mzw1_curiosity/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1074374545/plib_uart1.o: ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1_curiosity/2af78e76c7c12640e04e96e952f84240ba44a7c8 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1074374545" 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1074374545/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1074374545/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1074374545/plib_uart1.o ../src/config/pic32mzw1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/842463335/xc32_monitor.o: ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1_curiosity/418454d018efe85b5b4d4e0e0dd914f837228a28 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/842463335" 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/842463335/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/842463335/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/842463335/xc32_monitor.o ../src/config/pic32mzw1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1163406548/sys_int.o: ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1_curiosity/46ec0c0ea41246905961124f82ed934e1be31567 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1163406548" 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1163406548/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1163406548/sys_int.o.d" -o ${OBJECTDIR}/_ext/1163406548/sys_int.o ../src/config/pic32mzw1_curiosity/system/int/src/sys_int.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device_hid.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c  .generated_files/flags/pic32mzw1_curiosity/8ff836427bec3b0ee35b87bd3c54e0f45e68cbf3 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device_hid.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/410602519/usb_device.o: ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c  .generated_files/flags/pic32mzw1_curiosity/477359352aeab7914521fb9b25a01c7c1826d1df .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/410602519" 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/410602519/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/410602519/usb_device.o.d" -o ${OBJECTDIR}/_ext/410602519/usb_device.o ../src/config/pic32mzw1_curiosity/usb/src/usb_device.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/initialization.o: ../src/config/pic32mzw1_curiosity/initialization.c  .generated_files/flags/pic32mzw1_curiosity/4a3113b882b32544d11545ad0d243a96d8c2d32b .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/initialization.o.d" -o ${OBJECTDIR}/_ext/580221153/initialization.o ../src/config/pic32mzw1_curiosity/initialization.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/interrupts.o: ../src/config/pic32mzw1_curiosity/interrupts.c  .generated_files/flags/pic32mzw1_curiosity/c969764d497c2fc3823a4de6eac4a81b74beec90 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/interrupts.o.d" -o ${OBJECTDIR}/_ext/580221153/interrupts.o ../src/config/pic32mzw1_curiosity/interrupts.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/exceptions.o: ../src/config/pic32mzw1_curiosity/exceptions.c  .generated_files/flags/pic32mzw1_curiosity/d0800752a4805faf0f75f6645f628d802971339e .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/exceptions.o.d" -o ${OBJECTDIR}/_ext/580221153/exceptions.o ../src/config/pic32mzw1_curiosity/exceptions.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/usb_device_init_data.o: ../src/config/pic32mzw1_curiosity/usb_device_init_data.c  .generated_files/flags/pic32mzw1_curiosity/c9159a48dd7971fb6adf5924eb7d346a29ce9b2d .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/580221153/usb_device_init_data.o ../src/config/pic32mzw1_curiosity/usb_device_init_data.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/tasks.o: ../src/config/pic32mzw1_curiosity/tasks.c  .generated_files/flags/pic32mzw1_curiosity/75af2096992e714f7b46488ed7779e872c451ca7 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/tasks.o.d" -o ${OBJECTDIR}/_ext/580221153/tasks.o ../src/config/pic32mzw1_curiosity/tasks.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/580221153/pmu_init.o: ../src/config/pic32mzw1_curiosity/pmu_init.c  .generated_files/flags/pic32mzw1_curiosity/cafb6d8cf1db82fbd44d0526cc36558bf62fe49b .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/580221153" 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/580221153/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/580221153/pmu_init.o.d" -o ${OBJECTDIR}/_ext/580221153/pmu_init.o ../src/config/pic32mzw1_curiosity/pmu_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o: ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c  .generated_files/flags/pic32mzw1_curiosity/87c87db606243cb4690819e645f2f1c25e9519d9 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_core_m0plus_base.o ../src/kitprotocol_parser/hal/hal_core_m0plus_base.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_delay.o: ../src/kitprotocol_parser/hal/hal_delay.c  .generated_files/flags/pic32mzw1_curiosity/6a6571a067c58aff43c7fa60bded59677221848a .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_delay.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_delay.o ../src/kitprotocol_parser/hal/hal_delay.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o: ../src/kitprotocol_parser/hal/hal_i2c_harmony.c  .generated_files/flags/pic32mzw1_curiosity/25953ee555d7d1bafa069e53fd31a491234ab9a3 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/182291534" 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/182291534/hal_i2c_harmony.o ../src/kitprotocol_parser/hal/hal_i2c_harmony.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/pic32mzw1_curiosity/d174e6ab1bc024f2461571a8b8833b2c427dfd4e .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_init.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/pic32mzw1_curiosity/bc9e6dd99eedc263ed91aec2261736708c9d75d4 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_interpreter.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/pic32mzw1_curiosity/d128430a7f5cfc43fb0a9f2a1df245edf84b684 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_status.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o: ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/pic32mzw1_curiosity/9a3de7c0aff0e0229da6db37f1d2d5ce98bd28ec .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1594475898" 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1594475898/kit_protocol_utilities.o ../src/kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/611661181/usb_hid.o: ../src/kitprotocol_parser/usb_hid/usb_hid.c  .generated_files/flags/pic32mzw1_curiosity/9bc0652a46d26a8ee5c103098da782981e6f468c .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/611661181" 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/611661181/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/611661181/usb_hid.o.d" -o ${OBJECTDIR}/_ext/611661181/usb_hid.o ../src/kitprotocol_parser/usb_hid/usb_hid.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1870770870/crc_engines.o: ../src/kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/pic32mzw1_curiosity/913c6a2d4d03c47abca1e622fbcc5fc5b4213aa2 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1870770870" 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1870770870/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1870770870/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1870770870/crc_engines.o ../src/kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_device_info.o: ../src/kitprotocol_parser/kit_device_info.c  .generated_files/flags/pic32mzw1_curiosity/19435f6fc491e1085b313888047c1e8aa3124d03 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_device_info.o ../src/kitprotocol_parser/kit_device_info.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_hal_interface.o: ../src/kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/pic32mzw1_curiosity/d5ec260a7e6afdded33d802a8072b1e8aa507f5 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_hal_interface.o ../src/kitprotocol_parser/kit_hal_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/750497462/kit_host_interface.o: ../src/kitprotocol_parser/kit_host_interface.c  .generated_files/flags/pic32mzw1_curiosity/e7667700e756940fcf875bba58500ddde28ae294 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/750497462" 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/750497462/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/750497462/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/750497462/kit_host_interface.o ../src/kitprotocol_parser/kit_host_interface.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1_curiosity/5a3e2be449781a9286a34c7a058b9f99d126e09b .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../src/kitprotocol_parser" -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1_curiosity" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=c99  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1_curiosity/c165a0e359101415baa2f25a1952829aae8ab3b7 .generated_files/flags/pic32mzw1_curiosity/33d91cd38c7089b44b5cdf57de171cacef37dd51
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
