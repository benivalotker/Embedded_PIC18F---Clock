/********************************************************************
 FileName:     main.c
 Dependencies: See INCLUDES section
 Processor:   PIC18 or PIC24 USB Microcontrollers
 Hardware:    The code is natively intended to be used on the following
        hardware platforms: PICDEM™ FS USB Demo Board, 
        PIC18F87J50 FS USB Plug-In Module, or
        Explorer 16 + PIC24 USB PIM.  The firmware may be
        modified for use on other USB platforms by editing the
        HardwareProfile.h file.
 Complier:    Microchip C18 (for PIC18) or C30 (for PIC24)
 Company:   Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the “Company”) for its PIC® Microcontroller is intended and
 supplied to you, the Company’s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
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
	while(!AppPowerReady())
		;

    #if defined(PIC18F46J50_PIM)
  //Configure all I/O pins to use digital input buffers
    ANCON0 = 0xFF;                  // Default all pins to digital
    ANCON1 = 0xFF;                  // Default all pins to digital
    #endif
       
    UserInit();

}//end InitializeSystem


//  ========================    Application Code    ========================
void isr_handleButtonInterrupt(void);
void isr_handleTimer0Interrupt(void);
void displayMode();
void displayMode();
void setDate();
void Alarm();

int clockType = 1;
int setAlarm  = 0;
//  =======================     Time ===================================
#define FOSC        12000000
#define CLOCK_TYPE  4
#define PRESCALE    256
#define RL_OFFSET   1

typedef struct
{
    /* Current time */
    BYTE hour;
    BYTE min;
    BYTE sec;
    BYTE hSec;
}TIMER;

typedef struct
{
    /* Current date */
    BYTE day;
    BYTE month;
}DATE;

typedef struct
{
    BYTE hour;
    BYTE min;
}ALARM;

/* Internal Timer Structure to hold its current values */
static TIMER TMR0;
static DATE  DA0;
static ALARM  AL0;
/* Internal globals to hold the initial value of the timer registers */
static BYTE count0L;
static BYTE count0H;

void timer_initTimer0(BOOL useInterrupt)
{
    short count;

    /* Timer Configuration */
    T0CONbits.TMR0ON = 0;   // Deactivate timer
    T0CONbits.T08BIT = 0;   // Set timer to 16 bit
    T0CONbits.T0CS = 0;     // Set internal clock source (Fosc/4)
    T0CONbits.PSA = 0;      // Use prescaler
    T0CONbits.T0PS = 7;     // Set prescaler to 1:256
    INTCONbits.TMR0IF = 0;  // Clear the interrupt flag

    /* Clear the timer's values */
    TMR0.hour = 12;
    TMR0.min = 0;
    TMR0.sec = 0;
    TMR0.hSec = 0;

	/* clear the date */
	DA0.day = 01;
	DA0.month = 01;

	/* Clear the alarm values */
    AL0.hour = 0;
    AL0.min = 0;
 
    /* Compute the counting registers values */
    count = 0xFFFF - (FOSC/CLOCK_TYPE/PRESCALE/100) + RL_OFFSET; // Set count to centisecond
    count0H = (count >> 8);
    count0L = (count % (1 << 8));

    /* Configure interrupts if flagged */
    if(useInterrupt)
    {
        INTCON2bits.TMR0IP = 1; // Set high interrupt priority
        INTCONbits.TMR0IE = 1;  // Set interrupts enabled
        INTCONbits.TMR0IF = 0;  // Clear interrupt flag
    }   
}

void timer_startTimer0(void)
{ 
    TMR0H = count0H;            // Assign the MSB register.
    TMR0L = count0L;            // Assign the LSB register.

    T0CONbits.TMR0ON = 1;   // Activate timer

    INTCONbits.TMR0IF = 0;  // Clear the interrupt flag
}

void timer_stopTimer0(void)
{
    T0CONbits.TMR0ON = 0;   // Deactivate timer
    INTCONbits.TMR0IF = 0;  // Clear the interrupt flag
}

void timer_showTimer0(int y, int x)
{
    static BYTE timer[20] = ""; // Time message buffer

    /* Parse time message */
    sprintf((char*)timer, "%02u:%02u:%02u", TMR0.hour, TMR0.min, TMR0.sec);

    /* Put time message in the screen */
    oledPutString(timer, y, x);		
}

void timer_increamentTimer0(BYTE inc)
{
    //Increament the total value of the timer by inc centiseconed 
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


BOOL timer_isTimer0Interrupt(void)
{
    return INTCONbits.TMR0IF;
}


//  ========================     ISR ===================================

void isr_enableGlobalInterrupts(void)
{
    /* Global Configuration */
    INTCONbits.GIEH = 1;    // Enable high priority interrupts
    RCONbits.IPEN = 1;      // Enable interrupt priority
}

void isr_handleButtonInterrupt(void)
{
    /* Check Timer0 Flag */
    if(timer_isTimer0Active())
        /* Stop Timer0 */
        timer_stopTimer0();
    else
        /* Start Timer0 */
        timer_startTimer0();
}

void isr_handleTimer0Interrupt(void)
{
    /* Rewind Timer */
    timer_startTimer0();

    /* Reset WatchDog Timer */
    _asm CLRWDT _endasm

    /* Update Structure */
    timer_increamentTimer0(1);
}

void HighPriotiryIsr(void)
{
    INTCONbits.GIE = 0; // Disable interrupts to avoid chain interrupts

     //Check Timer0 Interrupt 
    if(timer_isTimer0Interrupt())
        isr_handleTimer0Interrupt();    // Call the handler of this interrupt

    INTCONbits.GIE = 1; // Enable interrupts
}

#pragma code HIGH_INTERRUPT_VECTOR = 0x08
void High_ISR (void){_asm goto HighPriotiryIsr _endasm}

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
	ADCON0 = 0b00010011;								//potentiometer declire again 								

	//chack left touch
	if(!(left > 800))
		return 'L';
	
	//chack left touch
	if(!(right > 800))
		return 'R';

	//chack  scroll
	if(scrollU > 965)									
		return 'U';
	if(scrollD > 980)
		return 'D';

}

