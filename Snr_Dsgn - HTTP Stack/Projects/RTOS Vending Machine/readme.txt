Project:     	RTOS Vending Machine
Author:      	Aaron Ludwig
Date:        	November 14, 2019

Description: 	Project contains modified Vending Machine project which uses a FreeRTOS task to manage its
		updating procedure.

Directories:

+ Projects/Vending Machine contains all files taken from the Web-Vending Machine Project.

Notes:       	This project expands on the base FreeRTOS project RD1.X from the FreeRTOS.zip file and the
		Web-Vending Machine Project found on Dr. Frenzel's website to utilize the aspects of the 
		FreeRTOS library in the Vending Machine's updating procedure. I've split up the process of
		updating the vending machine's data into two tasks: the prvNetworkTask and the prvProcessTask.
		The first manages the project's network activities using functions from the Microchip Library
		for Applications (MLA). The second task manages interactions with board IO.

		While the task does not currently use code from the FreeRTOS + TCP library, I have elected to
		leave those files in should they become useful later as a possible substitute to using the MLA
		code.

TESTING:     	This project has been tested only using a Digilent Cerebot MX7cK using:
	     	MPLAB X IDE 		v3.65
	     	XC32 			v1.31
	     	FreeRTOS 		v10.2.0
	     	     
WARNING:     	THIS PROJECT WAS CREATED FOR THE PURPOSES OF EDUCATIONAL USE ONLY AND IS NOT INTENDED FOR 
	     	RELAIABLE USE IN PRODUCTION SYSTEMS. 