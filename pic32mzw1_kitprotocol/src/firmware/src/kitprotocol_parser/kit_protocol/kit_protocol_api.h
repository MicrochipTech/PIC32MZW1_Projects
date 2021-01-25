/**
 * \file
 *
 * \brief  KIT protocol function declaration
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

#ifndef KIT_PROTOCOL_API_H
#define KIT_PROTOCOL_API_H

#include <stdbool.h>
#include <stdint.h>
#include "kit_protocol_status.h"

// Set the packing alignment for the structure members
#pragma pack(push, 1)

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#define KIT_LAYER_DELIMITER       ':'
#define KIT_DATA_BEGIN_DELIMITER  '('
#define KIT_DATA_END_DELIMITER    ')'
#define KIT_MESSAGE_DELIMITER     '\n'

/**
 * \brief The Kit Protocol maximum message size.
 * \note
 *    Send:    <target>:<command>(optional hex bytes to send)\n
 *    Receive: <status hex byte>(optional hex bytes of response)\n
 */
#ifdef KIT_PROTOCOL_MESSAGE_MAX
#define KIT_MESSAGE_SIZE_MAX       KIT_PROTOCOL_MESSAGE_MAX
#else
#define KIT_MESSAGE_SIZE_MAX       (2500)
#endif // KIT_PROTOCOL_MESSAGE_MAX

#define KIT_SECTION_NAME_SIZE_MAX  KIT_MESSAGE_SIZE_MAX  //! The maximum message section size
#define KIT_VERSION_SIZE_MAX       (32)                  //! The maximum Kit Protocol version size
#define KIT_FIRMWARE_SIZE_MAX      (32)                  //! The maximum Kit Protocol firmware size


#ifdef __cplusplus
}
#endif // __cplusplus

// unset the packing alignment for the structure members
#pragma pack(pop)

#endif // KIT_PROTOCOL_API_H