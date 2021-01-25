# Fetching manifest file from the WFI32 module Trush & Go (TNG) .

This application implements the USB HID kit protocol bridge required to fetch the manifest file from the TNG TLS chip on the WFI32 module. 

## Description

This application implements the USB HID kit protocol bridge required to fetch the manifest file from the TNG TLS chip on the WFI32 module. USB HID acts as communication protocol between PIC32MZW1 and PC, where 'TrustPlatform Design Suite' is installed, to extract the required information from ECC608 (connected via I2C to the PIC32MZW1) and generate the manifest file.   

![](images/image1.PNG)


## Downloading and building the application

To download or clone this application from Github, go to the [link](https://github.com/MicrochipTech/PIC32MZW1_Projects/tree/main/)



To build the application, refer to the following table and open the project using its IDE.

| Project Name      | Description                                    |
| ----------------- | ---------------------------------------------- |
| kitprotocol.X     | MPLABX project for PIC32MZ W1 Curiosity Board |
|||

## Setting up PIC32MZ W1 Curiosity Board & Tools

- Connect the Debug USB port on the board to the computer using a micro USB cable
- On the GPIO Header (J207), connect U1RX (PIN 13) and U1TX (PIN 23) to TX and RX pin of any USB to UART converter
- Install [TrustPlatform](https://microchipdeveloper.com/authentication:trust-platform) on host PC.

## Running the Application


1.  Open the project "kitprotocol".
2.	Generate code using MHC.
3.  Build and Program the image into target using IDE.

4.  Optionally, connect to a USB to UART converter to UART1 and Open a Terminal application (Ex.:Tera term) on the computer. Configure the serial settings as follows:
    - Baud : 115200
    - Data : 8 Bits
    - Parity : None
    - Stop : 1 Bit
    - Flow Control : None

5.  User may see messages on opened Terminal, as shown in below image :

    ![](images/image9.PNG)
6.  Open "Trust Platform" and follow steps, as shown in below image:

    ![](images/image2.png)

7.  Click on "TrustnGo" on opened page in the browser:

    ![](images/image3.PNG)

    
8.  Click on "resource_generation" on opened page of the browser:

    ![](images/image4.PNG)   

9.  Follow step as shown in below image:

    ![](images/image5.png)

10.  Click "Run" button and follow the instructions, as displayed on page , till manifest file is generated:
    ![](images/image6.PNG)   

11.  User can see message as shown in below image, if manifest file is generated without any error. 
    ![](images/image7.PNG)   

12.  Generated Manifest file can be found in local folder:
    ![](images/image8.PNG)  

13.  Some of the expected message on UART terminal while generating Manifest file :
    ![](images/image10.PNG)  




