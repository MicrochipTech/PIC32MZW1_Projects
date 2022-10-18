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

#include <stdbool.h>
#include "kit_protocol_interpreter.h"
#include "kit_protocol_init.h"
#include "kit_hal_interface.h"
#include "kit_host_interface.h"
#include "kitprotocol_parser_info.h"
#include "../config/../hal/hal_delay.h"
#include "../hal/hal_i2c_harmony.h"

static uint8_t command_separate = 0;
static uint8_t command_talk = 0;

// Global variable
static struct kit_interpreter_interface g_kit_interpreter_interface;

void kit_protocol_init(void)
{
    // Initialize the Kit Protocol Interpreter interface
    g_kit_interpreter_interface.board_get_version  = &kit_board_get_version;
    g_kit_interpreter_interface.board_get_firmware = &kit_board_get_firmware;
    g_kit_interpreter_interface.board_get_device   = &kit_board_get_device;
    g_kit_interpreter_interface.board_get_devices  = &kit_board_get_devices;
    g_kit_interpreter_interface.board_discover     = &kit_board_discover;
    g_kit_interpreter_interface.board_application  = &kit_board_application;
    g_kit_interpreter_interface.device_idle        = &kit_device_idle;
    g_kit_interpreter_interface.device_sleep       = &kit_device_sleep;
    g_kit_interpreter_interface.device_wake        = &kit_device_wake;
    g_kit_interpreter_interface.device_receive     = &kit_device_receive;
    g_kit_interpreter_interface.device_send        = &kit_device_send;
    g_kit_interpreter_interface.device_talk        = &kit_device_talk;
    g_kit_interpreter_interface.device_mem_write  = &kit_device_mem_write;
    g_kit_interpreter_interface.device_mem_read    = &kit_device_mem_read;

    kit_interpreter_init(&g_kit_interpreter_interface);
}

enum kit_protocol_status kit_board_get_version(uint8_t *message, uint16_t *message_length)

{
    uint16_t max_message_length = kit_interpreter_get_max_message_length();
    interface_id_t device_interface = DEVKIT_IF_UNKNOWN;
    device_info_t *device_info;
    const char *interface_string[] = { "no_device ", "SPI ", "TWI ", "SWI " };
    const char* device_string;
    uint16_t response_index = 0;
    uint16_t data_length = 1;
    char response[2];


    if ((message == NULL) || (message_length == NULL))
    {
        return KIT_STATUS_INVALID_PARAM;
    }

    // Reset the returned message information
    memset(message, 0, max_message_length);
    *message_length = 0;

    device_interface = hardware_interface_discover();


    // Copy version string into response buffer.
    strcpy((char*)message, kitprotocol_parser_string_short);
    if (device_interface != DEVKIT_IF_UNKNOWN)
    {
        // Append device type to response.
        device_info = get_device_info(0);
        device_string = get_device_string(device_info->device_type);
        if (device_string)
        {
            strcat((char*)message, device_string);
        }
    }
    // Append interface type to response.
    strcat((char*)message, interface_string[device_interface]);
    response_index = strlen((char*)message);

    // If device was found, append its address / selector byte.
    // Skip one byte for the status.
    if (device_interface != DEVKIT_IF_UNKNOWN)
    {
        data_length++;
        message[response_index + 1] = device_info->bus_type == DEVKIT_IF_I2C
                                      ? device_info->address : device_info->device_index;
    }

    response[0] = KIT_MESSAGE_DELIMITER;
    response[1] = '\0';
    strcat((char*)message, (char*)response);


    *message_length = strlen((char*)&message[0]);

    return KIT_STATUS_SUCCESS;
}

enum kit_protocol_status kit_board_get_firmware(uint8_t *message, uint16_t *message_length)
{
    uint16_t response_index = 0;
    enum kit_protocol_status status = KIT_STATUS_SUCCESS;

