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

#include <string.h>
#include "kit_protocol_status.h"

static struct kit_protocol_error g_kit_error;

void kit_clear_last_error(void)
{
    g_kit_error.kit_error_program  = 0;
    g_kit_error.kit_error_location = 0;
    g_kit_error.kit_error_status   = 0;

    memset(g_kit_error.kit_error_message, 0, sizeof(g_kit_error.kit_error_message));
}


struct kit_protocol_error * kit_get_last_error(void)
{
    return &g_kit_error;
}


void kit_set_last_error(uint32_t program, uint32_t location, uint32_t status, char *message)
{
    g_kit_error.kit_error_program  = program;
    g_kit_error.kit_error_location = location;
    g_kit_error.kit_error_status   = status;

    memset(g_kit_error.kit_error_message, 0, sizeof(g_kit_error.kit_error_message));
    strncpy(g_kit_error.kit_error_message, message, sizeof(g_kit_error.kit_error_message));
}