#include <stdio.h>
#include <p18cxxx.h>
#include "timer.h"
#include "oled.h"

#define FOSC 		12000000
#define CLOCK_TYPE	4
#define PRESCALE	256
#define RL_OFFSET	1

typedef struct
{
	/* Current time */
	BYTE hour;
	BYTE min;
	BYTE sec;
	BYTE hSec;
}TIMER;

/* Internal Timer Structure to hold its current values */
static TIMER TMR0;

/* Internal globals to hold the initial value of the timer registers */
static BYTE count0L;
static BYTE count0H;

/*********************************************************************
* Function:  void timer_initTimer0(BOOL useInterrupt)
*
* PreCondition: none.
*
* Input: BOOL useInterrupt - will it cause interrupt on overflow.
*
* Output: none.
*
* Side Effects: none.
*
* Overview: Initialize's the timer0 configuratiion. clears the structure and set interrupts if needed.
*
********************************************************************/
void timer_initTimer0(BOOL useInterrupt)
{
	short count;

	/* Timer Configuration */
	T0CONbits.TMR0ON = 0;	// Deactivate timer
	T0CONbits.T08BIT = 0;	// Set timer to 16 bit
	T0CONbits.T0CS = 0;		// Set internal clock source (Fosc/4)
	T0CONbits.PSA = 0;		// Use prescaler
	T0CONbits.T0PS = 7;		// Set prescaler to 1:256
	INTCONbits.TMR0IF = 0; 	// Clear the interrupt flag

	/* Clear the timer's values */
	TMR0.hour = 0;
	TMR0.min = 0;
	TMR0.sec = 0;
	TMR0.hSec = 0;

	/* Compute the counting registers values */
	count = 0xFFFF - (FOSC/CLOCK_TYPE/PRESCALE/100) + RL_OFFSET; // Set count to centisecond
	count0H = (count >> 8);
	count0L = (count % (1 << 8));

	/* Configure interrupts if flagged */
	if(useInterrupt)
	{
		INTCON2bits.TMR0IP = 1;	// Set high interrupt priority
		INTCONbits.TMR0IE = 1;	// Set interrupts enabled
		INTCONbits.TMR0IF = 0;	// Clear interrupt flag
	}	
}

/*********************************************************************
* Function:  void timer_startTimer0(void)
*
* PreCondition: none.
*
* Input: none.
*
* Output: none.
*
* Side Effects: none
*
* Overview: Reset/Activate Timer0.
*
********************************************************************/
void timer_startTimer0(void)
{ 
	TMR0H = count0H;			// Assign the MSB register.
	TMR0L = count0L;			// Assign the LSB register.

	T0CONbits.TMR0ON = 1;	// Activate timer

	INTCONbits.TMR0IF = 0; 	// Clear the interrupt flag
}

/*********************************************************************
* Function:  void timer_stopTimer0(void)
*
* PreCondition: none.
*
* Input: none.
*
* Output: none.
*
* Side Effects: none.
*
* Overview: Deactivate Timer0.
*
********************************************************************/
void timer_stopTimer0(void)
{
	T0CONbits.TMR0ON = 0;	// Deactivate timer
	INTCONbits.TMR0IF = 0; 	// Clear the interrupt flag
}

/*********************************************************************
* Function:  void timer_showTimer0(void)
*
* PreCondition: none.
*
* Input: none.
*
* Output: none.
*
* Side Effects: none.
*
* Overview: Parses the timer structure into a displayable string and puts it in the screen.
*
********************************************************************/
void timer_showTimer0(void)
{
	static BYTE timer[20] = "";	// Time message buffer

	/* Parse time message */
	sprintf((char*)timer, "TIME: %02u:%02u:%02u.%02u", TMR0.hour, TMR0.min, TMR0.sec, TMR0.hSec);

	/* Put time message in the screen */
	Oled_PutString(timer, 4, 0, FALSE);
}

/*********************************************************************
* Function:  void timer_increamentTimer0(BYTE inc)
*
* PreCondition: none.
*
* Input: BYTE inc - amount of centisecond to increase.
*
* Output: none.
*
* Side Effects: none
*
* Overview: Add inc hundreth seconds to the timer0 structure and update the reaction.
*
********************************************************************/
void timer_increamentTimer0(BYTE inc)
{
	/* Increament the total value of the timer by inc centiseconed */
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

/*********************************************************************
* Function:  BOOL timer_isTimer0Active(void)
*
* PreCondition: none.
*
* Input: none.
*
* Output: BOOL - true if time is active, false otherwise.
*
* Side Effects: none
*
* Overview: Return the current state of the timer.
*
********************************************************************/
BOOL timer_isTimer0Active(void)
{
	return T0CONbits.TMR0ON;
}

/*********************************************************************
* Function:  BOOL timer_isTimer0Interrupt(void)
*
* PreCondition: none.
*
* Input: none.
*
* Output: BOOL - true if the interrupt flag is up, false otherwise.
*
* Side Effects: none.
*
* Overview: Returns the state of the timer0's interrupt flag.
*
********************************************************************/
BOOL timer_isTimer0Interrupt(void)
{
	return INTCONbits.TMR0IF;
}
