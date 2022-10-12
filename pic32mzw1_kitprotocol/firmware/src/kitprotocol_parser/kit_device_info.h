/**
 * \file
 *
 * \brief  CryptoAuth Device utility header file
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

#ifndef KIT_DEVICE_INFO_H_
#define KIT_DEVICE_INFO_H_

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

static const char sha204_version[]  = { 1, 4, 0 };      //!< SHA204 library version string
static const uint8_t aes132_version[]  = { 1, 1, 0 }; //!< AES132 library version string
static const uint8_t eccx08_version[]  = { 1, 2, 0 }; //!< ECCx08 library version string

static const char sha204_string[]  = "SHA204 ";       //!< SHA204 string
static const char sha204a_string[] = "SHA204A ";      //!< SHA204A string
static const char aes132_string[]  = "AES132 ";       //!< AES132 string
static const char aes132a_string[] = "AES132A ";      //!< AES132A string
static const char ecc108_string[]  = "ECC108 ";       //!< ECC108 string
static const char ecc108a_string[] = "ECC108A ";      //!< ECC108A string
static const char ecc508a_string[] = "ECC508A ";      //!< ECC508A string
static const char ecc608a_string[] = "ECC608A ";      //!< ECC608A string
static const char sha206a_string[] = "SHA206A ";      //!< SHA206A string
static const char ta100_string[]   = "TA100 ";        //!< TA100 string

static const char aes_string[] = "AES";
static const char authorize_string[] = "Authorize";
static const char checkmac_string[] = "CheckMac";
static const char counter_string[] = "Counter";
static const char create_string[] = "Create";
static const char delete_string[] = "Delete";
static const char derivekey_string[] = "DeriveKey";
static const char devupdate_string[] = "DevUpdate";
static const char ecdh_string[] = "ECDH";
static const char export_string[] = "Export";
static const char fcconfig_string[] = "FcConfig";
static const char gendig_string[] = "GenDig";
static const char genkey_string[] = "GenKey";
static const char import_string[] = "Import";
static const char info_string[] = "Info";
static const char kdf_string[] = "KDF";
static const char lock_string[] = "Lock";
static const char mac_string[] = "MAC";
static const char managecert_string[] = "ManageCert";
static const char nonce_string[] = "Nonce";
static const char power_string[] = "Power";
static const char priv_write_string[] = "PrivWrite";
static const char random_string[] = "Random";
static const char read_string[] = "Read";
static const char rsaenc_string[] = "RsaEnc";
static const char secure_boot_string[] = "SecureBoot";
static const char selftest_string[] = "SelfTest";
static const char sequence_string[] = "Sequence";
static const char sign_string[] = "Sign";
static const char sha_string[] = "SHA";
static const char update_extra_string[] = "UpdateExtra";
static const char verify_string[] = "Verify";
static const char write_string[] = "Write";

static const char auth_string[] = "Auth";
static const char authcheck_string[] = "AuthCheck";
static const char authcompute_string[] = "AuthCompute";
static const char blockread_string[] = "BlockRead";
static const char crunch_string[] = "Crunch";
static const char decread_string[] = "DecRead";
static const char decrypt_string[] = "Decrypt";
static const char encread_string[] = "EncRead";
static const char encrypt_string[] = "Encrypt";
static const char encwrite_string[] = "EncWrite";
static const char keycreate_string[] = "KeyCreate";
static const char keyimport_string[] = "KeyImport";
static const char keyload_string[] = "KeyLoad";
static const char keytransfer_string[] = "KeyTransfer";
static const char legacy_string[] = "Legacy";
static const char noncecompute_string[] = "NonceCompute";
static const char reset_string[] = "Reset";
static const char sleep_string[] = "Sleep";
static const char writecompute_string[] = "WriteCompute";


/** \name opcodes for ATATECC Commands
   @{ */
