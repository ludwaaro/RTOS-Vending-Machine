/*  FreeRTOS + TCP Reference Design TCP Echo Server
 * Project:     TCP Echo Server
 * File name:   main.c
 * Author:      Aaron Ludwig
 * Date:        November 14, 2019
 *
 * Description: An example of a project utilizing FreeRTOS's support for
 *              TCP communication functionality in the FreeRTOS + TCP library
 *              running on a chipKIT_Pro_MX7 running the PIC32MX795F512L processor.
 *              The operating system creates and manages a task that allows for 
 *              a TCP socket to be established which can receive TCP packets and
 *              will echo them back to the sender.
 *
 * Observable:  After establishing a TCP connection with the program using a client
 *              like Putty you should be able to see TCP traffic to and from the
 *              program using Wireshark.
 * 
 * NOTES:       This file is an edited version of the RD1.c file originally created
 *              by Richard Wall in the FreeRTOS RD1 project.
*******************************************************************************/

#define sourceAddress           { 129, 101, 222, 34 }

/* Standard includes. */
#include <plib.h>

/* Scheduler includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

/* Hardware dependent setting */
#include "chipKIT_Pro_MX7.h"
#include "FreeRTOS.h"
#include "FreeRTOS_IP_Private.h"

#define tcpechoSHUTDOWN_DELAY	( pdMS_TO_TICKS( 5000 ) )

///* Set up the processor for the example program. */
//static void prvSetupHardware( void );
//
///* Simple Task that constantly sends UDP Packets to a predefined address with a delay between each sent packet*/
//static void vCreateTCPServerSocket( void *pvParameters );
//static void prvServerConnectionInstance( void *pvParameters );
//
///* The MAC address array is not declared const as the MAC address will
//normally be read from an EEPROM and not hard coded (in real deployed
//applications). In this case the MAC Address is hard coded to the value we
//have for the Cerebot board we're using. */
//static uint8_t ucMACAddress[ 6 ] = { 0x00, 0x04, 0xA3, 0x17, 0xCB, 0xF8 };
//
///* Set this value to be the IP address you want to use (you are recommended 
// * to use the value given with your Cerebot station but the value doesn't seem
// * to be strictly limited to that).*/
//static const uint8_t ucIPAddress[ 4 ] = sourceAddress;
//
///* You shouldn't need to worry about these values as we're using DHCP. */
//static const uint8_t ucNetMask[ 4 ] = { 255, 255, 252, 0 };
//static const uint8_t ucGatewayAddress[ 4 ] = { 129, 101, 220, 1 };
///* The following is the address of an OpenDNS server. */
//static const uint8_t ucDNSServerAddress[ 4 ] = { 0, 0, 0, 0 };
//
///* main Function Description ***************************************************
// * SYNTAX:		    int main( void );
// * KEYWORDS:		Initialize, create, tasks, scheduler
// * DESCRIPTION:     This is a typical RTOS set up function. Hardware is
// *                  initialized, tasks are created, and the scheduler is
// *                  started.
// * PARAMETERS:		None
// * RETURN VALUE:	Exit code - used for error handling
// * END DESCRIPTION ************************************************************/
//int main( void )
//{
//    prvSetupHardware();
//    /* Initialise the RTOS's TCP/IP stack.  The tasks that use the network
//    are created in the vApplicationIPNetworkEventHook() hook function
//    below.  The hook function is called when the network connects. */
//    FreeRTOS_IPInit( ucIPAddress,
//                     ucNetMask,
//                     ucGatewayAddress,
//                     ucDNSServerAddress,
//                     ucMACAddress );
//
//    /*
//     * Our RTOS tasks can be created here.
//     */
//    xTaskCreate( vCreateTCPServerSocket, "TCP1", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL );
//    
//    /* Start the RTOS scheduler. */
//    vTaskStartScheduler();
//
//    /* If all is well, the scheduler will now be running. */
//    for( ;; );
//    
//    /* Will only reach here if there is insufficient heap available to start
//     *  the scheduler. */
//    return 0;
//}  /* End of main */
//
///* prvSetupHardware Function Description ***************************************
// * SYNTAX:	static void prvSetupHardware( void );
// * KEYWORDS:	Hardware, initialize, configure, setup
// * DESCRIPTION: Initializes hardware specific resources.
// * PARAMETERS:	None
// * RETURN VALUE: None
// * NOTES:	Static function - can be called exclusively from 
// * 		within this program.
// * END DESCRIPTION ************************************************************/
//static void prvSetupHardware( void )
//{
//    chipKIT_PRO_MX7_Setup();
//
///* Set up PmodSTEM LEDs */
//    PORTSetPinsDigitalOut(IOPORT_B, SM_LEDS);
//    LATBCLR = SM_LEDS;                      /* Clear all SM LED bits */
//    
///* Enable chipKIT Pro MX7 and Cerebot 32MX7ck PHY 
// * (this is essential for using the PHY chip)*/
//    TRISACLR = (unsigned int) BIT_6; // Make bit output
//    LATASET = (unsigned int) BIT_6;	 // Set output high
//    
///* Enable multi-vector interrupts */
//    INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR);  /* Do only once */
//    INTEnableInterrupts();   /*Do as needed for global interrupt control */
//    portDISABLE_INTERRUPTS();
//} /* End of prvSetupHardware */

