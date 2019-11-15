/*********************************************************************
 *
 *  Main Application Entry Point
 *  Module for Microchip TCP/IP Stack
 *
 *********************************************************************
 * FileName:        VendingMachine.c
 * Dependencies:    TCPIP.h, MainDemo.h, VendingMachine.h
 * Processor:       PIC32
 * Compiler:        Microchip C32 v1.11b or higher
 * Company:         Microchip Technology, Inc.
 *
 *
 * Customized by:   Richard Wall
 *                  University of Idaho
 *                  October 21, 2007
 * Revised:         Nov. 4, 2014
 *                  
 *
 * This hardware profile is specifically modified for the Cerebot MX7cK in
 * combination with the UI Stepper motor PMod and the parallel character LCD
 * using the PMP bus.
 *
 * Note:  UART not specified -- Needs to be set for UART1
 *
 ********************************************************************/

/*
 * This macro uniquely defines this file as the main entry point.
 * There should only be one such definition in the entire project,
 * and this file must define the AppConfig variable as described below.
 */

#include <plib.h>
#include "FreeRTOS.h"
#include "task.h"
#include "chipKIT_Pro_MX7.h"
#define THIS_IS_STACK_APPLICATION

/* Include all headers for any enabled TCPIP Stack functions */
#include "TCPIP.h"
#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
    #include "TCPIP Stack/ZeroconfLinkLocal.h"
#endif

/* Not used for this application */
#if defined(STACK_USE_ZEROCONF_MDNS_SD)
    #include "TCPIP Stack/ZeroconfMulticastDNS.h"
#endif

/* Declare AppConfig structure and some other supporting stack variables */
APP_CONFIG AppConfig;
/* Checksum of the ROM defaults for AppConfig */
static unsigned short wOriginalAppConfigChecksum;	

/* Vending Machine Application Global Variables */
#include "VendingMachine.h"
#define __VENDINGMACHINE_C

/* Private functions. */
static void InitAppConfig(void);
static void InitializeBoard(void);
static void ProcessIO(void);
static void prvTestTask1( void *pvParameters );

/* Global variables used for dynamic WEB variables and WEB controls */
VEND_ITEM Products[MAX_PRODUCTS];  /* All items in the machine */

BYTE machineDesc[33];       /*  Machine description string */

BYTE curItem;               /* Current product being displayed */
BYTE curCredit;             /* Current deposit credit */
DWORD displayTimeout;       /* When SM_DISPLAY_WAIT times out */

/* Application "WebVending Machine" finite state machine */
static enum
{
    SM_IDLE = 0u,
    SM_DEBOUNCE_DOWN,
    SM_ADD_COIN,
    SM_TRY_VEND,
    SM_PREV,
    SM_NEXT,
    SM_DISPLAY_WAIT,
    SM_RELEASE_WAIT,
    SM_DEBOUNCE_UP
} smVend = SM_DEBOUNCE_UP;	// Application state machine initial state

/* Vending Machine Function Prototypes */
static void WritePriceLCD(BYTE price, BYTE position);

