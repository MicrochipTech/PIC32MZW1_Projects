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

#include <ctype.h>
#include <stdlib.h>
#include <string.h>

#include "kit_protocol_utilities.h"

uint8_t kit_protocol_convert_hex_to_nibble(uint8_t hex)
{
    if ((hex <= '9') && (hex >= '0'))
    {
        hex -= '0';
    }
    else if ((hex <= 'F' ) && (hex >= 'A'))
    {
        hex -= ('A' - 10);
    }
    else if ((hex <= 'f') && (hex >= 'a'))
    {
        hex -= ('a' - 10);
    }
    else
    {
        hex = 0;
    }

    return hex;
}

uint8_t kit_protocol_convert_nibble_to_hex(uint8_t nibble)
{
    nibble &= 0x0F;

    if (nibble <= 0x09)
    {
        nibble += '0';
    }
    else
    {
        nibble += ('A' - 10);
    }

    return nibble;
}

uint16_t kit_protocol_convert_hex_to_binary(uint16_t length, uint8_t *buffer)
{
    uint16_t index = 0;
    uint16_t binary_index = 0;
    uint8_t hex = 0;

    if ((buffer == NULL) || (length < 2))
    {
        return 0;
    }

    for (index = 0, binary_index = 0; index < length; index += 2, binary_index++)
    {
        hex = buffer[index];
        buffer[binary_index]  = (kit_protocol_convert_hex_to_nibble(hex) << 4);

        hex = buffer[(index + 1)];
        buffer[binary_index] |= kit_protocol_convert_hex_to_nibble(hex);
    }

    return binary_index;
}

uint16_t kit_protocol_convert_binary_to_hex(uint16_t length, uint8_t *buffer)
{
    const size_t hex_buffer_size = ((length * 2) + 1);

    char *hex_buffer = NULL;
    uint16_t hex_length = 0;

    if ((buffer == NULL) || (length == 0))
    {
        return 0;
    }

    // Allocate the memory needed for the ASCII hex buffer
    hex_buffer = (char*)malloc(hex_buffer_size);
    memset(hex_buffer, 0, hex_buffer_size);

    for (uint16_t index = 0; index < length; index++)
    {
        hex_buffer[hex_length++] = (char)kit_protocol_convert_nibble_to_hex((buffer[index] >> 4));
        hex_buffer[hex_length++] = (char)kit_protocol_convert_nibble_to_hex((buffer[index] & 0x0F));
    }

    // Save the ASCII hex buffer
    memcpy(buffer, hex_buffer, hex_length + 1);

    // Free the allocated memory
    free(hex_buffer);

    return hex_length;
}

void kit_protocol_convert_to_lowercase(size_t length, char *buffer)
{
    if ((buffer != NULL) && (length > 0))
    {
        for (size_t index = 0; index < length; index++)
        {
            buffer[index] = tolower(buffer[index]);
        }
    }
}

void kit_protocol_convert_to_uppercase(size_t length, char *buffer)
{
    if ((buffer != NULL) && (length > 0))
    {
        for (size_t index = 0; index < length; index++)
        {
            buffer[index] = toupper(buffer[index]);
        }
    }
}