#define ATCA_CHECKMAC                   ((uint8_t)0x28)         //!< CheckMac command op-code
#define ATCA_DERIVE_KEY                 ((uint8_t)0x1C)         //!< DeriveKey command op-code
#define ATCA_INFO                       ((uint8_t)0x30)         //!< Info command op-code
#define ATCA_GENDIG                     ((uint8_t)0x15)         //!< GenDig command op-code
#define ATCA_GENKEY                     ((uint8_t)0x40)         //!< GenKey command op-code
#define ATCA_HMAC                       ((uint8_t)0x11)         //!< HMAC command op-code
#define ATCA_LOCK                       ((uint8_t)0x17)         //!< Lock command op-code
#define ATCA_MAC                        ((uint8_t)0x08)         //!< MAC command op-code
#define ATCA_NONCE                      ((uint8_t)0x16)         //!< Nonce command op-code
#define ATCA_PAUSE                      ((uint8_t)0x01)         //!< Pause command op-code
#define ATCA_PRIVWRITE                  ((uint8_t)0x46)         //!< PrivWrite command op-code
#define ATCA_RANDOM                     ((uint8_t)0x1B)         //!< Random command op-code
#define ATCA_READ                       ((uint8_t)0x02)         //!< Read command op-code
#define ATCA_SIGN                       ((uint8_t)0x41)         //!< Sign command op-code
#define ATCA_UPDATE_EXTRA               ((uint8_t)0x20)         //!< UpdateExtra command op-code
#define ATCA_VERIFY                     ((uint8_t)0x45)         //!< GenKey command op-code
#define ATCA_WRITE                      ((uint8_t)0x12)         //!< Write command op-code
#define ATCA_ECDH                       ((uint8_t)0x43)         //!< ECDH command op-code
#define ATCA_COUNTER                    ((uint8_t)0x24)         //!< Counter command op-code
#define ATCA_SHA                        ((uint8_t)0x47)         //!< SHA command op-code
#define ATCA_AES                        ((uint8_t)0x51)         //!< AES command op-code
#define ATCA_KDF                        ((uint8_t)0x56)         //!< KDF command op-code
#define ATCA_SECUREBOOT                 ((uint8_t)0x80)         //!< Secure Boot command op-code
#define ATCA_SELFTEST                   ((uint8_t)0x77)         //!< Self test command op-code
/** @} */

/** \name opcodes for ATATECC Commands
   @{ */
#define ATCA_AES_AUTH                   ((uint8_t)0x03)     //!< Auth command op-code
#define ATCA_AES_AUTH_CHECK             ((uint8_t)0x15)     //!< AuthCheck command op-code
#define ATCA_AES_AUTH_COMPUTE           ((uint8_t)0x14)     //!< AuthCompute command op-code
#define ATCA_AES_BLOCK_READ             ((uint8_t)0x10)     //!< BlockRead command op-code
#define ATCA_AES_COUNTER                ((uint8_t)0x0A)     //!< Counter command op-code
#define ATCA_AES_CRUNCH                 ((uint8_t)0x0B)     //!< Crunch command op-code
#define ATCA_AES_DEC_READ               ((uint8_t)0x17)     //!< Decrypt read command op-code
#define ATCA_AES_DECRYPT                ((uint8_t)0x07)     //!< Decrypt command op-code
#define ATCA_AES_ENC_READ               ((uint8_t)0x04)     //!< EncRead command op-code
#define ATCA_AES_ENCRYPT                ((uint8_t)0x06)     //!< Encrypt command op-code
#define ATCA_AES_ENC_WRITE              ((uint8_t)0x05)     //!< EncWrite command op-code
#define ATCA_AES_INFO                   ((uint8_t)0x0C)     //!< Info command op-code
#define ATCA_AES_KEY_CREATE             ((uint8_t)0x08)     //!< KeyCreate command op-code
#define ATCA_AES_KEY_IMPORT             ((uint8_t)0x19)     //!< KeyImport command op-code
#define ATCA_AES_KEY_LOAD               ((uint8_t)0x09)     //!< KeyLoad command op-code
#define ATCA_AES_KEY_TRANSFER           ((uint8_t)0x1A)     //!< KeyTransfer command op-code
#define ATCA_AES_LEGACY                 ((uint8_t)0x0F)     //!< Legacy command op-code
#define ATCA_AES_LOCK                   ((uint8_t)0x0D)     //!< Lock command op-code
#define ATCA_AES_NONCE                  ((uint8_t)0x01)     //!< Nonce command op-code
#define ATCA_AES_NONCE_COMPUTE          ((uint8_t)0x13)     //!< NonceCompute command op-code
#define ATCA_AES_RANDOM                 ((uint8_t)0x02)     //!< Random command op-code
#define ATCA_AES_RESET                  ((uint8_t)0x00)     //!< Reset command op-code
#define ATCA_AES_SLEEP                  ((uint8_t)0x11)     //!< Sleep command op-code
#define ATCA_AES_WRITE_COMPUTE          ((uint8_t)0x16)     //!< Write compute command op-code
/** @} */