/*	============= Main application entry point.	============= */
int main(void)
{
static DWORD t = 0;
static DWORD dwLastIP = 0;

/* Initialize application specific hardware :  Cerebot MX7cK */
    InitializeBoard();

#if defined(USE_LCD)  // See TCPIP.h for method for setting this define
/* Initialize and display the stack version on the LCD */
    LCDInit();
    DelayMs(100);
/* This writes both LCD lines */
    strcpypgm2ram((char*)LCDText, "WebVend Demo App"
				  "                "); 
    LCDUpdate();
#endif

/* Initialize stack-related hardware components that may be required by the
 * UART configuration routines */

    TickInit();     /* Initialize Timer1 for TCP tick counter */
    MPFSInit();     /* Initialize HTML file access */

/* Initialize Stack and application related NV variables into AppConfig. */
    InitAppConfig();

/* Initialize core stack layers (MAC, ARP, TCP, UDP) and application modules
 * (HTTP, SNMP, etc.) */
    StackInit();

/* Initialize any application-specific modules or functions. For this
 * application, this only includes the UART 2 TCP Bridge */

#if defined(STACK_USE_UART2TCP_BRIDGE)
    UART2TCPBridgeInit();
#endif
    DelayMs(1000);


/* Now that all items are initialized, begin the co-operative multitasking
 * loop.  This infinite loop will continuously execute all stack-related tasks,
 * as well as your own 	application's functions.  Custom functions should be
 * added at the end of this loop. Note that this is a "co-operative
 * mult-tasking" mechanism where every task performs its tasks (whether all in
 * one shot or part of it) and returns so that other tasks can do their job. If
 * a task needs very long time to do its job, it must be broken down into
 * smaller pieces so that other tasks can have CPU time.
*/ 
    xTaskCreate( prvTestTask1, "Tst1", configMINIMAL_STACK_SIZE,
                                    NULL, tskIDLE_PRIORITY, NULL );
    
//    /* Start the RTOS scheduler. */
    vTaskStartScheduler();
    while(1)
    {
/* Blink LED0 (right most one) every second and poll Ethernet stack. */
//        if(TickGet() - t >= TICK_SECOND/2ul)
//    	{
//            t = TickGet();
//	    LED0_IO ^= 1;	/* Blink internet activity LED */
//    	}

/* This task performs normal stack task including checking
   for incoming packet, type of packet and calling
   appropriate stack entity to process it. */
//	StackTask();

/* This tasks invokes each of the core stack application tasks */
//        StackApplications();

/*  Process application specific tasks here. For this Web Vending 
 * Machine app, this will include the Generic TCP server and Ping
 * capability. Following that, we will process any IO from
 * the inputs on the board itself.  Any custom modules or processing
 * you need to do should go here.
*/
//	ProcessIO();

/* If the local IP address has changed (ex: due to DHCP lease change)
 * write the new IP address to the LCD display, UART, and Announce
 * service
*/

//        if(dwLastIP != AppConfig.MyIPAddr.Val)
//	{
//            dwLastIP = AppConfig.MyIPAddr.Val;
//	
//            #if defined(STACK_USE_UART)	// Future feature
//                putrsUART((ROM char*)"\r\nNew IP Address: ");
//            #endif
//
///*  If not vending, show the new IP on terminal and LCD */
//            if(smVend == SM_IDLE || smVend == SM_DISPLAY_WAIT)
//            {
////                memcpypgm2ram(LCDText, "WebVend Demo App", 16);
//        	DisplayIPValue(AppConfig.MyIPAddr);	
//
//		#if defined(STACK_USE_UART)
//                    putrsUART((ROM char*)"\r\n"); // Print to UART
//		#endif
//
//        	displayTimeout = TickGet() + 2*TICK_SECOND;
//        	smVend = SM_DISPLAY_WAIT;
//            }
//
//            #if defined(STACK_USE_ANNOUNCE)	// Service is optional
//                AnnounceIP();
//            #endif
//	}
    }
}

static void prvTestTask1( void *pvParameters )
{
    for( ;; )
    {
        StackTask();
        StackApplications();
        ProcessIO();
    }
}  /* End of prvTestTask1 */

/* Writes an IP address to the LCD display and the UART as available */
/*********************************************************************
 * Function:        DisplayIPValue(IP_ADDR IPVal)
 * PreCondition:    LCD initialized
 * Input:           IP address
 * Output:          Writes text to LCD
 * Side Effects:    None
 * Overview:        Displays the IP address on the second line of 
 *                  the LCD. If the UART is defined, the IP address
 *                  is sent there also.
 * Note:            This function is a rewrite of the equivalent
 *                  function supplied with the WebVend demo.
 *                  
 ********************************************************************/
