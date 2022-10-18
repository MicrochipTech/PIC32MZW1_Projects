/**
 * \file
 * \brief KIT Hardware abstraction layer for SAMD21 I2C Harmony driver
 *
 * Prerequisite: add SERCOM I2C Master Polled support to application in MHC
 *
 * \copyright (c) 2015-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip software
 * and any derivatives exclusively with Microchip products. It is your
 * responsibility to comply with third party license terms applicable to your
 * use of third party software (including open source software) that may
 * accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT,
 * SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE
 * OF ANY KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF
 * MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE
 * FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL
 * LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED
 * THE AMOUNT OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR
 * THIS SOFTWARE.
 */

#ifndef HAL_I2C_HARMONY_H_
#define HAL_I2C_HARMONY_H_

#include <stdint.h>
#include "kit_hal_interface.h"

#define HAL_I2C_I2C2

#if defined(HAL_I2C_I2C2)
#define I2C_IsBusy  I2C2_IsBusy
#define I2C_TransferSetup  I2C2_TransferSetup
#define I2C_Write  I2C2_Write
#define I2C_ErrorGet   I2C2_ErrorGet
#define I2C_Read   I2C2_Read
#elif defined(HAL_I2C_I2C1)
#define I2C_IsBusy  I2C1_IsBusy
#define I2C_TransferSetup  I2C1_TransferSetup
#define I2C_Write  I2C1_Write
#define I2C_ErrorGet   I2C1_ErrorGet
#define I2C_Read   I2C1_Read

#endif


enum kit_protocol_status i2c_interface_talk(uint32_t device_addr, uint8_t* data, uint16_t*
                                            tx_length, uint16_t* rx_length);
enum kit_protocol_status hal_i2c_receive_peripheral(uint32_t device_addr, uint8_t *rxdata, 
                                                    uint16_t rxlength);
enum kit_protocol_status read_ta_resp(uint32_t device_addr, uint8_t* rxdata, uint16_t* rx_size);
enum kit_protocol_status ca_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type);
enum kit_protocol_status ta_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type);
enum kit_protocol_status aes_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type);
/** @} */

#endif /* HAL_I2C_HARMONY_H_ */
