/**
 * \file
 *
 * \brief  Low-Level HAL - methods used to setup indirection to physical layer interface
 *
 * \copyright (c) 2018 Microchip Technology Inc. and its subsidiaries.
 *            You may use this software and any derivatives exclusively with
 *            Microchip products.
 *
 * \page License
 *
 * (c) 2018 Microchip Technology Inc. and its subsidiaries. You may use this
 * software and any derivatives exclusively with Microchip products.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIPS TOTAL LIABILITY ON ALL CLAIMS IN
 * ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
 * TERMS.
 */

#ifndef KIT_HAL_INTERFACE_H
#define KIT_HAL_INTERFACE_H

#include <string.h>
#include <stdio.h>
#include "kit_protocol/kit_protocol_status.h"
#include "kit_device_info.h"
#include "kitprotocol_parser_config.h"

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

/** \brief Standard HAL API initialize with physical interface API
 *
 *  \param[in]    iface                 references to the interface (I2C, SWI, SPI) need to be selected
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_iface_init(interface_id_t iface);

/** \brief Function provides the device information
 *
 *  \param[in]    index                 references to device index in structure
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return device information corresponding to index
 */
device_info_t *get_device_info(uint8_t index);

/** \brief The function discover CryptoAuth devices attached to host
 *
 *  \param[in]    None
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return interface
 */
interface_id_t hardware_interface_discover(void);

/** \brief Standard HAL API selected based on interface
 *
 *  \param[in]    interface              references to the interface (I2C, SWI, SPI) need to be selected
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise error code
 */
enum kit_protocol_status select_interface(interface_id_t interface);

/** \brief The function return header string
 *
 *  \param[in]    header            references to extension header (EXT1, EXT2, EXT3 ..)
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return header string
 */
const char* get_header_string(ext_header header);

/** \brief The function Initialize the HAL interface instances
 *
 *  \note Its a pointer that holds host interface hardware init
 *
 *  \param[in]    None
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void (*init)(void);

/** \brief The function deinitialize the HAL interface instances
 *
 *  \note Its a pointer that holds host interface hardware deinit
 *
 *  \param[in]    None
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void (*deinit)(void);

/** \brief The function discover the device attached to the HOST
 *
 *  \note Its a pointer that holds host interface hardware discover function
 *
 *  \param[in]    device_info           refernces to the device info attached to HOST
 *                device_count          references to the number od devices attached to HOST
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void (*discover)(device_info_t*, uint8_t*);

/** \brief The function send wake token to device
 *
 *  \note Its a pointer that holds host interface hardware wake function
 *
 *  \param[in]    device_addr            references to the device address
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status (*wake)(uint32_t);

/** \brief The function send sleep token to device
 *
 *  \note Its a pointer that holds host interface hardware sleep function
 *
 *  \param[in]    device_addr            references to the device address
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status (*sleep)(uint32_t);

/** \brief The function send idle token to device
 *
 *  \note Its a pointer that holds host interface hardware idle function
 *
 *  \param[in]    device_addr            references to the device address
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status (*idle)(uint32_t);

/** \brief The function send input message command to device
 *
 *  \note Its a pointer that holds host interface hardware send function
 *
 *  \param[in]    device_addr            references to the device address
 *                message                references to input message command
 *                length                 references to message length
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status (*send)(uint32_t, uint8_t*, uint16_t *);

/** \brief The function receives message response from device
 *
 *  \note Its a pointer that holds host interface hardware receive function
 *
 *  \param[in]    device_addr            references to device address
 *
 *  \param[out]   message                references to message received from device
 *
 *  \param[inout] length                 in  - references to expected message length to be received
 *                                       out - references to actual received message length from device
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status (*receive)(uint32_t, uint8_t*, uint16_t *);

/** \brief The function send message to device and recieve response from device
 *
 *  \note Its a pointer that holds host interface hardware talk function
 *
 *  \param[in]    device_addr            references to device address
 *
 *  \param[out]   None
 *
 *  \param[inout] message                in  - references to input message from host
 *                                       out - references to message response from device
 *                length                 in  - references to input mesaage length
 *                                       out - references to message reponse size
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status (*talk)(uint32_t, uint8_t*, uint16_t *);


//!< Following variable instances to be created by the application.
//!< This module links these apis to Kitprotocol parser for reference
#ifdef KIT_HAL_I2C
extern void hal_i2c_init(void);
extern void hal_i2c_deinit(void);
extern void hal_i2c_discover(device_info_t*, uint8_t*);
extern enum kit_protocol_status hal_i2c_wake(uint32_t);
extern enum kit_protocol_status hal_i2c_sleep(uint32_t);
extern enum kit_protocol_status hal_i2c_idle(uint32_t);
extern enum kit_protocol_status hal_i2c_send(uint32_t, uint8_t*, uint16_t*);
extern enum kit_protocol_status hal_i2c_receive(uint32_t, uint8_t*, uint16_t*);
extern enum kit_protocol_status hal_i2c_talk(uint32_t, uint8_t*, uint16_t*);
#endif

#ifdef KIT_HAL_SWI
extern void hal_swi_init(void);
extern void hal_swi_deinit(void);
extern void hal_swi_discover(device_info_t*, uint8_t*);
extern enum kit_protocol_status hal_swi_wake(uint32_t);
extern enum kit_protocol_status hal_swi_sleep(uint32_t);
extern enum kit_protocol_status hal_swi_idle(uint32_t);
extern enum kit_protocol_status hal_swi_send(uint32_t, uint8_t*, uint16_t*);
extern enum kit_protocol_status hal_swi_receive(uint32_t, uint8_t*, uint16_t*);
extern enum kit_protocol_status hal_swi_talk(uint32_t, uint8_t*, uint16_t*);
#endif

#ifdef KIT_HAL_SPI
extern void hal_spi_init(void);
extern void hal_spi_deinit(void);
extern void hal_spi_discover(device_info_t*, uint8_t*);
extern enum kit_protocol_status hal_spi_wake(uint32_t);
extern enum kit_protocol_status hal_spi_sleep(uint32_t);
extern enum kit_protocol_status hal_spi_idle(uint32_t);
extern enum kit_protocol_status hal_spi_send(uint32_t, uint8_t*, uint16_t*);
extern enum kit_protocol_status hal_spi_receive(uint32_t, uint8_t*, uint16_t*);
extern enum kit_protocol_status hal_spi_talk(uint32_t, uint8_t*, uint16_t*);
#endif

extern void kit_delay_ms(uint32_t delay_in_ms);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif /* KIT_HAL_INTERFACE_H */