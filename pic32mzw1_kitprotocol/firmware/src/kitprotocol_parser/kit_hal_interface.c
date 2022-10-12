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

#include "kit_hal_interface.h"

static device_info_t device_info[MAX_DISCOVER_DEVICES];
static const char *ext_header_string[] = { "EXT1 ", "EXT2 ", "EXT3 ", "MICROBUS" };

enum kit_protocol_status hal_iface_init(interface_id_t iface)
{
    enum kit_protocol_status status = KIT_STATUS_INVALID_PARAM;

    switch (iface)
    {
    case DEVKIT_IF_I2C:
            #ifdef KIT_HAL_I2C
        init = &hal_i2c_init;
        deinit = &hal_i2c_deinit;
        discover = &hal_i2c_discover;
        wake = &hal_i2c_wake;
        idle = &hal_i2c_idle;
        sleep = &hal_i2c_sleep;
        talk = &hal_i2c_talk;
        send = &hal_i2c_send;
        receive = &hal_i2c_receive;
        status = KIT_STATUS_SUCCESS;
            #endif
        break;

    case DEVKIT_IF_SWI:
            #ifdef KIT_HAL_SWI
        init = &hal_swi_init;
        deinit = &hal_swi_deinit;
        discover = &hal_swi_discover;
        wake = &hal_swi_wake;
        idle = &hal_swi_idle;
        sleep = &hal_swi_sleep;
        talk = &hal_swi_talk;
        send = &hal_swi_send;
        receive = &hal_swi_receive;
        status = KIT_STATUS_SUCCESS;
            #endif
        break;

    case DEVKIT_IF_SPI:
            #ifdef KIT_HAL_SPI
        init = &hal_spi_init;
        deinit = &hal_spi_deinit;
        discover = &hal_spi_discover;
        wake = &hal_spi_wake;
        idle = &hal_spi_idle;
        sleep = &hal_spi_sleep;
        talk = &hal_spi_talk;
        send = &hal_spi_send;
        receive = &hal_spi_receive;
        status = KIT_STATUS_SUCCESS;
            #endif
        break;

    case DEVKIT_IF_LAST:
    case DEVKIT_IF_UART:
    case DEVKIT_IF_UNKNOWN:
    default:
        break;

    }
    return status;
}

device_info_t *get_device_info(uint8_t index)
{
    return &device_info[index];
}

interface_id_t hardware_interface_discover(void)
{
    uint8_t total_device_count = 0;
    uint8_t device_count = 0;
    const char* device_string;
    const char* header_string;

    memset(device_info, 0, sizeof(device_info));

    #ifdef KIT_HAL_SWI
    hal_iface_init(DEVKIT_IF_SWI);
    init();
    discover(&device_info[total_device_count], &device_count);
    total_device_count += device_count;
    device_count = 0;
    #endif

    #ifdef KIT_HAL_I2C
    hal_iface_init(DEVKIT_IF_I2C);
    init();
    discover(&device_info[total_device_count], &device_count);
    total_device_count += device_count;
    device_count = 0;
    #endif

    #ifdef KIT_HAL_SPI
    hal_iface_init(DEVKIT_IF_SPI);
    init();
    discover(&device_info[total_device_count], &device_count);
    total_device_count += device_count;
    device_count = 0;
    #endif

    for (uint8_t device_index = 0; device_index < total_device_count; device_index++)
    {
        if (device_info[device_index].device_type != DEVICE_TYPE_UNKNOWN)
        {
            switch (device_info[device_index].bus_type)
            {
            case DEVKIT_IF_SWI:
                device_string = get_device_string(device_info[device_index].device_type);
                header_string = get_header_string(device_info[device_index].header);
                printf("\nSWI %s %s\r", device_string, header_string);
                break;

            case DEVKIT_IF_I2C:
                device_string = get_device_string(device_info[device_index].device_type);
                printf("\nI2C %s %02X\r", device_string, device_info[device_index].address);
                break;

            case DEVKIT_IF_SPI:
                device_string = get_device_string(device_info[device_index].device_type);
                header_string = get_header_string(device_info[device_index].header);
                printf("\nSPI %s %s\r", device_string, header_string);
                break;
            default:
                break;
            }
        }
    }
    return device_info[0].bus_type;
}

enum kit_protocol_status select_interface(interface_id_t interface)
{
    enum kit_protocol_status status;

    deinit();
    status = hal_iface_init(interface);

    return status;
}

const char* get_header_string(ext_header header)
{
    const char* ext_name = NULL;

    if (header <= EXT3_HEADER)
    {
        ext_name = ext_header_string[header];
    }
    else
    {
        ext_name = "";
    }
    return ext_name;
}