/** \name opcodes for TA100 Commands
   @{ */
#define ATCA_TA_AES                     ((uint8_t)0x1A)      //!< AES command opcode
#define ATCA_TA_AUTHORIZE               ((uint8_t)0x16)      //!< Authorize command opcode
#define ATCA_TA_COUNTER                 ((uint8_t)0x0E)      //!< Counter command opcode
#define ATCA_TA_CREATE                  ((uint8_t)0x06)      //!< Create command opcode
#define ATCA_TA_DELETE                  ((uint8_t)0x13)      //!< Delete command opcode
#define ATCA_TA_DEVUPDATE               ((uint8_t)0x0B)      //!< Dev Update command opcode
#define ATCA_TA_ECDH                    ((uint8_t)0x11)      //!< ECDH command opcode
#define ATCA_TA_EXPORT                  ((uint8_t)0x05)      //!< Export command opcode
#define ATCA_TA_FCCONFIG                ((uint8_t)0x02)      //!< FC Config command opcode
#define ATCA_TA_IMPORT                  ((uint8_t)0x04)      //!< Import command opcode
#define ATCA_TA_INFO                    ((uint8_t)0x00)      //!< Info command opcode
#define ATCA_TA_KDF                     ((uint8_t)0x17)      //!< Kdf command opcode
#define ATCA_TA_KEYGEN                  ((uint8_t)0x12)      //!< KeyGen command opcode
#define ATCA_TA_LOCK                    ((uint8_t)0x0D)      //!< Lock command opcode
#define ATCA_TA_MAC                     ((uint8_t)0x0A)      //!< MAC command opcode
#define ATCA_TA_MANAGECERT              ((uint8_t)0x0C)      //!< Manage cert command opcode
#define ATCA_TA_POWER                   ((uint8_t)0x03)      //!< Power command opcode
#define ATCA_TA_RANDOM                  ((uint8_t)0x09)      //!< Random command opcode
#define ATCA_TA_READ                    ((uint8_t)0x07)      //!< Read command opcode
#define ATCA_TA_RSAENC                  ((uint8_t)0x18)      //!< RSAENC command opcode
#define ATCA_TA_SECUREBOOT              ((uint8_t)0x01)      //!< Secure Boot command opcode
#define ATCA_TA_SELFTEST                ((uint8_t)0x14)      //!< SelfTest command opcode
#define ATCA_TA_SEQUENCE                ((uint8_t)0x15)      //!< Sequence command opcode
#define ATCA_TA_SHA                     ((uint8_t)0x19)      //!< SHA command opcode
#define ATCA_TA_SIGN                    ((uint8_t)0x0F)      //!< Sign command opcode
#define ATCA_TA_VERIFY                  ((uint8_t)0x10)      //!< Verify command opcode
#define ATCA_TA_WRITE                   ((uint8_t)0x08)      //!< Write command opcode
/** @} */

/** \name Definitions of Data and Packet Sizes
   @{ */
#define ECC108_RSP_SIZE_VAL             ((uint8_t)7)                         //!< size of response packet containing four bytes of data
#define ECC108_KEY_SIZE                 (32)                                 //!< size of key
#define ECC108_KEY_COUNT                (16)                                 //!< number of keys
#define ECC108_CONFIG_SIZE              (128)                                //!< size of configuration zone
#define ECC108_OTP_SIZE                 (64)                                 //!< size of OTP zone
#define ECC108_DATA_SIZE                (ECC108_KEY_COUNT * ECC108_KEY_SIZE) //!< size of data zone
/** @} */

/** \name Definitions for Zone and Address Parameters
   @{ */
