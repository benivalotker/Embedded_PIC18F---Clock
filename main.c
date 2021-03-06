/********************************************************************
 FileName:     main.c
 Dependencies: See INCLUDES section
 Processor:   PIC18 or PIC24 USB Microcontrollers
 Hardware:    The code is natively intended to be used on the following
        hardware platforms: PICDEM� FS USB Demo Board, 
        PIC18F87J50 FS USB Plug-In Module, or
        Explorer 16 + PIC24 USB PIM.  The firmware may be
        modified for use on other USB platforms by editing the
        HardwareProfile.h file.
 Complier:    Microchip C18 (for PIC18) or C30 (for PIC24)
 Company:   Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the �Company�) for its PIC� Microcontroller is intended and
 supplied to you, the Company�s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN �AS IS� CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Date         Description
  1.0   11/19/2004   Initial release
  2.1   02/26/2007   Updated for simplicity and to use common
                     coding style
********************************************************************/


//	========================	INCLUDES	========================
#ifdef _VISUAL
#include "VisualSpecials.h"
#endif // VISUAL

#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "HardwareProfile.h"


#include "mtouch.h"

#include "BMA150.h"

#include "oled.h"

#include "soft_start.h"
#include "OledGraphics.h"

//	========================	CONFIGURATION	========================

#if defined(PIC18F46J50_PIM)
   //Watchdog Timer Enable bit:
     #pragma config WDTEN = OFF          //WDT disabled (control is placed on SWDTEN bit)
   //PLL Prescaler Selection bits:
     #pragma config PLLDIV = 3           //Divide by 3 (12 MHz oscillator input)
   //Stack Overflow/Underflow Reset Enable bit:
     #pragma config STVREN = ON            //Reset on stack overflow/underflow enabled
   //Extended Instruction Set Enable bit:
     #pragma config XINST = OFF          //Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
   //CPU System Clock Postscaler:
     #pragma config CPUDIV = OSC1        //No CPU system clock divide
   //Code Protection bit:
     #pragma config CP0 = OFF            //Program memory is not code-protected
   //Oscillator Selection bits:
     #pragma config OSC = ECPLL          //HS oscillator, PLL enabled, HSPLL used by USB
   //Secondary Clock Source T1OSCEN Enforcement:
     #pragma config T1DIG = ON           //Secondary Oscillator clock source may be selected
   //Low-Power Timer1 Oscillator Enable bit:
     #pragma config LPT1OSC = OFF        //Timer1 oscillator configured for higher power operation
   //Fail-Safe Clock Monitor Enable bit:
     #pragma config FCMEN = OFF           //Fail-Safe Clock Monitor disabled
   //Two-Speed Start-up (Internal/External Oscillator Switchover) Control bit:
     #pragma config IESO = OFF           //Two-Speed Start-up disabled
   //Watchdog Timer Postscaler Select bits:
     #pragma config WDTPS = 128        //1:32768
   //DSWDT Reference Clock Select bit:
     #pragma config DSWDTOSC = INTOSCREF //DSWDT uses INTOSC/INTRC as reference clock
   //RTCC Reference Clock Select bit:
     #pragma config RTCOSC = T1OSCREF    //RTCC uses T1OSC/T1CKI as reference clock
   //Deep Sleep BOR Enable bit:
     #pragma config DSBOREN = OFF        //Zero-Power BOR disabled in Deep Sleep (does not affect operation in non-Deep Sleep modes)
   //Deep Sleep Watchdog Timer Enable bit:
     #pragma config DSWDTEN = OFF        //Disabled
   //Deep Sleep Watchdog Timer Postscale Select bits:
     #pragma config DSWDTPS = 8192       //1:8,192 (8.5 seconds)
   //IOLOCK One-Way Set Enable bit:
     #pragma config IOL1WAY = OFF        //The IOLOCK bit (PPSCON<0>) can be set and cleared as needed
   //MSSP address mask:
     #pragma config MSSP7B_EN = MSK7     //7 Bit address masking
   //Write Protect Program Flash Pages:
     #pragma config WPFP = PAGE_1        //Write Protect Program Flash Page 0
   //Write Protection End Page (valid when WPDIS = 0):
     #pragma config WPEND = PAGE_0       //Write/Erase protect Flash Memory pages starting at page 0 and ending with page WPFP[5:0]
   //Write/Erase Protect Last Page In User Flash bit:
     #pragma config WPCFG = OFF          //Write/Erase Protection of last page Disabled
   //Write Protect Disable bit:
     #pragma config WPDIS = OFF          //WPFP[5:0], WPEND, and WPCFG bits ignored
  	#pragma interrupt HighPriotiryIsr
