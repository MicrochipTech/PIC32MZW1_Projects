/**
 * \file
 *
 * \brief  CRC calculation for the received data
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

#ifndef CRC_ENGINES_H
#define CRC_ENGINES_H
#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus


/** \brief The function calculates CRC
 *
 *  \param[in]    length   references to length of the data
 *                data     references to data for which crc will be calculated
 *
 *  \param[out]   crc      references to calculated crc for given data
 *
 *  \param[inout] None
 *
 *  \return None
 */
void calculate_sha_ecc_crc(uint8_t length, uint8_t *data, uint8_t *crc);

/** \brief The function verifies the CRC
 *
 *  \param[in]    response  references to input message (for which crc needs to be verified)
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return True on verified, otherwise false
 */
bool check_sha_ecc_crc(uint8_t *response);

/** \brief Calculates CRC over the given raw data and returns the CRC
 *
 *  \param[in]    length  Size of data not including the CRC byte positions
 *  \param[in]    data    Pointer to the data over which to compute the CRC
 *
 *  \param[out]   crc_out Pointer to the place where the two-bytes of CRC will be
 *                        returned here
 *
 *  \param[inout] None
 *
 *  \return None
 */
void calc_ta_crc(uint16_t length, uint8_t* data, uint16_t* crc_out);

/** \brief Calculates CRC over the given raw data. Compares the result with last 2 bytes
 *
 *  \param[in]    length  Size of data not including the CRC byte positions
 *  \param[in]    data    Pointer to the data over which to compute the CRC
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return True on verified, otherwise false
 */
bool check_ta_crc(uint8_t* data, uint16_t length);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // CRC_ENGINES_H