#define ECC108_ZONE_CONFIG              ((uint8_t)0x00) //!< Configuration zone
#define ECC108_ZONE_OTP                 ((uint8_t)0x01) //!< OTP (One Time Programming) zone
#define ECC108_ZONE_DATA                ((uint8_t)0x02) //!< Data zone
#define ECC108_ZONE_MASK                ((uint8_t)0x03) //!< Zone mask
#define ECC108_ZONE_COUNT_FLAG          ((uint8_t)0x80) //!< Zone bit 7 set: Access 32 bytes, otherwise 4 bytes.
#define ECC108_ZONE_ACCESS_4            ((uint8_t)4)    //!< Read or write 4 bytes.
#define ECC108_ZONE_ACCESS_32           ((uint8_t)32)   //!< Read or write 32 bytes.
#define ECC108_ADDRESS_MASK_CONFIG      (0x001F)        //!< Address bits 5 to 7 are 0 for Configuration zone.
#define ECC108_ADDRESS_MASK_OTP         (0x000F)        //!< Address bits 4 to 7 are 0 for OTP zone.
#define ECC108_ADDRESS_MASK             (0x007F)        //!< Address bit 7 to 15 are always 0.
/** @} */

/** @} */

/** \name Definitions for the Nonce Command
   @{ */
#define NONCE_MODE_IDX                  ECC108_PARAM1_IDX      //!< Nonce command index for mode
#define NONCE_PARAM2_IDX                ECC108_PARAM2_IDX      //!< Nonce command index for 2. parameter
#define NONCE_INPUT_IDX                 ECC108_DATA_IDX        //!< Nonce command index for input data
#define NONCE_COUNT_SHORT               (27)                   //!< Nonce command packet size for 20 bytes of data
#define NONCE_COUNT_LONG                (39)                   //!< Nonce command packet size for 32 bytes of data
#define NONCE_MODE_MASK                 ((uint8_t)0x03)        //!< Nonce mode bits 2 to 7 are 0.
#define NONCE_MODE_SEED_UPDATE          ((uint8_t)0x00)        //!< Nonce mode: update seed
#define NONCE_MODE_NO_SEED_UPDATE       ((uint8_t)0x01)        //!< Nonce mode: do not update seed
#define NONCE_MODE_INVALID              ((uint8_t)0x02)        //!< Nonce mode 2 is invalid.
#define NONCE_MODE_PASSTHROUGH          ((uint8_t)0x03)        //!< Nonce mode: pass-through
#define NONCE_MODE_RANDOM_OUT           ((uint16_t)0x0000)     //!< Nonce mode: output RandOut or single byte of zero
#define NONCE_MODE_TEMPKEY_OUT          ((uint16_t)0x0080)     //!< Nonce mode: output RandOut or single byte of zero
#define NONCE_NUMIN_SIZE                (20)                   //!< Nonce data length
#define NONCE_NUMIN_SIZE_PASSTHROUGH    (32)                   //!< Nonce data length in pass-through mode (mode = 3)

/** @} */

/** \name Definitions for the GenKey Command
   @{ */
#define GENKEY_MODE_IDX                 ECC108_PARAM1_IDX     //!< GenKey command index for mode
#define GENKEY_KEYID_IDX                ECC108_PARAM2_IDX     //!< GenKey command index for key id
#define GENKEY_DATA_IDX                 (5)                   //!< GenKey command index for other data
#define GENKEY_COUNT                    ECC108_CMD_SIZE_MIN   //!< GenKey command packet size without "other data"
#define GENKEY_COUNT_DATA               (10)                  //!< GenKey command packet size with "other data"
#define GENKEY_OTHER_DATA_SIZE          (3)                   //!< GenKey size of "other data"
#define GENKEY_MODE_MASK                ((uint8_t)0x1C)       //!< GenKey mode bits 0 to 1 and 5 to 7 are 0
#define GENKEY_MODE_PRIVATE             ((uint8_t)0x04)       //!< GenKey mode: private key generation
#define GENKEY_MODE_PUBLIC              ((uint8_t)0x00)       //!< GenKey mode: public key calculation
#define GENKEY_MODE_DIGEST              ((uint8_t)0x10)       //!< GenKey mode: digest calculation
#define GENKEY_MODE_ADD_DIGEST          ((uint8_t)0x08)       //!< GenKey mode: additional digest calculation
/** @} */

/** \name Definitions for Indexes Common to All Commands
   @{ */
#define ECC108_COUNT_IDX                ( 0)                   //!< command packet index for count
#define ECC108_OPCODE_IDX               ( 1)                   //!< command packet index for op-code
#define ECC108_PARAM1_IDX               ( 2)                   //!< command packet index for first parameter
#define ECC108_PARAM2_IDX               ( 3)                   //!< command packet index for second parameter
#define ECC108_DATA_IDX                 ( 5)                   //!< command packet index for data load
/** @} */