#else
    #error No hardware board defined, see "HardwareProfile.h" and __FILE__
#endif

//	========================	Global VARIABLES	========================
#pragma udata
//You can define Global Data Elements here
#define FOSC        12000000
#define CLOCK_TYPE  4
#define PRESCALE    256
#define RL_OFFSET   1
//	========================	PRIVATE PROTOTYPES	========================
static void InitializeSystem(void);
static void ProcessIO(void);
static void UserInit(void);
static void YourHighPriorityISRCode();
static void YourLowPriorityISRCode();

BOOL CheckButtonPressed(void);

//	========================	VECTOR REMAPPING	========================
#if defined(__18CXX)
  //On PIC18 devices, addresses 0x00, 0x08, and 0x18 are used for
  //the reset, high priority interrupt, and low priority interrupt
  //vectors.  However, the current Microchip USB bootloader 
  //examples are intended to occupy addresses 0x00-0x7FF or
  //0x00-0xFFF depending on which bootloader is used.  Therefore,
  //the bootloader code remaps these vectors to new locations
  //as indicated below.  This remapping is only necessary if you
  //wish to program the hex file generated from this project with
  //the USB bootloader.  If no bootloader is used, edit the
  //usb_config.h file and comment out the following defines:
  //#define PROGRAMMABLE_WITH_SD_BOOTLOADER
 

  #if defined(PROGRAMMABLE_WITH_SD_BOOTLOADER)
    #define REMAPPED_RESET_VECTOR_ADDRESS     0xA000
    #define REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS  0xA008
    #define REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS 0xA018
  #else 
    #define REMAPPED_RESET_VECTOR_ADDRESS     0x00
    #define REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS  0x08
    #define REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS 0x18
  #endif
  
  #if defined(PROGRAMMABLE_WITH_SD_BOOTLOADER)
  extern void _startup (void);        // See c018i.c in your C18 compiler dir
  #pragma code REMAPPED_RESET_VECTOR = REMAPPED_RESET_VECTOR_ADDRESS
  void _reset (void)
  {
      _asm goto _startup _endasm
  }
  #endif
  #pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS
  void Remapped_High_ISR (void)
  {
       _asm goto YourHighPriorityISRCode _endasm
  }
  #pragma code REMAPPED_LOW_INTERRUPT_VECTOR = REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS
  void Remapped_Low_ISR (void)
  {
       _asm goto YourLowPriorityISRCode _endasm
  }
  
  #if defined(PROGRAMMABLE_WITH_SD_BOOTLOADER)
  //Note: If this project is built while one of the bootloaders has
  //been defined, but then the output hex file is not programmed with
  //the bootloader, addresses 0x08 and 0x18 would end up programmed with 0xFFFF.
  //As a result, if an actual interrupt was enabled and occured, the PC would jump
  //to 0x08 (or 0x18) and would begin executing "0xFFFF" (unprogrammed space).  This
  //executes as nop instructions, but the PC would eventually reach the REMAPPED_RESET_VECTOR_ADDRESS
  //(0x1000 or 0x800, depending upon bootloader), and would execute the "goto _startup".  This
  //would effective reset the application.
  
  //To fix this situation, we should always deliberately place a 
  //"goto REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS" at address 0x08, and a
  //"goto REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS" at address 0x18.  When the output
  //hex file of this project is programmed with the bootloader, these sections do not
  //get bootloaded (as they overlap the bootloader space).  If the output hex file is not
  //programmed using the bootloader, then the below goto instructions do get programmed,
  //and the hex file still works like normal.  The below section is only required to fix this
  //scenario.
  //#pragma code HIGH_INTERRUPT_VECTOR = 0x08
  /*void High_ISR (void)
  {
       _asm goto REMAPPED_HIGH_INTERRUPT_VECTOR_ADDRESS _endasm
  }*/
  //#pragma code LOW_INTERRUPT_VECTOR = 0x18
  /*void Low_ISR (void)
  {
       _asm goto REMAPPED_LOW_INTERRUPT_VECTOR_ADDRESS _endasm
  }*/
  #endif  //end of "#if defined(||defined(PROGRAMMABLE_WITH_USB_MCHPUSB_BOOTLOADER))"

  #pragma code
  