    switch (message[0])
    {
    case 0:     // kit version
        strcpy((char*)message, kitprotocol_parser_string);
        response_index = strlen((char*)message);
        sprintf((char*)&message[response_index], "%02X(%02X%02X%02X)%c", KIT_STATUS_SUCCESS, kitprotocol_parser_version[0], kitprotocol_parser_version[1], kitprotocol_parser_version[2], KIT_MESSAGE_DELIMITER);
        *message_length = strlen((char*)&message[0]);
        break;

    case 1:     // SHA204 library version
        strcpy((char*)message, sha204a_string);
        response_index = strlen((char*)message);
        sprintf((char*)&message[response_index], "%02X(%02X%02X%02X)%c", KIT_STATUS_SUCCESS, sha204_version[0], sha204_version[1], sha204_version[2], KIT_MESSAGE_DELIMITER);
        *message_length = strlen((char*)message);
        break;

    case 2:     // AES132 library version
        strcpy((char*)message, aes132a_string);
        response_index = strlen((char*)message);
        sprintf((char*)&message[response_index], "%02X(%02X%02X%02X)%c", KIT_STATUS_SUCCESS, aes132_version[0], aes132_version[1], aes132_version[2], KIT_MESSAGE_DELIMITER);
        *message_length = strlen((char*)message);
        break;

    case 3:     // ECCx08 library version
        strcpy((char*)message, ecc108a_string);
        response_index = strlen((char*)message);
        sprintf((char*)&message[response_index], "%02X(%02X%02X%02X)%c", KIT_STATUS_SUCCESS, eccx08_version[0], eccx08_version[1], eccx08_version[2], KIT_MESSAGE_DELIMITER);
        *message_length = strlen((char*)message);
        break;

    default:
        status = KIT_STATUS_INVALID_PARAM;
        break;
    }


    return status;
}

enum kit_protocol_status kit_board_get_device(uint32_t device_id, uint8_t *message, uint16_t *message_length)
{
    device_info_t *device_info;
    const char *interface_string[] = { "no_device ", "SPI ", "TWI ", "SWI " };
    const char* device_string;
    uint16_t response_index = 0;
    uint8_t status = KIT_STATUS_COMMAND_NOT_VALID;

    device_info = get_device_info(message[0]);
    if (!device_info)
    {
        status = KIT_STATUS_NO_DEVICE;
        return status;
    }


    device_string = get_device_string(device_info->device_type);
    if (device_string)
    {
        strcpy((char*)message, device_string);
    }
    else if (device_info->device_type == DEVICE_TYPE_UNKNOWN)
    {
        strcpy((char*)message, interface_string[0]);
        response_index = strlen((char*)message);
        sprintf((char*)&message[response_index ], "%c", KIT_MESSAGE_DELIMITER);
        *message_length = strlen((char*)&message[0]);
        return KIT_STATUS_NO_DEVICE;
    }
    else
    {
        strcpy((char*)message, "unknown_device");
    }

    if (device_info->bus_type == DEVKIT_IF_I2C)
    {
        // Append interface type to response.
        strcat((char*)message, interface_string[2]);
        response_index = strlen((char*)message);

    }

    else if (device_info->bus_type == DEVKIT_IF_SWI)
    {
        strcat((char*)message, interface_string[3]);
        response_index = strlen((char*)message);
    }
    else if (device_info->bus_type == DEVKIT_IF_SPI)
    {
        strcat((char*)message, interface_string[1]);
        response_index = strlen((char*)message);
    }

    else
    {
        strcat((char*)message, interface_string[0]);
        response_index = strlen((char*)message);
        return KIT_STATUS_NO_DEVICE;
    }

    sprintf((char*)&message[response_index], "%02X(%02X)%c", KIT_STATUS_SUCCESS, device_info->address, KIT_MESSAGE_DELIMITER);

    *message_length = strlen((char*)&message[0]);

    return KIT_STATUS_SUCCESS;
}

enum kit_protocol_status kit_board_get_devices(uint8_t *message, uint16_t *message_length)
{
    return KIT_STATUS_SUCCESS;
}

enum kit_protocol_status kit_board_discover(bool enabled)
{
    hardware_interface_discover();
    return KIT_STATUS_SUCCESS;
}