/** \name Codes for ATECC108 Commands
   @{ */
#define ECC108_CHECKMAC              ((uint8_t)0x28) //!< CheckMac command op-code
#define ECC108_DERIVE_KEY            ((uint8_t)0x1C) //!< DeriveKey command op-code
#define ECC108_INFO                  ((uint8_t)0x30) //!< Info command op-code
#define ECC108_GENDIG                ((uint8_t)0x15) //!< GenDig command op-code
#define ECC108_GENKEY                ((uint8_t)0x40) //!< GenKey command op-code
#define ECC108_HMAC                  ((uint8_t)0x11) //!< HMAC command op-code
#define ECC108_LOCK                  ((uint8_t)0x17) //!< Lock command op-code
#define ECC108_MAC                   ((uint8_t)0x08) //!< MAC command op-code
#define ECC108_NONCE                 ((uint8_t)0x16) //!< Nonce command op-code
#define ECC108_PAUSE                 ((uint8_t)0x01) //!< Pause command op-code
#define ECC108_PRIVWRITE             ((uint8_t)0x46) //!< PrivWrite command op-code
#define ECC108_RANDOM                ((uint8_t)0x1B) //!< Random command op-code
#define ECC108_READ                  ((uint8_t)0x02) //!< Read command op-code
#define ECC108_SIGN                  ((uint8_t)0x41) //!< Sign command op-code
#define ECC108_UPDATE_EXTRA          ((uint8_t)0x20) //!< UpdateExtra command op-code
#define ECC108_VERIFY                ((uint8_t)0x45) //!< GenKey command op-code
#define ECC108_WRITE                 ((uint8_t)0x12) //!< Write command op-code
#define ECC108_SHA                   ((uint8_t)0x47) //!< Sign command op-code

#define ECC108_RSP_SIZE_MIN          ((uint8_t)4)    //!< minimum number of bytes in response
#define ECC108_RSP_SIZE_72           ((uint8_t)75)   //!< size of response packet containing 64 bytes data
#define ECC108_RSP_SIZE_64           ((uint8_t)67)   //!< size of response packet containing 64 bytes data
#define ECC108_RSP_SIZE_32           ((uint8_t)35)   //!< size of response packet containing 32 bytes data
#define ECC108_RSP_SIZE_MAX          ((uint8_t)100)  //!< maximum size of response packet (GenKey and Verify command)

/** \name Response Size Definitions
   @{ */
#define CHECKMAC_RSP_SIZE            ECC108_RSP_SIZE_MIN    //!< response size of DeriveKey command
#define DERIVE_KEY_RSP_SIZE          ECC108_RSP_SIZE_MIN    //!< response size of DeriveKey command
#define GENDIG_RSP_SIZE              ECC108_RSP_SIZE_MIN    //!< response size of GenDig command
#define GENKEY_RSP_SIZE_SHORT        ECC108_RSP_SIZE_MIN    //!< response size of GenKey command in Digest mode
#define GENKEY_RSP_SIZE_LONG         ECC108_RSP_SIZE_72     //!< response size of GenKey command when generating key
#define HMAC_RSP_SIZE                ECC108_RSP_SIZE_MAX    //!< response size of HMAC command
#define INFO_RSP_SIZE                ECC108_RSP_SIZE_VAL    //!< response size of Info command returns 4 bytes
#define LOCK_RSP_SIZE                ECC108_RSP_SIZE_MIN    //!< response size of Lock command
#define MAC_RSP_SIZE                 ECC108_RSP_SIZE_32     //!< response size of MAC command
#define NONCE_RSP_SIZE_SHORT         ECC108_RSP_SIZE_MIN    //!< response size of Nonce command with mode[0:1] = 3
#define NONCE_RSP_SIZE_LONG          ECC108_RSP_SIZE_32     //!< response size of Nonce command
#define PAUSE_RSP_SIZE               ECC108_RSP_SIZE_MIN    //!< response size of Pause command
#define PRIVWRITE_RSP_SIZE           ECC108_RSP_SIZE_MIN    //!< response size of PrivWrite command
#define RANDOM_RSP_SIZE              ECC108_RSP_SIZE_32     //!< response size of Random command
#define READ_4_RSP_SIZE              ECC108_RSP_SIZE_VAL    //!< response size of Read command when reading 4 bytes
#define READ_32_RSP_SIZE             ECC108_RSP_SIZE_32     //!< response size of Read command when reading 32 bytes
#define SIGN_RSP_SIZE                ECC108_RSP_SIZE_MAX    //!< response size of Sign command
#define UPDATE_RSP_SIZE              ECC108_RSP_SIZE_MIN    //!< response size of UpdateExtra command
#define VERIFY_RSP_SIZE              ECC108_RSP_SIZE_MIN    //!< response size of UpdateExtra command
#define WRITE_RSP_SIZE               ECC108_RSP_SIZE_MIN    //!< response size of Write command
/** @} */