//	========================	Application Interrupt Service Routines	========================
  //These are your actual interrupt handling routines.
  #pragma code HIGH_INTERRUPT_VECTOR = 0x08
  void High_ISR (void){_asm goto HighPriotiryIsr _endasm}
  #pragma interrupt YourHighPriorityISRCode
  void YourHighPriorityISRCode()
  {
    //Check which interrupt flag caused the interrupt.
    //Service the interrupt
    //Clear the interrupt flag
    //Etc.
  
  } //This return will be a "retfie fast", since this is in a #pragma interrupt section 
  #pragma interruptlow YourLowPriorityISRCode
  void YourLowPriorityISRCode()
  {
    //Check which interrupt flag caused the interrupt.
    //Service the interrupt
    //Clear the interrupt flag
    //Etc.
  
  } //This return will be a "retfie", since this is in a #pragma interruptlow section 
#endif

//	========================	Board Initialization Code	========================
#pragma code
#define ROM_STRING rom unsigned char*

/******************************************************************************
 * Function:        void UserInit(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine should take care of all of the application code
 *                  initialization that is required.
 *
 * Note:            
 *
 *****************************************************************************/
void UserInit(void)
{

  /* Initialize the mTouch library */
  mTouchInit();

  /* Call the mTouch callibration function */
  mTouchCalibrate();

  /* Initialize the accelerometer */
  InitBma150(); 

  /* Initialize the oLED Display */
   ResetDevice();  
   FillDisplay(0x00);

}//end UserInit


/********************************************************************
 * Function:        static void InitializeSystem(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        InitializeSystem is a centralize initialization
 *                  routine. All required USB initialization routines
 *                  are called from here.
 *
 *                  User application initialization routine should
 *                  also be called from here.                  
 *
 * Note:            None
 *******************************************************************/
static void InitializeSystem(void)
{
	// Soft Start the APP_VDD
	while(!AppPowerReady());

    #if defined(PIC18F46J50_PIM)
  //Configure all I/O pins to use digital input buffers
    ANCON0 = 0xFF;                  // Default all pins to digital
    ANCON1 = 0xFF;                  // Default all pins to digital
    #endif
       
    UserInit();

}//end InitializeSystem


//  ========================    Application Code    ========================
void displayMode();
void setDate();
void Alarm();
void AmPm();

/* global variable */
int clockType = 1;
int setAlarm  = 0;
int am_pm_clock = 0;
int am_pm_string = 0;

/* analog clock points */
BYTE _x1[61] 	 =  {/*0*/64,67,71,74,77,80,83,84,85,86,/*10*/87,89,90,91,91,/*15*/90,88,86,84,82,/*20*/82,80,78,76,74,72,70,68,66,66,/*30*/ 64,61,58,55,51,/*35*/51,50,49,48,47,/*40*/47,46,45,44,43,/*45*/43,43,43,44,45,/*50*/45,44,44,46,48,/*55*/52,55,57,60,62,62};
BYTE _y1[61]     =  {/*0*/9,9,10,11,12,13,14,15,17,19,20,22,24,26,29,/*15*/32,34,37,40,42,43,45,46,48,50,51,52,53,54,54,/*30*/53,53,53,53,52,51,50,49,47,45,42,41,39,37,34,/*45*/32,30,27,24,22,19,17,15,14,13,11,10,10,9, 9};


typedef struct
{
    BYTE hour;
    BYTE min;
    BYTE sec;
    BYTE hSec;
}TIMER;

typedef struct
{
    BYTE hour;
}AM;

typedef struct
{
    BYTE day;
    BYTE month;
}DATE;

typedef struct
{
    BYTE hour;
    BYTE min;
}ALARM;

// =======================     Time =================================== 
static TIMER TMR0;
static DATE  DA0;
static ALARM  AL0;
static AM  AMPM;
static BYTE count0L;
static BYTE count0H;

void timer_initTimer0(BOOL useInterrupt)
{
    short count;
    T0CONbits.TMR0ON = 0;   
    T0CONbits.T08BIT = 0;   
    T0CONbits.T0CS = 0;     
    T0CONbits.PSA = 0;      
    T0CONbits.T0PS = 7;    
    INTCONbits.TMR0IF = 0;  

    TMR0.hour = 23;
    TMR0.min = 59;
    TMR0.sec = 50;
    TMR0.hSec = 0;

	DA0.day = 31;
	DA0.month = 12;

    AL0.hour = 0;
    AL0.min = 0;

	AMPM.hour = 11;
 
    count = 0xFFFF - (FOSC/CLOCK_TYPE/PRESCALE/100) + RL_OFFSET; 
    count0H = (count >> 8);
    count0L = (count % (1 << 8));

    if(useInterrupt)
    {
        INTCON2bits.TMR0IP = 1; 
        INTCONbits.TMR0IE = 1;  
        INTCONbits.TMR0IF = 0;  
    }   
}

