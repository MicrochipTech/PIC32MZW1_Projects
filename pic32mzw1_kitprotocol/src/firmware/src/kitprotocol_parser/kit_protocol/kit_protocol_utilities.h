/**
 * \file
 *
 * \brief  KIT protocol utility functions
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


#ifndef KIT_PROTOCOL_UTILITIES_H
#define KIT_PROTOCOL_UTILITIES_H

#include <stddef.h>
#include <stdint.h>

// Set the packing alignment for the structure members
#pragma pack(push, 1)

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

/** \brief Returns the smallest of a and b. If both are equivalent, a is returned.
 *
 *  \param[in]    a                     The first value to check
 *                b                     The second value to check
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return The smallest out of the two variable
 */
#ifndef min
#define min(a, b) (((a) < (b)) ? (a) : (b))
#endif // min


/** \brief Converts an ASCII hex character to a nibble.
 *
 *  \param[in]    hex                    The ASCII hex value to be converted
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return The nibble value
 */
uint8_t kit_protocol_convert_hex_to_nibble(uint8_t hex);

/** \brief Converts an nibble to a ASCII hex character.
 *
 *  \param[in]    nibble                 The nibble value to be converted
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return The ASCII hex value
 */
uint8_t kit_protocol_convert_nibble_to_hex(uint8_t nibble);

/** \brief Converts an ASCII hex buffer to a binary buffer.
 *
 *  \param[in]    length                 The length of the ASCII buffer
 *
 *  \param[out]   None
 *
 *  \param[inout] buffer                 The buffer
 *                                       IN  - The ASCII hex buffer
 *                                       OUT - The binary buffer
 *
 *  \return The length of the binary buffer
 */
uint16_t kit_protocol_convert_hex_to_binary(uint16_t length, uint8_t *buffer);

/** \brief Converts an binary buffer to a ASCII null-terminated hex buffer.
 *
 *  \note  The buffer must have the allocated space needed to stored a
 *         null-terminated C ASCII string representation of the binary data.
 *
 *  \param[in]    length                 The length of the binary buffer
 *
 *  \param[out]   None
 *
 *  \param[inout] buffer                 The buffer
 *                                       IN  - The binary hex buffer
 *                                       OUT - The ASCII null-terminated hex buffer
 *
 *  \return The length of the ASCII null-terminated hex buffer
 */
uint16_t kit_protocol_convert_binary_to_hex(uint16_t length, uint8_t *buffer);

/** \brief Converts the null-terminated C string characters to lowercase characters.
 *
 *  \param[in]    length                The length, in bytes, of the null-terminated C string
 *
 *  \param[out]   None
 *
 *  \param[inout] buffer                The null-terminated C string buffer to be converted
 *
 *  \return None
 */
void kit_protocol_convert_to_lowercase(size_t length, char *buffer);

/** \brief Converts the null-terminated C string characters to uppercase characters.
 *
 *  \param[in]    length                 The length, in bytes, of the null-terminated C string
 *
 *  \param[out]   None
 *
 *  \param[inout] buffer                 The null-terminated C string buffer to be converted
 *
 *  \return None
 */
void kit_protocol_convert_to_uppercase(size_t length, char *buffer);

#ifdef __cplusplus
}
#endif // __cplusplus

// unset the packing alignment for the structure members
#pragma pack(pop)

#endif // KIT_PROTOCOL_UTILITIES_H