//@}

//! enumeration for device types
typedef enum
{
    DEVICE_TYPE_UNKNOWN,   //!< unknown device
    DEVICE_TYPE_CM,        //!< CM, currently not supported
    DEVICE_TYPE_CRF,       //!< CRF, currently not supported
    DEVICE_TYPE_CMC,       //!< CMC, currently not supported
    DEVICE_TYPE_SA100S,    //!< SA100S, can be discovered, but is currently not supported
    DEVICE_TYPE_SA102S,    //!< SA102S, can be discovered, but is currently not supported
    DEVICE_TYPE_SA10HS,    //!< SA10HS, can be discovered, but is currently not supported
    DEVICE_TYPE_SHA204,    //!< SHA204 device
    DEVICE_TYPE_SHA204A,   //!< SHA204A device
    DEVICE_TYPE_AES132,    //!< AES132 device
    DEVICE_TYPE_AES132A,   //!< AES132A device
    DEVICE_TYPE_ECC108,    //!< ECC108 device
    DEVICE_TYPE_ECC108A,   //!< ECC108A device
    DEVICE_TYPE_ECC508A,   //!< ECC508A device
    DEVICE_TYPE_ECC608A,   //!< ECC608A device
    DEVICE_TYPE_SHA206A,   //!< SHA206A device
    DEVICE_TYPE_TA100,     //!< TA100 device
} device_type_t;

//! enumeration for interface types
typedef enum
{
    DEVKIT_IF_UNKNOWN,
    DEVKIT_IF_SPI,
    DEVKIT_IF_I2C,
    DEVKIT_IF_SWI,
    DEVKIT_IF_UART, //!< Not in use
    DEVKIT_IF_LAST, //!< Special value indicating selection of last interface
} interface_id_t;

//! enumeration for interface types
typedef enum
{
    EXT1_HEADER,
    EXT2_HEADER,
    EXT3_HEADER,
    MICROBUS_HEADER,
} ext_header;

//! information about a discovered device
typedef struct
{
    //! interface type (SWI, I2C, SPI)
    interface_id_t bus_type;

    //! device type
    device_type_t device_type;

    //! I2C address or selector byte
    uint8_t address;

    //! array index into GPIO structure for SWI and SPI (Microbase does not support this for SPI.)
    uint8_t device_index;

    //! revision bytes (8 byte for TA100, four bytes for SHA204A && ECC608A && ECC508A && SHA206A)
    uint8_t dev_rev[8];

    //! If true, don't poll for a response after a command
    bool is_no_poll;

    ext_header header;

} device_info_t;

typedef struct
{
   uint8_t opcode;
   const char* cmd_string;
}opcode_cmd_string_t;

typedef struct
{
   device_type_t device;
   const char* device_string;
}device_cmd_string_t;

/** \brief The function return device type based on device revision number (Crypto device)
 *
 *  \param[in]    dev_rev                references to device revision number
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return device type
 */
device_type_t sha_ecc_device_type(const uint8_t* dev_rev);

/** \brief The function return device name
 *
 *  \param[in]    device                 references to device type
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return device name
 */
const char* get_device_string(device_type_t device);

/** \brief The function return device command name
 *
 *  \param[in]    device                 references to device type
 *                opcode                 references to command opcode
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return device command name
 */
const char* get_command_string(device_type_t device, uint8_t opcode);

/** \brief The function return command response size
 *
 *  \param[in]    command               references to device command string
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return command response size
 */
uint8_t get_eccx08_response_size(uint8_t *command);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif /* KIT_DEVICE_INFO_H_ */