void timer_startTimer0(void)
{ 
    TMR0H = count0H;            
    TMR0L = count0L;            
    T0CONbits.TMR0ON = 1;   
    INTCONbits.TMR0IF = 0;  
}

BYTE getAmPmHour(){
	switch(TMR0.hour)
	{
		case 0:
			AMPM.hour = 12;		
		break;
		case 1:
			AMPM.hour = 1;		
		break;
		case 2:
			AMPM.hour = 2;		
		break;
		case 3:
			AMPM.hour = 3;		
		break;
		case 4:
			AMPM.hour = 4;		
		break;
		case 5:
			AMPM.hour = 5;		
		break;
		case 6:
			AMPM.hour = 6;		
		break;
		case 7:
			AMPM.hour = 7;		
		break;
		case 8:
			AMPM.hour = 8;		
		break;
		case 9:
			AMPM.hour = 9;		
		break;
		case 10:
			AMPM.hour = 10;		
		break;
		case 11:
			AMPM.hour = 11;		
		break;
		case 12:
			AMPM.hour = 12;		
		break;

		case 13:
			AMPM.hour = 1;
		break;
		case 14:
			AMPM.hour = 2;
		break;
		case 15:
			AMPM.hour = 3;
		break;
		case 16:
			AMPM.hour = 4; 
		break;
		case 17:
			AMPM.hour = 5;
		break;
		case 18:
			AMPM.hour = 6;
		break;
		case 19:
			AMPM.hour = 7;
		break;
		case 20:
			AMPM.hour = 8;
		break;
		case 21:
			AMPM.hour = 9;
		break;
		case 22:
			AMPM.hour = 10;
		break;
		case 23:
			AMPM.hour = 11;	
		break;
		case 24:
			AMPM.hour = 12;
		break;
		default:
		break;
	}

	if(TMR0.hour == 0 || TMR0.hour <=  13)
		am_pm_string = 0;
	else
		am_pm_string = 1;	

	return AMPM.hour;
}

timer_showTimer1(int y, int x)
{
	
	static BYTE timer[20] = "";
    sprintf((char*)timer, "%02u:%02u:%02u", getAmPmHour(), TMR0.min, TMR0.sec);

	if(am_pm_string == 0)
		oledPutROMString("AM",y+1,x) ;
	else
		oledPutROMString("PM",y+1,x) ;
    
	oledPutString(timer, y, x);
}

void timer_showTimer0(int y, int x)
{
	static BYTE timer[20] = ""; 
    sprintf((char*)timer, "%02u:%02u:%02u", TMR0.hour, TMR0.min, TMR0.sec);
    oledPutString(timer, y, x);		
}


void timer_increamentTimer0(BYTE inc)
{
    TMR0.hSec += inc;
    if(TMR0.hSec >= 100)
    {
        TMR0.hSec = TMR0.hSec - 100;
        TMR0.sec++;
        if(TMR0.sec == 60)
        {
            TMR0.sec = 0;
            TMR0.min++;
            if(TMR0.min == 60)
            {
                TMR0.min = 0;
                TMR0.hour++;
                if(TMR0.hour == 24)
                {
                    TMR0.hour = 0;
                }
            }
        }
    }
}

BOOL timer_isTimer0Active(void)
{
    return T0CONbits.TMR0ON;
}

void HighPriotiryIsr(void)
{
    INTCONbits.GIE = 0; 
    if(INTCONbits.TMR0IF)
	{
    	timer_startTimer0();
    	_asm CLRWDT _endasm
	    timer_increamentTimer0(1);
	}
    INTCONbits.GIE = 1; 
}


//  =======================  button ================================
BOOL CheckButtonPressed(void)
{
    static char buttonPressed = FALSE;					
    static unsigned long buttonPressCounter = 0;  

    if(PORTBbits.RB0 == 0)														
    {		
        if(buttonPressCounter++ > 10)
        {
            buttonPressCounter = 0;
            buttonPressed = TRUE;	
        }
    }
    else
    {							
        if(buttonPressed == TRUE)
        {
            if(buttonPressCounter == 0)
            {	
                buttonPressed = FALSE;
                return TRUE;
            }
            else
            {
                buttonPressCounter--;
            }
        }
    }
    return FALSE;
}