/* vApplicationStackOver Function Description **********************************
 * SYNTAX:          void vApplicationStackOverflowHook( void );
 * KEYWORDS:        Stack, overflow
 * DESCRIPTION:     Look at pxCurrentTCB to see which task overflowed
 *                  its stack.
 * PARAMETERS:      None
 * RETURN VALUE:    None
 * NOTES:           See FreeRTOS documentation
 * END DESCRIPTION ************************************************************/
void vApplicationStackOverflowHook( void )
{
	for( ;; );
} /* End of vApplicationStackOver */

/* _general_exception_handler Function Description *****************************
 * SYNTAX:          void _general_exception_handler( unsigned long ulCause,
 *                                              unsigned long ulStatus );
 * KEYWORDS:        Exception, handler
 * DESCRIPTION:     This overrides the definition provided by the kernel.
 *                  Other exceptions should be handled here. Set a breakpoint
 *                  on the "for( ;; )" to catch problems.
 * PARAMETER 1:     unsigned long - Cause of exception code
 * PARAMETER 2:     unsigned long - status of process
 * RETURN VALUE:    None
 * NOTES:           Program will be vectored to here if the any CPU error is
 *                  generated. See FreeRTOS documentation for error codes.
END DESCRIPTION ***************************************************************/
void _general_exception_handler( unsigned long ulCause, unsigned long ulStatus )
{
    for( ;; );
} /* End of _general_exception_handler */