int potentiometer()
{
	int i;
	char str[30];

	ADCON0bits.CHS = 4;		
	ADCON0bits.GO = 1;	
	while(ADCON0bits.GO);

	itoa(ADRES, str);					

	//Fill the selected item in main menu bt potentimeter current value
	if(ADRES <= 1200 && ADRES > 750){ return 6;}
	if(ADRES < 750 && ADRES > 500){ return 5;}
	if(ADRES < 500 && ADRES > 250){ return 4;}
	if(ADRES < 250 && ADRES >= 0){ return 3;}
}

/*  =========================== menu ================================ */
void mainMenu()
{
 	int potenNum;
	BOOL button;
	FillDisplay(0x00);
	
	while(1)
	{
		timer_showTimer0(0, 80);
		oledPutROMString("CLOCK MENU",0,0) ;
		oledPutROMString("1 - Display Mode  ",3,0) ;
		oledPutROMString("2 - Set Time      ",4,0) ;
		oledPutROMString("3 - Set Date      ",5,0) ;	
		oledPutROMString("4 - Alarm         ",6,0) ;

		potenNum = potentiometer();
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
				default:
					break;
			}
		}	

		if(touchButtons() == 'L')
		{
			FillDisplay(0x00);
			return;
		}
	} 
}

void displayMode()
{
	char touch = 'F';
	int count = 3; 	
	FillDisplay(0x00);
	oledWriteChar1x(0x3C, count + 0xB0,120);

	while(1)
	{
		timer_showTimer0(0, 80);
		oledPutROMString("CLOCK MENU",0,0) ;
		oledPutROMString("1 - Analog Clock",3,0) ;
		oledPutROMString("2 - Digitl Clock",4,0) ;	
		
		touch = touchButtons();
		if(touch == 'U')
		{		
			oledWriteChar1x(0x20, count + 0xB0,120);
			count -= 1;	
			if(count < 3)
				count =3;
			oledWriteChar1x(0x3C, count + 0xB0,120);
		}
		if(touch == 'D')
		{
			oledWriteChar1x(0x20, count + 0xB0,120);
			count += 1;
			if(count > 4)
				count = 4;
			oledWriteChar1x(0x3C, count + 0xB0,120);
		}
		
		if(CheckButtonPressed() == TRUE)
		{
			if(count == 3)
				clockType = 2;
			if(count == 4)
				clockType = 1;

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
			if(touch == 'U' && TMR0.hour < 24)
				TMR0.hour  += 1;
			if(touch == 'D' && TMR0.hour > 1)
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
	}
}

showDate(int y, int x)
{
	static BYTE date[20] = ""; // Time message buffer
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
	}
}

showAlarm(int y, int x)
{
	static BYTE alarm[20] = ""; // Time message buffer
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

		potenNum = potentiometer();
		touch = touchButtons();

		if(potenNum==3)	
		{
			row =50;
			oledWriteChar1x(0X5F, 5 + 0xB0, 50);
			oledWriteChar1x(0X5F, 5 + 0xB0, 50+6);
			oledWriteChar1x(0X20, 5 + 0xB0, 68);
			oledWriteChar1x(0X20, 5 + 0xB0, 68+6);
		}
		if(potenNum == 4)
		{
			row =68;
			oledWriteChar1x(0X20, 5 + 0xB0, 50);
			oledWriteChar1x(0X20, 5 + 0xB0, 50+6);
			oledWriteChar1x(0X5F, 5 + 0xB0, 68);
			oledWriteChar1x(0X5F, 5 + 0xB0, 68+6);
	
		}
				
		if(row == 50){
			if(touch == 'U' && AL0.hour < 24)
				AL0.hour  += 1;
			if(touch == 'D' && AL0.hour > 1)
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

	}
}

void printDigitalClock()
{
	int i,x;
	int tempTime[2] = {0,0};
	int j = 2;
	BYTE timer[] = {TMR0.hour, TMR0.min, TMR0.sec};
	unsigned char col[3][2] = {{0,20},{48,66},{90,110}};

	for(i = 0; i < 3 ; ++i)
	{
		tempTime[0] = timer[i] / 10;   		// getting the msb digit
		tempTime[1] = timer[i] % 10;	    // getting the lsb digit		
		 
		
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

    /* Initialize Timer */
    timer_initTimer0(TRUE); // Initiate timer0 to count 1centiseconds and invoke its interrupts.
    //timer_showTimer0();

    /* Initialize Interrupts */
    isr_enableGlobalInterrupts();

    /* Start Timer0 */
    timer_startTimer0();

    /* Init WatchDog Timer */
    WDTCONbits.SWDTEN = 1;
		
    while(1)                            //Main is Usualy an Endless Loop
    {
        /* Show Timer */
        if(timer_isTimer0Active()) // Check timer activity for optimisation
        {	
			if(clockType == 1)
			{	
				//timer_showTimer0(5, 50);
				showDate(0, 95);
				printDigitalClock();
				if(setAlarm == 1)
					showAlarm(0, 0);
			}else{
				showDate(0, 100);
				if(setAlarm == 1)
					showAlarm(0, 0);
			}

				
			button = CheckButtonPressed();
        	if(button == TRUE){
				mainMenu();
			}
		}   
    }
}//end main




/** EOF main.c *************************************************/
//#endif