char touchButtons()
{
	unsigned int left, right,scrollU, scrollD;;

	right  = mTouchReadButton(0);
	left   = mTouchReadButton(3);
	scrollU = mTouchReadButton(1);
	scrollD = mTouchReadButton(2);
	ADCON0 = 0b00010011;								 								

	if(!(left > 800)) return 'L';
	if(!(right > 800)) return 'R';
	if(scrollU > 965) return 'U';
	if(scrollD > 980) return 'D';
}

int potentiometer()
{
	char str[30];

	ADCON0bits.CHS = 4;		
	ADCON0bits.GO = 1;	
	while(ADCON0bits.GO);
	itoa(ADRES, str);					

	if(ADRES <= 1200 && ADRES > 1001){ return 7;}
	if(ADRES <= 1000 && ADRES > 750){ return 6;}
	if(ADRES < 750 && ADRES > 500){ return 5;}
	if(ADRES < 500 && ADRES > 250){ return 4;}
	if(ADRES < 250 && ADRES >= 0){ return 3;}
}

/*  =========================== menu ================================ */
void mainMenu()
{
 	int potenNum;
	FillDisplay(0x00);
	
	while(1)
	{
		if(am_pm_clock == 1)
			timer_showTimer1(0, 80);
		else	
			timer_showTimer0(0, 80);
		
		potenNum = potentiometer();
		oledPutROMString("CLOCK MENU",0,0) ;
		oledPutROMString("1 - Display Mode  ",3,0) ;
		oledPutROMString("2 - Set Time      ",4,0) ;
		oledPutROMString("3 - Set Date      ",5,0) ;	
		oledPutROMString("4 - Alarm         ",6,0) ;
		oledPutROMString("5 - 12H-24H 		",7,0) ;

		oledWriteChar1x(0x3C, potenNum   + 0xB0,120);
		oledWriteChar1x(0x20, potenNum-1 + 0xB0,120);
		oledWriteChar1x(0x20, potenNum+1 + 0xB0,120);
		
       	if(CheckButtonPressed() == TRUE){
			switch(potenNum)
			{
				case 3:
					displayMode();	
					break;
				case 4:
					setTime();	
					break;
				case 5:
					setDate();	
					break;
				case 6:
					Alarm();	
					break;
				case 7:
					AmPm();	
					break;
				default:
					break;
			}
		}	

		if(touchButtons() == 'L')
		{
			FillDisplay(0x00);
			return;
		}
		chackTime();
		chackAlarm();
	} 
}

void displayMode()
{
	char touch = 'F';
	int count = 3; 	
	int potenNum;
	FillDisplay(0x00);
	oledWriteChar1x(0x3C, count + 0xB0,120);

	while(1)
	{
		if(am_pm_clock ==1)
			timer_showTimer1(0, 80);
		else	
			timer_showTimer0(0, 80);
		
		oledPutROMString("CLOCK MENU",0,0) ;
		oledPutROMString("1 - Analog Clock",3,0) ;
		oledPutROMString("2 - Digitl Clock",4,0) ;
		
		touch = touchButtons();
		potenNum = potentiometer();
		
		if(potenNum == 3 || potenNum == 4)
		{		
			oledWriteChar1x(0x20, 4 + 0xB0,120);
			oledWriteChar1x(0x3C, 3 + 0xB0,120);
		}
		if(potenNum == 5 || potenNum == 6){
			oledWriteChar1x(0x20, 3 + 0xB0,120);
			oledWriteChar1x(0x3C, 4 + 0xB0,120);
		}
		
		chackTime();
		chackAlarm();

		if(touch == 'L')
		{
			return;
		}
		if(touch == 'R')
		{
			if(potenNum == 3 || potenNum ==4)
				clockType = 2;
			if(potenNum == 5 || potenNum == 6)
				clockType = 1;

			FillDisplay(0x00);
			return;
		}
	}
}

void AmPm(){
	char touch = 'F';
	int count = 3; 	
	int potenNum;
	FillDisplay(0x00);
	oledWriteChar1x(0x3C, count + 0xB0,120);

	while(1)
	{
		if(am_pm_clock ==1)
			timer_showTimer1(0, 80);
		else	
			timer_showTimer0(0, 80);
		
		oledPutROMString("PICK INTERVAL",0,0) ;
		oledPutROMString("1 - 12H",3,0) ;
		oledPutROMString("2 - 24H",4,0) ;
		
		touch = touchButtons();
		potenNum = potentiometer();
		
		if(potenNum == 3 || potenNum == 4)
		{		
			oledWriteChar1x(0x20, 4 + 0xB0,120);
			oledWriteChar1x(0x3C, 3 + 0xB0,120);
		}
		if(potenNum == 5 || potenNum == 7){
			oledWriteChar1x(0x20, 3 + 0xB0,120);
			oledWriteChar1x(0x3C, 4 + 0xB0,120);
		}
		
		chackTime();
		chackAlarm();

		if(touch == 'L')
		{
			return;
		}
		if(touch == 'R')
		{
			if(potenNum == 3 || potenNum ==4)
				am_pm_clock = 1;
			if(potenNum == 5 || potenNum == 7)
				am_pm_clock = 0;

			FillDisplay(0x00);
			return;
		}
	}


}