///* vCreateTCPServerSocket Function Description *************************
// * SYNTAX:          static void vCreateTCPServerSocket( void *pvParameters );
// * KEYWORDS:        RTOS, Task
// * DESCRIPTION:     Waits for an incoming request for a TCP socket connection 
// *                  to be made. The function then, launches a new task for 
// *                  managing the connection and deletes itself.
// * PARAMETER 1:     void pointer - data of unspecified data type sent from
// *                  RTOS scheduler
// * RETURN VALUE:    None (There is no returning from this function)
// * NOTES:           This function is a slightly altered form of the one used in
// *                  the FreeRTOS + TCP tutorial on creating TCP sockets which 
// *                  can be found at the following url:
// *                  https://www.freertos.org/FreeRTOS-Plus/FreeRTOS_Plus_TCP/TCP_Networking_Tutorial_TCP_Client_and_Server.html   
// * END DESCRIPTION ************************************************************/
//static void vCreateTCPServerSocket( void *pvParameters )
//{
//    struct freertos_sockaddr xClient, xBindAddress;
//    Socket_t xListeningSocket, xConnectedSocket;
//    socklen_t xSize = sizeof( xClient );
//    static const TickType_t xReceiveTimeOut = portMAX_DELAY;
//    const BaseType_t xBacklog = 20;
//
//    /* Attempt to open the socket. */
//    xListeningSocket = FreeRTOS_socket( FREERTOS_AF_INET,
//					FREERTOS_SOCK_STREAM,/* FREERTOS_SOCK_STREAM for TCP. */
//					FREERTOS_IPPROTO_TCP );
//
//    /* Check the socket was created. */
//    configASSERT( xListeningSocket != FREERTOS_INVALID_SOCKET );
//
//    /* Set a time out so accept() will just wait for a connection. */
//    FreeRTOS_setsockopt( xListeningSocket,
//                         0,
//                         FREERTOS_SO_RCVTIMEO,
//                         &xReceiveTimeOut,
//                         sizeof( xReceiveTimeOut ) );
//
//    /* Set the listening port to 10000. */
//    xBindAddress.sin_port = ( uint16_t ) 10000;
//    xBindAddress.sin_port = FreeRTOS_htons( xBindAddress.sin_port );
//
//    /* Bind the socket to the port that the client RTOS task will send to. */
//    FreeRTOS_bind( xListeningSocket, &xBindAddress, sizeof( xBindAddress ) );
//
//    /* Set the socket into a listening state so it can accept connections.
//    The maximum number of simultaneous connections is limited to 20. */
//    FreeRTOS_listen( xListeningSocket, xBacklog );
//
//    for( ;; )
//    {
//        /* Wait for incoming connections. */
//        xConnectedSocket = FreeRTOS_accept( xListeningSocket, &xClient, &xSize );
//        configASSERT( xConnectedSocket != FREERTOS_INVALID_SOCKET );
//
//        /* Spawn a RTOS task to handle the connection. */
//        xTaskCreate( prvServerConnectionInstance,
//                     "EchoServer",
//                     2048, //I've increased the memory allocated to the task as I was encountering stack overflow issues
//                     ( void * ) xConnectedSocket,
//                     tskIDLE_PRIORITY,
//                     NULL );
//	vTaskDelete( NULL );
//    }
//}
//
///* prvServerConnectionInstance Function Description *************************
// * SYNTAX:          static void prvServerConnectionInstance( void *pvParameters );
// * KEYWORDS:        RTOS, Task
// * DESCRIPTION:     Waits for incoming TCP packets from the given socket, stores
// *                  the input, and then echos it back.
// * PARAMETER 1:     void pointer - data of unspecified data type sent from
// *                  RTOS scheduler
// * RETURN VALUE:    None (There is no returning from this function)
// * NOTES:           This function came from a project on GitHub from user
// *                  rjvo called "storage" from the master branch. 
// *                  This project can be found at the following url:
// *                  https://github.com/rjvo/storage/blob/master/ROjal_MQTT_temp/FreeRTOS_example/FreeRTOS-Plus/Demo/FreeRTOS_Plus_TCP_and_FAT_Windows_Simulator/DemoTasks/SimpleTCPEchoServer.c 
// * END DESCRIPTION ************************************************************/
//static void prvServerConnectionInstance( void *pvParameters )
//{
//	int32_t lBytes, lSent, lTotalSent;
//	uint8_t cReceivedString[ ipconfigTCP_MSS ];
//	Socket_t xConnectedSocket;
//	static const TickType_t xReceiveTimeOut = pdMS_TO_TICKS( 5000 );
//	static const TickType_t xSendTimeOut = pdMS_TO_TICKS( 5000 );
//	TickType_t xTimeOnShutdown;
//
//	xConnectedSocket = ( Socket_t ) pvParameters;
//	FreeRTOS_setsockopt( xConnectedSocket, 0, FREERTOS_SO_RCVTIMEO, &xReceiveTimeOut, sizeof( xReceiveTimeOut ) );
//	FreeRTOS_setsockopt( xConnectedSocket, 0, FREERTOS_SO_SNDTIMEO, &xSendTimeOut, sizeof( xReceiveTimeOut ) );
//
//	for( ;; )
//	{
//		/* Zero out the receive array so there is NULL at the end of the string
//		when it is printed out. */
//		memset( cReceivedString, 0x00, sizeof( cReceivedString ) );
//
//		/* Receive data on the socket. */
//		lBytes = FreeRTOS_recv( xConnectedSocket, cReceivedString, sizeof( cReceivedString ), 0 );
//
//		/* If data was received, echo it back. */
//		if( lBytes >= 0 )
//		{
//		    lSent = 0;
//		    lTotalSent = 0;
//			
//			while( ( lSent >= 0 ) && ( lTotalSent < lBytes ) )
//			{
//				lSent = FreeRTOS_send( xConnectedSocket, &cReceivedString[lTotalSent], lBytes - lTotalSent, 0 );
//				lTotalSent += lSent;
//			}
//
//			if( lSent < 0 )
//			{
//				/* Socket closed? */
//				break;
//			}
//		}
//		else
//		{
//			/* Socket closed? */
//			break;
//		}
//	}
//	
//	/* Initiate a shutdown in case it has not already been initiated. */
//	FreeRTOS_shutdown( xConnectedSocket, FREERTOS_SHUT_RDWR );
//
//	/* Wait for the shutdown to take effect, indicated by FreeRTOS_recv()
//	returning an error. */
//	xTimeOnShutdown = xTaskGetTickCount();
//	do
//	{
//	    if( FreeRTOS_recv( xConnectedSocket, cReceivedString, ipconfigTCP_MSS, 0 ) < 0 )
//	    {
//		    break;
//	    }
//	} while( ( xTaskGetTickCount() - xTimeOnShutdown ) < tcpechoSHUTDOWN_DELAY );
//
//	/* Finished with the socket and the task. */
//	FreeRTOS_closesocket( xConnectedSocket );
//	vTaskDelete( NULL );
//}

