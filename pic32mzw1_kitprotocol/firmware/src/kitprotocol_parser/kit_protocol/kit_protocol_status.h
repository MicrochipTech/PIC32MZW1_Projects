/**
 * \file
 *
 * \brief  KIT protocol status
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

#ifndef KIT_PROTOCOL_STATUS_H
#define KIT_PROTOCOL_STATUS_H

#include <stdint.h>

// Set the packing alignment for the structure members
#pragma pack(push, 1)

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#define KIT_ERROR_MESSAGE_SIZE  (64)

enum kit_protocol_program
{
    KIT_PROGRAM_API         = 0x00,
    KIT_PROGRAM_INTERPRETER = 0x01
};

enum kit_protocol_location
{
    KIT_LOCATION_API_PARSE             = 0x00,
    KIT_LOCATION_API_SERIALIZE         = 0x01,
    KIT_LOCATION_INTERPRETER_PARSE     = 0x10,
    KIT_LOCATION_INTERPRETER_SERIALIZE = 0x11,
};

enum kit_protocol_status
{
    KIT_STATUS_SUCCESS               = 0x00,
    KIT_STATUS_FAILURE               = 0x01,
    KIT_STATUS_COMMAND_NOT_VALID     = 0x03,
    KIT_STATUS_COMMAND_NOT_SUPPORTED = 0x04,
    KIT_STATUS_NO_DEVICE             = 0xC5,
    KIT_STATUS_INVALID_PARAM         = 0xE2,
    KIT_STATUS_INVALID_ID            = 0xE3,
    KIT_STATUS_INVALID_SIZE          = 0xE4,
    KIT_STATUS_RX_FAIL               = 0xE6,
    KIT_STATUS_RX_NO_RESPONSE        = 0xE7,
    KIT_STATUS_TX_TIMEOUT            = 0xEA,
    KIT_STATUS_RX_TIMEOUT            = 0xEB,
    KIT_STATUS_SMALL_BUFFER          = 0xED,
    KIT_STATUS_COMM_FAIL             = 0xF0,
    KIT_STATUS_EXECUTION_ERROR       = 0xF4,
    KIT_STATUS_TX_FAIL               = 0xF7,
};

struct kit_protocol_error
{
    uint32_t kit_error_program;
    uint32_t kit_error_location;
    uint32_t kit_error_status;
    char     kit_error_message[KIT_ERROR_MESSAGE_SIZE];
};


/** \brief The function clears the kit error from buffer
 *
 *  \param[in]    None
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void kit_clear_last_error(void);

/** \brief The function returns the information about last error occurred in the Kit
 *
 *  \param[in]    None
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return last kit error message (kit_protocol_error structure)
 */
struct kit_protocol_error * kit_get_last_error(void);


/** \brief The function write the buffer with last error info
 *
 *  \param[in]    program                references to program in which error occurred
 *                location               references to location address where error occurred
 *                status                 references to error status
 *                message                references to last error message
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void kit_set_last_error(uint32_t program, uint32_t location, uint32_t status, char *message);

#ifdef __cplusplus
}
#endif // __cplusplus

// unset the packing alignment for the structure members
#pragma pack(pop)

#endif // KIT_PROTOCOL_STATUS_H