setTime()
{
	char touch = 'F';
	int count = 0; 

	int row = 50;
	int potenNum;
    BOOL button;

	int hour= TMR0.hour;
	int min = TMR0.min;
	int sec = TMR0.sec;	
	FillDisplay(0x00);
	
		
	while(1)
	{
		TMR0.sec = count ;
		timer_showTimer0(4, 50);
		oledPutROMString("SET TIME",0,0) ;
		touch = touchButtons();
		potenNum = potentiometer();
		
		if(potenNum == 3)
		{		
			oledWriteChar1x(0X5F, 5 + 0xB0, 50);
			oledWriteChar1x(0X5F, 5 + 0xB0, 50+6);
			oledWriteChar1x(0X20, 5 + 0xB0, 68);
			oledWriteChar1x(0X20, 5 + 0xB0, 68+6);
			row = 50;
		}
		if(potenNum == 4)
		{ 
			oledWriteChar1x(0X20, 5 + 0xB0, 50);
			oledWriteChar1x(0X20, 5 + 0xB0, 50+6);
			oledWriteChar1x(0X20, 5 + 0xB0, 86);
			oledWriteChar1x(0X20, 5 + 0xB0, 86+6);
			oledWriteChar1x(0X5F, 5 + 0xB0, 68);
			oledWriteChar1x(0X5F, 5 + 0xB0, 68+6);
			row =68;
		}
		if(potenNum == 5)
		{ 
			oledWriteChar1x(0X5F, 5 + 0xB0, 86);
			oledWriteChar1x(0X5F, 5 + 0xB0, 86+6);
			oledWriteChar1x(0X20, 5 + 0xB0, 68);
			oledWriteChar1x(0X20, 5 + 0xB0, 68+6);
			row =86;
		}
	
		
		if(row == 50){
			if(touch == 'U' && TMR0.hour < 23)
				TMR0.hour  += 1;
			if(touch == 'D' && TMR0.hour > 0)
				TMR0.hour  -= 1;
		}
	
				
		if(row == 68){
			if(touch == 'U' && TMR0.min < 59)
				TMR0.min   += 1;
			if(touch == 'D' && TMR0.min > 0)
				TMR0.min  -= 1;
		}

		if(row == 86){
			if(touch == 'U' && TMR0.sec < 59)
			{
				TMR0.sec += 1;
				count = TMR0.sec;
			}
				
			if(touch == 'D' && TMR0.sec > 0)
			{
				TMR0.sec -= 1;
				count = TMR0.sec;
			}
		}


		if(touch == 'L')
		{
			TMR0.hour = hour;;
			TMR0.min = min;
			TMR0.sec = sec;
			return;
		}
		if(touch == 'R')
		{
			return;
		}
		chackTime();
		chackAlarm();
	}
}

showDate(int y, int x)
{
	static BYTE date[20] = ""; 
    sprintf((char*)date, "%02u/%02u", DA0.day , DA0.month);
    oledPutString(date, y, x);
}

void setDate()
{
	char touch = 'F';
	int count = 1; 
	int row = 50;
    BOOL button;
	int potenNum;

	int day = DA0.day;
	int month = DA0.month;	

	FillDisplay(0x00);		

	while(1)
	{
		showDate(4, 50);
		oledPutROMString("SET DATE",0,0) ;	
		if(am_pm_clock ==1)
			timer_showTimer1(0, 80);
		else	
			timer_showTimer0(0, 80);
		touch = touchButtons();
		potenNum = potentiometer();

		if(potenNum == 3)
		{	
			row = 50;	
			oledWriteChar1x(0X5F, 5 + 0xB0, 50);
			oledWriteChar1x(0X5F, 5 + 0xB0, 50+6);
			oledWriteChar1x(0X20, 5 + 0xB0, 68);
			oledWriteChar1x(0X20, 5 + 0xB0, 68+6);
		}
		if(potenNum == 4)
		{
			row = 68;
			oledWriteChar1x(0X20, 5 + 0xB0, 50);
			oledWriteChar1x(0X20, 5 + 0xB0, 50+6);
			oledWriteChar1x(0X5F, 5 + 0xB0, 68);
			oledWriteChar1x(0X5F, 5 + 0xB0, 68+6);
		}

		if(row == 50){
			if(touch == 'U' && DA0.day < 31)
				DA0.day  += 1;
			if(touch == 'D' && DA0.day > 1)
				DA0.day  -= 1;
		}

		if(row == 68){
			if(touch == 'U' && DA0.month < 12)
				DA0.month   += 1;
			if(touch == 'D' && DA0.month > 1)
				DA0.month  -= 1;
		}

       	if(touch == 'L')
		{
			DA0.month = month;
			DA0.day = day;
			return;
		}
		if(touch == 'R')
		{
			return;
		}
		chackTime();
		chackAlarm();
	}
}