void DisplayIPValue(IP_ADDR IPVal)
{
#if defined(STACK_USE_UART)
    char UART_txt_buffer[32];
    sprintf(UART_txt_buffer,"%u.%u.%u.%u"\n\r, IPVal.v[0], IPVal.v[1],
                IPVal.v[2], IPVal.v[3]);
    putsUART((char *) UART_txt_buffer);
#endif

#ifdef USE_LCD 		// See TCPIP.h for defining USE_LCD
    sprintf((char *) &LCDText[16],"%u.%u.%u.%u", IPVal.v[0], IPVal.v[1],
                                                 IPVal.v[2], IPVal.v[3]);
    LCDUpdate();	// See LCDblocking.c
#endif
}

/*********************************************************************
 * Function:        ProcessIO(void)
 * PreCondition:    LCD initialized
 * Input:           None
 * Output:          Modifies Products global variable  structure
 *                  HTTP_IO_WAITING if waiting for asynchronous process
 * Side Effects:    None
 * Overview:        This is the code to processes Button select. 
 *                  The operation was originally designed for 4 button
 *                  operations.  Simultaneously pressing BTN2 and BTN3
 *                  emulates the 4th button operation. BTN1 scrolls item
 *                  menu right, BTN2 scrolls item menu left, BTN2 and BTN3
 *                  adds $0.25 to the coin box, BTN3 alone vends the item,
 *                  decrements the stock, and subtracts the price from
 *                  the accumulated value in the coin box.
 * Note:            Modifications from the Microchip WebVend demo code:
 *                  1. Since the PIC32MX7 processor can execute this code
 *                  so quickly, it is very difficult to press two
 *                  buttons simultaneously. Hence once any button is
 *                  detected as being released, a 100ms software delay is
 *                  implemented in the de-bounce state.
 *                  The code was originally written for buttons on the
 *                  Explorer 16 board that are active low. The buttons
 *                  on the chipKIT Pro MX7 board are active high.
 *                  
 ********************************************************************/
