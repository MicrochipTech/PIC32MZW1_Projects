/**
 * \file
 *
 * \brief  KIT protocol file
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

#ifndef KIT_PROTOCOL_TASKS_H
#define KIT_PROTOCOL_TASKS_H

#include "kit_protocol_interpreter.h"

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus


/** \brief The function initialize kit protocol api
 *
 *  \param[in]    None
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void kit_protocol_init(void);

/** \brief The function provides a device version info contains device string, device interface, device address
 *
 *  \param[in]    None
 *
 *  \param[out]   message                references to string contains device string, device interface, device address
 *                message_length         references to size of message (number of bytes)
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_board_get_version(uint8_t *message, uint16_t *message_length);

/** \brief The function provide device firmware version
 *
 *  \param[in]    None
 *
 *  \param[out]   message_length         references to size of message (number of bytes)
 *
 *  \param[inout] message                As input, references to device type
 *                                       As output, references to device firmware version
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_board_get_firmware(uint8_t *message, uint16_t *message_length);

/** \brief The function provides a device type refernce to device id
 *
 *  \param[in]    device_id              references to device id
 *
 *  \param[out]   message_length         references to size of message (number of bytes)
 *
 *  \param[inout] message                As input, references to device index
 *                                       As output, references to device firmware version
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_board_get_device(uint32_t device_id, uint8_t *message, uint16_t *message_length);


/** \brief The function provides a all device list
 *
 *  \param[in]    None
 *
 *  \param[out]   message_length         references to size of message (number of bytes)
 *
 *  \param[inout] message                As input, references to device index
 *                                       As output, references to device firmware version
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_board_get_devices(uint8_t *message, uint16_t *message_length);

/** \brief The function discovers interface with this hardware
 *
 *  \param[in]    enabled                references to enable status
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_board_discover(bool enabled);

/** \brief The function provides a device application status
 *
 *  \param[in]    device_id             references to device id
 *
 *  \param[out]   message_length        references to size of message (number of bytes)
 *
 *  \param[inout] message               As input, references to device index
 *                                      As output, references to device firmware version
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_board_application(uint32_t device_id, uint8_t *message, uint16_t *message_length);

/** \brief This function sends a idle command to the device
 *
 *  \param[in]    device_id              references to device address
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_device_idle(uint32_t device_id);

/** \brief This function sends a sleep command to the device
 *
 *  \param[in]    device_id              references to device address
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_device_sleep(uint32_t device_id);

/** \brief This function sends a wake up command to the device
 *
 *  \param[in]    device_id              references to device address
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_device_wake(uint32_t device_id, uint8_t * message, uint16_t * length);

/** \brief This function reads a response from the I/O buffer of the device.
 *
 *  \param[in]    device_id              references to device address
 *                length                 references to pointer to expected number of receive bytes to request
 *
 *  \param[out]   message                references to pointer to space to receive the data
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_device_receive(uint32_t device_id, uint8_t * message, uint16_t * length);

/** \brief This function writes a command into the I/O buffer of the device.
 *
 *  \param[in]    device_id              reference to device address
 *                length                 references to number of bytes to send
 *                message                references to pointer to space to bytes to send
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_device_send(uint32_t device_id, uint8_t * message, uint16_t * length);

/** \brief This function send a talk command to the device.
 *
 *  \param[in]    device_id              reference to device address
 *                message                references to pointer to space to bytes to send
 *                length                 references to number of bytes to send
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_device_talk(uint32_t device_id, uint8_t * message, uint16_t * length);

/** \brief This function writes to memory
 *
 *  \param[in]    device_id              reference to device address
 *                message                references to pointer to space to bytes to send
 *                length                 references to number of bytes to send
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */

enum kit_protocol_status kit_device_mem_write(uint32_t device_id, uint8_t * message, uint16_t * length);

/** \brief This function reads from memory
 *
 *  \param[in]    device_id               reference to device address
 *                length                  references to number of bytes to send
 *
 *  \param[out]   message                 references to pointer to space to bytes to send
 *
 *  \param[inout] None
 *
 *  \return KIT_STATUS_SUCCESS on success, otherwise an error code
 */
enum kit_protocol_status kit_device_mem_read(uint32_t device_id, uint8_t * message, uint16_t * length);

/** \brief The function prints the string (debug message) in output console
 *
 *  \param[in]    str                   references to string (debug message)
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void print_kit_traffic(const char *str);

/** \brief The function receives and send message to device via USB interface
 *
 *  \param[in]    params
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void kit_protocol_task(void *params);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // KIT_PROTOCOL_TASKS_H