showAlarm(int y, int x)
{
	static BYTE alarm[20] = ""; 
    sprintf((char*)alarm, "%02u:%02u", AL0.hour, AL0.min);
    oledPutString(alarm, y, x);
}

void Alarm()
{
	char touch = 'F';
	int count = 1; 
	int row = 50;
    BOOL button;
	int potenNum;	

	FillDisplay(0x00);		

	while(1)
	{
		showAlarm(4, 50);	
		oledPutROMString("SET ALARM",0,0) ;
		if(am_pm_clock ==1)
			timer_showTimer1(0, 80);
		else	
			timer_showTimer0(0, 80);
		potenNum = potentiometer();
		touch = touchButtons();

		if(potenNum==3 || potenNum==4)	
		{
			row =50;
			oledWriteChar1x(0X5F, 5 + 0xB0, 50);
			oledWriteChar1x(0X5F, 5 + 0xB0, 50+6);
			oledWriteChar1x(0X20, 5 + 0xB0, 68);
			oledWriteChar1x(0X20, 5 + 0xB0, 68+6);
		}
		if(potenNum == 5 || potenNum == 6)
		{
			row =68;
			oledWriteChar1x(0X20, 5 + 0xB0, 50);
			oledWriteChar1x(0X20, 5 + 0xB0, 50+6);
			oledWriteChar1x(0X5F, 5 + 0xB0, 68);
			oledWriteChar1x(0X5F, 5 + 0xB0, 68+6);
	
		}
				
		if(row == 50){
			if(touch == 'U' && AL0.hour < 23)
				AL0.hour  += 1;
			if(touch == 'D' && AL0.hour > 0)
				AL0.hour  -= 1;
		}

		if(row == 68){
			if(touch == 'U' && AL0.min < 59)
				AL0.min   += 1;
			if(touch == 'D' && AL0.min > 0)
				AL0.min  -= 1;
		}

       	if(touch == 'L')
		{
			setAlarm  = 0;
			return;
		}
		if(touch == 'R')
		{
			setAlarm  = 1;
			return;
		}
		chackTime();
		chackAlarm();

	}
}

void printDigitalClock()
{
	int i,x;
	int tempTime[2] = {0,0};
	int j = 2;
	BYTE timer[] = {TMR0.hour, TMR0.min, TMR0.sec};
	unsigned char col[3][2] = {{0,20},{48,66},{90,110}};

	if(am_pm_clock == 1)
		timer[0] = getAmPmHour();
	
	if(am_pm_string == 0 && am_pm_clock == 1)
		oledPutROMString("AM",7,0) ;
	if(am_pm_string == 1 && am_pm_clock == 1)
		oledPutROMString("PM",7,0) ;
	
	for(i = 0; i < 3 ; ++i)
	{
		tempTime[0] = timer[i] / 10;   		
		tempTime[1] = timer[i] % 10;	    		
		 
		
		for(x = 0; x < 2; ++x)
		{	
			switch (tempTime[x])
			{			
				case 0:
					PrintDigit(0x20,col[i][x]);
					break;
				case 1:	
					PrintDigit(0x24,col[i][x]);
					break;
				case 2:	
					PrintDigit(0x28,col[i][x]);
					break;
				case 3:
					PrintDigit(0x2C,col[i][x]);
					break;
				case 4:	
					PrintDigit(0x30,col[i][x]);
					break;
				case 5:	
					PrintDigit(0x34,col[i][x]);
					break;
				case 6:	
					PrintDigit(0x38,col[i][x]);
					break;
				case 7:	
					PrintDigit(0x3C,col[i][x]);
					break;
				case 8:
					PrintDigit(0x40,col[i][x]);
					break;
				case 9:	
					PrintDigit(0x44,col[i][x]);
					break;
				default:
					break;
			}
		}
		// print ":" 
		oledWriteChar1x(0x6F,0xB3 , 40);
		oledWriteChar1x(0x6F,0xB4 , 40);
		oledWriteChar1x(0x6F,0xB3 , 84);
		oledWriteChar1x(0x6F,0xB4 , 84);
	}
}