static void ProcessIO(void)
{
static BOOL lcdUpdated = FALSE;

/* Vending Machine application finite state machine */
    switch(smVend)
    {
        case SM_IDLE:
            lcdUpdated = FALSE;
 /*  Wait for a button press */
            if(BUTTON0_IO == 1u || BUTTON1_IO == 1u || BUTTON2_IO == 1u) 
            smVend = SM_DEBOUNCE_DOWN;
            break;

        case SM_DEBOUNCE_DOWN:
            DelayMs(100);	/* Allows dual button press */
/* Check if a button is down */
            if(BUTTON2_IO == 1u && BUTTON1_IO == 1u)
                smVend = SM_ADD_COIN;
            else
            {
                if(BUTTON2_IO == 1u)
                    smVend = SM_TRY_VEND;
                else 
                {
                    if(BUTTON1_IO == 1u)
                        smVend = SM_PREV;
                    else 
                    {
                        if(BUTTON0_IO == 1u)
                            smVend = SM_NEXT;
                        else
                            smVend = SM_IDLE;
                    }
                }
            }
            break;
			
        case SM_ADD_COIN: /* Add a quarter, up to $5.00 */
            if(curCredit < 20u)
            {
                curCredit++;    /* Increase the credit */
                smVend = SM_RELEASE_WAIT;
            }
            else
            {/* Max credit was reached */
                strcpypgm2ram((char*)LCDText,
                        (ROM char*)" Coin Returned! Max credit is $5");
                LCDUpdate();
                displayTimeout = TickGet() + 2*TICK_SECOND;
                smVend = SM_DISPLAY_WAIT;
            }
            break;
		
        case SM_TRY_VEND:   /* Try to vend a product */
            if(Products[curItem].stock == 0u)
            {/*  Product is sold out */
                strcpypgm2ram((char*)LCDText,
                    (ROM char*)"    SOLD OUT                    ");
                LCDUpdate();
                displayTimeout = TickGet() + TICK_SECOND;
                smVend = SM_DISPLAY_WAIT;
            }
            else if(Products[curItem].price > curCredit)
            {
                strcpypgm2ram((char*)LCDText,
                    (ROM char*)"Price:  $       Credit: $       ");
                WritePriceLCD(Products[curItem].price, 9);
                WritePriceLCD(curCredit, 25);
                LCDUpdate();
                displayTimeout = TickGet() + 2*TICK_SECOND;
                smVend = SM_DISPLAY_WAIT;
            }
            else
            {
                strcpypgm2ram((char*)LCDText,
                    (ROM char*)"   vending...                   ");
                curCredit -= Products[curItem].price;
                Products[curItem].stock--;
                LCDUpdate();
                displayTimeout = TickGet() + TICK_SECOND;
                smVend = SM_DISPLAY_WAIT;
/* For endurance reasons, we don't update stock in EEPROM here. That means only
 * stock/product changes made through the web interface will survive a reset. */
		}
		break;
		
        case SM_PREV: /* Move back one product in the list */
            if(curItem > 0u)
                curItem--;
            smVend = SM_RELEASE_WAIT;
            break;
		
	case SM_NEXT:   /* Move forward one product in the list */
			
            if(curItem < MAX_PRODUCTS-1)
                curItem++;
            smVend = SM_RELEASE_WAIT;
            break;
		
	case SM_DISPLAY_WAIT: /*Wait for the timout to occur before continuing*/
            if(TickGet() > displayTimeout)
                smVend = SM_RELEASE_WAIT;
            break;
					
	case SM_RELEASE_WAIT: /* Wait for all buttons to be released */
            if(!lcdUpdated) /* Update the LCD */
            {
                WriteLCDMenu();
                lcdUpdated = TRUE;
            }
			
            /* Continue if all buttons are up */
            if(BUTTON0_IO == 0u && BUTTON1_IO == 0u && BUTTON2_IO == 0u)
		smVend = SM_DEBOUNCE_UP;
            break;
		
	case SM_DEBOUNCE_UP: /* Make sure all buttons were released */
            if(BUTTON0_IO == 0u && BUTTON1_IO == 0u && BUTTON2_IO == 0u)
                smVend = SM_IDLE;
            else
                smVend = SM_RELEASE_WAIT;
            break;
    }
}

/*********************************************************************
 * Function:        WriteLCDMenu(void)
 * PreCondition:    LCD initialized
 * Input:           None
 * Output:          None
 * Side Effects:    Updates LCD
 * Overview:        Maintains the LCD selection display for the  
 *                  operations of the Vending machine application. 
 * Note:            See ProcessIO for system operations
 *                  
 ********************************************************************/
void WriteLCDMenu(void)
{/*  Update the LCD screen */
    /* Blank the LCD display */
    strcpypgm2ram((char*)LCDText,
            (ROM char*)"                                ");

/* Show the name */
    strcpy((char*)LCDText, (char*)Products[curItem].name);
    LCDText[strlen((char*)Products[curItem].name)] = ' ';
	
/*  Show the price, or sold out status */
    if(Products[curItem].stock == 0u)
    {
        memcpypgm2ram(&LCDText[12], (ROM void*)"SOLD", 4);
    }
    else
    {
        LCDText[11] = '$';
        WritePriceLCD(Products[curItem].price, 12);
    }
	
/* Show the current credit */
    LCDText[16] = '$';
    WritePriceLCD(curCredit, 17);
	
/* Show the vend button if available */
    if(Products[curItem].stock != 0u && Products[curItem].price <= curCredit)
        memcpypgm2ram(&LCDText[22], (ROM void*)"Vend", 4);
    else
        memcpypgm2ram(&LCDText[23], (ROM void*)"--", 2);
	
/* Show the rest of the buttons */
    if(curItem != 0u)
        memcpypgm2ram(&LCDText[27], (ROM void*)"<<", 2);
    if(curItem != MAX_PRODUCTS-1)
        memcpypgm2ram(&LCDText[30], (ROM void*)">>", 2);

/* Update to the screen	 */
    LCDUpdate();
}

