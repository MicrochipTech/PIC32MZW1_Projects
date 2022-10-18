/**
 * \file
 *
 * \brief HAL delay related functionality declaration.
 *
 * Copyright (c) 2014-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with Microchip products.
 * It is your responsibility to comply with third party license terms applicable
 * to your use of third party software (including open source software) that
 * may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE,
 * INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE
 * LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL
 * LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE
 * SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE
 * POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT
 * ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY
 * RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * \asf_license_stop
 *
 */


#ifndef _HAL_DELAY_H_INCLUDED
#define _HAL_DELAY_H_INCLUDED

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define atca_delay_ms   hal_delay_ms
#define atca_delay_us   hal_delay_us
    
/**
 * \addtogroup doc_driver_hal_delay Delay Driver
 *
 *@{
 */

/**
 * \brief Initialize Delay driver
 *
 * \param[in] hw The pointer to hardware instance
 */
void atca_delay_init(void *const hw);

/**
 * \brief Perform delay in us
 *
 * This function performs delay for the given amount of microseconds.
 *
 * \param[in] us The amount delay in us
 */
void atca_delay_us(const uint32_t us);

/**
 * \brief Perform delay in ms
 *
 * This function performs delay for the given amount of milliseconds.
 *
 * \param[in] ms The amount delay in ms
 */
void atca_delay_ms(const uint32_t ms);

/**
 * \brief Retrieve the current driver version
 *
 * \return Current driver version.
 */
uint32_t atca_delay_get_version(void);

/**@}*/
#ifdef __cplusplus
}
#endif
#endif /* _HAL_DELAY_H_INCLUDED */