chackTime()
{
	if(TMR0.hour == 23 && TMR0.min == 59 && TMR0.sec == 59)
	{
		TMR0.hour = 0;
		TMR0.min = 0;
		TMR0.sec = 0;

		if(DA0.day == 31)
		{	
			DA0.day = 1;
			if(DA0.month == 12)
				DA0.month = 1;
			else
				DA0.month += 1;
		}
		else
			DA0.day = DA0.day + 1;
    	if(DA0.month == 12)
			DA0.month = 1;	
	}
}

chackAlarm()
{
	BOOL press;

	if(setAlarm == 1 && AL0.hour == TMR0.hour || AL0.hour == AMPM.hour && AL0.min == TMR0.min)
	{
		if(TMR0.sec <= 20)
		{
			DelayMs(30) ;
			press  = CheckButtonPressed();
			if(press == TRUE)
			{	
				setAlarm = 0;
				oledWriteChar1x(0X5F, 7 + 0xB0, 50);
				return 0;
			}
			FillDisplay(0x00);
		}				
	}
}


/* analog second move*/
analog()
{
	drawLine(64, 0, 64, 5, thick);
	drawLine(96, 32, 103, 32, thick);
	drawLine(64, 64, 64, 59, thick);
	drawLine(27, 32, 34,32, thick);

	drawLine(91, 18, 97,12, thin);
	drawLine(91,45, 97,51, thin);
	drawLine(37, 45, 31,51, thin);
	drawLine(37, 18, 31,12, thin);
}

//print the analog clock 
void printAnlogClock()
{
	int hour;
	FillDisplay(0x00);

	switch(TMR0.hour){
		case 1: 
			hour = 5; 
			break; 
		case 2: 
			hour = 10; 
			break;
		case 3: 
			hour = 15; 
			break;
		case 4: 
			hour = 20; 
			break;
		case 5: 
			hour = 25; 
			break;
		case 6: 
			hour = 30; 
			break;
		case 7: 
			hour = 35; 
			break;
		case 8: 
			hour = 40; 
			break;
		case 9: 
			hour = 45; 
			break;
		case 10: 
			hour = 50; 
			break;
		case 11: 
			hour = 55; 
			break;
		case 12: 
			hour = 0; 
			break;
		case 13: 
			hour = 5; 
			break; 
		case 14: 
			hour = 10; 
			break;
		case 15: 
			hour = 15; 
			break;
		case 16:
			hour = 20; 
			break;
		case 17: 	
			hour = 25; 
			break;
		case 18: 
			hour = 30; 
			break;
		case 19: 
			hour = 35; 
			break;
		case 20: 
			hour = 40; 
			break;
		case 21: 
			hour = 45; 
			break;
		case 22: 
			hour = 50; 
			break;
		case 23: 
			hour = 55; 
			break;
		case 0: 
			hour = 0; 
			break;
	}

	drawLine(64, 32, _x1[TMR0.sec], _y1[TMR0.sec], thin);
	drawLine(64, 32, _x1[TMR0.min], _y1[TMR0.min], thick);
	drawLine(64, 32, _x1[hour], _y1[hour], fat);
}

/********************************************************************
 * Function:        void main(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Main program entry point.
 *
 * Note:            None
 *******************************************************************/
void main(void)
{
	int selection;
	BOOL button;

	InitializeSystem();
    timer_initTimer0(TRUE); 
    INTCONbits.GIEH = 1;    
    RCONbits.IPEN = 1;      
    timer_startTimer0();
    WDTCONbits.SWDTEN = 1;
		
    while(1)                            //Main is Usualy an Endless Loop
    {
        
        if(timer_isTimer0Active()) // Check timer activity for optimisation
        {	
			if(clockType == 1)
			{	
				showDate(7, 95);
				printDigitalClock();

				chackTime();
				if(setAlarm == 1)
					showAlarm(0, 0);
			}else{
				//Analog Clock
				printAnlogClock();
				analog();
				showDate(7, 0);
				chackTime();
				if(setAlarm == 1)
					showAlarm(0, 0);
			}

			button = CheckButtonPressed();
        	if(button == TRUE){
				mainMenu();
			}

			chackAlarm();
			
		}   
    }
}//end main


/** EOF main.c *************************************************/
//#endif