/*********************************************************************
 * Function:        WritePriceLCD(BYTE price, BYTE position)
 * PreCondition:    LCD initialized
 * Input:           The item price and position to be displayed
 * Output:          None
 * Side Effects:    Updates LCD
 * Overview:        Maintains the LCD display for the item price for 
 *                  the Vending machine application. This function
 *                  does not update the display.
 * Note:            This functions uses sprintf to significantly reduce
 *                  the amount of code provide by the WebVend demo.
 *                  
 ********************************************************************/
static void WritePriceLCD(BYTE price, BYTE position)
{
    sprintf((char *) &LCDText[position],"%d.%02d", (price>>2),
            (price & 0x03)*25);
}

/*********************************************************************
 * Function:        VendSetLights(BOOL setOn)
 * PreCondition:    LEDs must be defined in the HWP file
 * Input:           The LED state: 
 * Output:          None
 * Side Effects:    Lights LEDs on hardware platform
 * Overview:        setOn = TRUE / False
 * Note:            All LEDs are set to the same state
 *                  
 ********************************************************************/
void VendSetLights(BOOL setOn)
{
    LED6_IO = setOn;
    Nop();
    LED5_IO = setOn;
    Nop();
    LED4_IO = setOn;
    Nop();
    LED3_IO = setOn;
    Nop();
    LED2_IO = setOn;
    Nop();
    LED1_IO = setOn;
}

/****************************************************************************
  Function:     static void InitializeBoard(void)
  Description:
    This routine initializes the hardware.  It is a generic initialization
    routine for many of the Microchip development boards, using definitions
    in HWP XXXX.h to determine specific initialization.
  Precondition: None
  Parameters:   None
  Returns:      None
  Remarks:      None
  ***************************************************************************/
static void InitializeBoard(void)
{	

    chipKIT_PRO_MX7_Setup();

/*   Enable Cerebot 32MX7 PHY - NOT FOR chipKIT Pro MX7 or Cerebot 32MX7ck */
//  TRISECLR = (unsigned int) BIT_9; // Make bit output
//  LATESET = (unsigned int) BIT_9;  // Set output high

/*   Enable chipKIT Pro MX7 and Cerebot 32MX7ck PHY */
    TRISACLR = (unsigned int) BIT_6; // Make bit output
    LATASET = (unsigned int) BIT_6;	 // Set output high

/* Set up PmodSTEP LEDA through LEDD as LED4 through LED7 */
    LED4_TRIS = 0;
    LED5_TRIS = 0;
    LED6_TRIS = 0;
    LED7_TRIS = 0;

    LED_PUT(0xFF);

/* Enable multi-vector interrupts (Method suggested for XC32 */
    INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR);  /* Do only once */
    INTEnableInterrupts();   /*Do as needed for global interrupt control */
		
// Enable optimal performance	

    DelayMs(100);
    LED_PUT(0x00);			/*  Turn the LEDs off */
}

/*********************************************************************
 * Function:        void InitAppConfig(void)
 * PreCondition:    MPFSInit() is already called.
 * Input:           None
 * Output:          Write/Read non-volatile config variables.
 * Side Effects:    None
 * Overview:        None
 * Note:            None
 ********************************************************************/
/* MAC Address Serialization using a MPLAB PM3 Programmer and Serialized
 * Quick Turn Programming (SQTP). The advantage of using SQTP for programming
 * the MAC Address is it allows you to auto-increment the MAC address without
 * recompiling the code for each unit.  To use SQTP, the MAC address must be
 * fixed at a specific location in program memory.  Uncomment these two pragmas
 * that locate the MAC address at 0x1FFF0.  Syntax below is for MPLAB C
 * Compiler for PIC18 MCUs. Syntax will vary for other compilers.
 */