enum kit_protocol_status kit_board_application(uint32_t device_id, uint8_t *message, uint16_t *message_length)
{
    return KIT_STATUS_SUCCESS;
}

enum kit_protocol_status kit_device_idle(uint32_t device_id)
{
    command_separate = 1;
    return idle(device_id);
}

enum kit_protocol_status kit_device_sleep(uint32_t device_id)
{
    command_separate = 1;
    return sleep(device_id);
}

enum kit_protocol_status kit_device_wake(uint32_t device_id, uint8_t * message, uint16_t * length)
{
    enum kit_protocol_status status = !KIT_STATUS_SUCCESS;
    uint8_t wake_max_delay_time = 15;

    *length = 4;
    wake(device_id);
    do
    {
        if ((status = receive(device_id, message, length)) == KIT_STATUS_SUCCESS)
        {
            break;
        }

        kit_delay_ms(2);
    }
    while (wake_max_delay_time-- > 0);

    return status;
}

enum kit_protocol_status kit_device_receive(uint32_t device_id, uint8_t * message, uint16_t * length)
{
    return receive(device_id, message, length);
}

enum kit_protocol_status kit_device_send(uint32_t device_id, uint8_t * message, uint16_t * length)
{
    enum kit_protocol_status status;

    status = send(device_id, message, length);
    *length = 0;  //For send command response will be kitstatus "00()\n" 
    return status;
}

enum kit_protocol_status kit_device_talk(uint32_t device_id, uint8_t * message, uint16_t * length)
{
    const char *command_string = NULL;
    device_info_t *select_handle;
    device_type_t dev_type = DEVICE_TYPE_UNKNOWN;
    uint8_t i;

    for (i = 0; i < MAX_DISCOVER_DEVICES; i++)
    {
        select_handle = get_device_info(i);
        if (select_handle->address == device_id)
        {
            dev_type = select_handle->device_type;
            break;
        }
    }

    command_string = get_command_string(dev_type, message[1]);

    if (command_string)
    {
        printf("........%s\r\n", command_string);
    }
    else
    {
        printf("%s", "\r\n");
    }

    return talk(device_id, message, length);


}

enum kit_protocol_status kit_device_mem_write(uint32_t device_id, uint8_t * message, uint16_t * length)
{
    return KIT_STATUS_SUCCESS;
}

enum kit_protocol_status kit_device_mem_read(uint32_t device_id, uint8_t * message, uint16_t * length)
{
    return KIT_STATUS_SUCCESS;
}

void print_kit_traffic(const char *traffic_header)
{
    char traffic_data[500];
    uint16_t traffic_data_length = sizeof(traffic_data);
    char *ptr;

    if (*host_msg_buffer_length < traffic_data_length)
    {
        traffic_data_length = *host_msg_buffer_length;
    }
    memcpy(traffic_data, host_msg_buffer, traffic_data_length);

    ptr = strchr(traffic_data, KIT_MESSAGE_DELIMITER);
    if (ptr != NULL)
    {
        *ptr = '\0';
    }
    if (command_separate)
    {
        command_separate = 0;
        printf("%s: %s\r\n\n", traffic_header, traffic_data);
    }
    else if (command_talk)
    {
        command_talk = 0;
        printf("%s: %s", traffic_header, traffic_data);
    }
    else
    {
        printf("%s: %s\r\n", traffic_header, traffic_data);
    }
    
    
}

void kit_protocol_task(void *params)
{
    if (*host_message_received)
    {
        if ((strstr((char*)host_msg_buffer, ":t") != NULL) || (strstr((char*)host_msg_buffer, ":T") != NULL) )
        {
            command_talk = 1;
        }

        print_kit_traffic("Received");
        // Parse the received message and send & receive command reponse to device
        kit_interpreter_handle_message( (char*)host_msg_buffer, host_msg_buffer_length);
        print_kit_traffic("Sent");
        // send response to host
        send_device_response_to_host(&host_msg_buffer[0], *host_msg_buffer_length);
        // reset the message buffer length
        *host_msg_buffer_length = 0;
        // reset the message received bool variable
        *host_message_received = 0;
    }
}