/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"
#include "definitions.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;
/*timer handle*/
SYS_TIME_HANDLE g_wifitmr1Handle;
TCPIP_SNTP_HANDLE g_sntpHandler;
volatile uint32_t g_wifiTimerElaspedMS=0;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************
void sntpTimer_Callback(TCPIP_SNTP_EVENT evType, const void* evParam)
{
    if (evType == TCPIP_SNTP_EVENT_TSTAMP_OK)
    {
        
        SYS_CONSOLE_PRINT("\r\n New NTP timestamp has been acquired successfully \r\n");
        SYS_CONSOLE_PRINT("\r\nTime taken for SNTP server connection and time synch :  %dms \r\n\r\n\r\n",g_wifiTimerElaspedMS);
        TCPIP_SNTP_HandlerDeRegister(sntpTimer_Callback);
        appData.state = APP_STATE_SERVICE_TASKS;
    }            


}
void Timer1_Callback ( uintptr_t context )
{
   g_wifiTimerElaspedMS+=10;
}
void WiFiServCallback(uint32_t event, void * data, void *cookie) {
    IPV4_ADDR *IPAddr;
    switch (event) {
        case SYS_WIFI_CONNECT:
            IPAddr = (IPV4_ADDR *) data;
            SYS_CONSOLE_PRINT("\r\nConnected to AP. Got IP address = %d.%d.%d.%d \r\n", IPAddr->v[0], IPAddr->v[1], IPAddr->v[2], IPAddr->v[3]);
            g_wifitmr1Handle = SYS_TIME_CallbackRegisterMS(Timer1_Callback, 0, CALLBACK_RATE_MS, SYS_TIME_PERIODIC);
            g_sntpHandler = TCPIP_SNTP_HandlerRegister(sntpTimer_Callback);
            appData.state = APP_STATE_SNTP_INIT;
            break;
            
        case SYS_WIFI_DISCONNECT:
            SYS_CONSOLE_PRINT("\r\nDevice DISCONNECTED \r\n");
            break;
        case SYS_WIFI_SCANREQ:
            SYS_CONSOLE_PRINT("\r\nDevice SCAN REQ callback \r\n");
            break;
    }
}



// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
 
    
    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {
                SYS_CONSOLE_PRINT("Application: wifi_sntp_connect_time\r\n\r\n");
                if (SYS_WIFI_OBJ_INVALID != SYS_WIFI_CtrlMsg(sysObj.syswifi, SYS_WIFI_REGCALLBACK, WiFiServCallback, sizeof (uint8_t *)))
                        
                {

                    appData.state = APP_STATE_CHECK_STATUS;
                }
            }
            break;
        }
        case APP_STATE_CHECK_STATUS:
        {
            
            break;
        }
        
        case APP_STATE_SNTP_INIT:
        {
                //g_wifitmr1Handle = SYS_TIME_CallbackRegisterMS(Timer1_Callback, 0, CALLBACK_RATE_MS, SYS_TIME_PERIODIC);
                //g_sntpHandler = TCPIP_SNTP_HandlerRegister(sntpTimer_Callback);
                //(void)TCPIP_SNTP_ConnectionInitiate();
                appData.state = APP_STATE_SNTP_WAITING;
           
            break;
            
        }

		 case APP_STATE_SNTP_WAITING:
        {

            break;
        }
        case APP_STATE_SERVICE_TASKS:
        {

            break;
        }

        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