static ROM BYTE SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1,
                                           MY_DEFAULT_MAC_BYTE2,
                                           MY_DEFAULT_MAC_BYTE3,
                                           MY_DEFAULT_MAC_BYTE4,
                                           MY_DEFAULT_MAC_BYTE5,
                                           MY_DEFAULT_MAC_BYTE6};
static void InitAppConfig(void)
{

/* Start out zeroing all AppConfig bytes to ensure all fields are deterministic
 * for checksum generation */

    memset((void*)&AppConfig, 0x00, sizeof(AppConfig));
	
    AppConfig.Flags.bIsDHCPEnabled = TRUE;
    AppConfig.Flags.bInConfigMode = TRUE;
    memcpypgm2ram((void*)&AppConfig.MyMACAddr, (ROM void*)SerializedMACAddress,
                    sizeof(AppConfig.MyMACAddr));
    AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 |\
                             MY_DEFAULT_IP_ADDR_BYTE2<<8ul |\
                             MY_DEFAULT_IP_ADDR_BYTE3<<16ul |\
                             MY_DEFAULT_IP_ADDR_BYTE4<<24ul;
    AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
    AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 |\
                           MY_DEFAULT_MASK_BYTE2<<8ul |\
                           MY_DEFAULT_MASK_BYTE3<<16ul |\
                           MY_DEFAULT_MASK_BYTE4<<24ul;
    AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
    AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 |\
                              MY_DEFAULT_GATE_BYTE2<<8ul |\
                              MY_DEFAULT_GATE_BYTE3<<16ul |\
                              MY_DEFAULT_GATE_BYTE4<<24ul;
    AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 |\
                                     MY_DEFAULT_PRIMARY_DNS_BYTE2<<8ul |\
                                     MY_DEFAULT_PRIMARY_DNS_BYTE3<<16ul |\
                                     MY_DEFAULT_PRIMARY_DNS_BYTE4<<24ul;
    AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 |\
                                       MY_DEFAULT_SECONDARY_DNS_BYTE2<<8ul |\
                                       MY_DEFAULT_SECONDARY_DNS_BYTE3<<16ul |\
                                       MY_DEFAULT_SECONDARY_DNS_BYTE4<<24ul;
/* Vending machine specific defaults */
    strcpypgm2ram((char*)Products[0].name, (ROM char*)"Cola");
    strcpypgm2ram((char*)Products[1].name, (ROM char*)"Diet Cola");
    strcpypgm2ram((char*)Products[2].name, (ROM char*)"Root Beer");
    strcpypgm2ram((char*)Products[3].name, (ROM char*)"Orange");
    strcpypgm2ram((char*)Products[4].name, (ROM char*)"Lemonade");
    strcpypgm2ram((char*)Products[5].name, (ROM char*)"Iced Tea");
    strcpypgm2ram((char*)Products[6].name, (ROM char*)"Water");

/* Price is measured in quarters ($0.25) */
    Products[0].price = 4;	// $1.00
    Products[1].price = 4;
    Products[2].price = 4;
    Products[3].price = 4;
    Products[4].price = 5;	// $1.25
    Products[5].price = 7;
    Products[6].price = 8;	// $2.00
    strcpypgm2ram((char*)machineDesc, (ROM char*)"UI IEEE Student Store ");
    machineDesc[22] = '\0';
    curItem = 0;
    curCredit = 0;
	
/* Load the default NetBIOS Host Name */
    memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*)MY_DEFAULT_HOST_NAME, 17);
    FormatNetBIOSName(AppConfig.NetBIOSName);

/* Compute the checksum of the AppConfig defaults as loaded from ROM */
    wOriginalAppConfigChecksum = CalcIPChecksum((BYTE*) &\
                                            AppConfig, sizeof(AppConfig));

/* Update with default stock values on every reboot */
    Products[0].stock = 15;
    Products[1].stock = 9;
    Products[2].stock = 22;
    Products[3].stock = 18;
    Products[4].stock = 4;
    Products[5].stock = 29;
    Products[6].stock = 14;
}  /* End of InitAppConfig */

/* End of VendingMachine.c */