/* ulApplicationGetNextSequenceNumber Function Description *********************
 * SYNTAX:          uint32_t ulApplicationGetNextSequenceNumber
 *                                              ( uint32_t ulSourceAddress,
 *												uint16_t usSourcePort,
 *												uint32_t ulDestinationAddress,
 *												uint16_t usDestinationPort );
 * DESCRIPTION:     Callback that provides the inputs necessary to generate a 
 *                  randomized TCP Initial Sequence Number per RFC 6528.  THIS 
 *                  IS ONLY A DUMMY IMPLEMENTATION THAT RETURNS A PSEUDO RANDOM 
 *                  NUMBER SO IS NOT INTENDED FOR USE IN PRODUCTION SYSTEMS.
 * PARAMETER 1:     uint32_t - IP source address
 * PARAMETER 2:     uint32_t - IP source address port
 * PARAMETER 3:     uint32_t - IP destination address
 * PARAMETER 4:     uint32_t - IP destination address port
 * RETURN VALUE:    A randomized TCP Initial Sequence Number.
 * NOTES:           This function came from a project on GitHub from user
 *                  jjr-simiatec called "FreeRTOS-TCP-for-PIC32" using commit
 *                  11bee9b5f2a5a21b6311feca873286e4c7be3534 from the master
 *                  branch. This project can be found at the following url:
 *                  https://github.com/jjr-simiatec/FreeRTOS-TCP-for-PIC32/commit/11bee9b5f2a5a21b6311feca873286e4c7be3534
END DESCRIPTION ************************************************************/
extern uint32_t ulApplicationGetNextSequenceNumber( uint32_t ulSourceAddress,
													uint16_t usSourcePort,
													uint32_t ulDestinationAddress,
													uint16_t usDestinationPort )
{
	( void ) ulSourceAddress;
	( void ) usSourcePort;
	( void ) ulDestinationAddress;
	( void ) usDestinationPort;

	return uxRand();
}

/* uxRand Function Description *********************************************
 * SYNTAX:          UBaseType_t uxRand( void );
 * DESCRIPTION:     Function called by the IP stack to generate random numbers for
 *                  things such as a DHCP transaction number or initial sequence number.
 * RETURN VALUE:    A pseudo random number.
 * NOTES:           This function came from a project on GitHub from user
 *                  jjr-simiatec called "FreeRTOS-TCP-for-PIC32" using commit
 *                  11bee9b5f2a5a21b6311feca873286e4c7be3534 from the master
 *                  branch. This project can be found at the following url:
 *                  https://github.com/jjr-simiatec/FreeRTOS-TCP-for-PIC32/commit/11bee9b5f2a5a21b6311feca873286e4c7be3534
END DESCRIPTION ************************************************************/
UBaseType_t uxRand( void )
{
    static UBaseType_t ulNextRand;
    const uint32_t ulMultiplier = 0x015a4e35UL, ulIncrement = 1UL;

	/* Utility function to generate a pseudo random number. */

	ulNextRand = ( ulMultiplier * ulNextRand ) + ulIncrement;
	return( ( int ) ( ulNextRand >> 16UL ) & 0x7fffUL );
}
/*--------------------------End of main.c  -----------------------------------*/

