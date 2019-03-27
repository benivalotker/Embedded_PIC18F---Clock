#line 1 "main.c"
#line 1 "main.c"

#line 42 "main.c"
 



#line 49 "main.c"



#line 1 "../../Microchip/Include/GenericTypeDefs.h"

#line 43 "../../Microchip/Include/GenericTypeDefs.h"
 


#line 47 "../../Microchip/Include/GenericTypeDefs.h"

typedef enum _BOOL { FALSE = 0, TRUE } BOOL;	


#line 52 "../../Microchip/Include/GenericTypeDefs.h"
#line 53 "../../Microchip/Include/GenericTypeDefs.h"

#line 55 "../../Microchip/Include/GenericTypeDefs.h"
#line 56 "../../Microchip/Include/GenericTypeDefs.h"
#line 57 "../../Microchip/Include/GenericTypeDefs.h"

typedef unsigned char		BYTE;				
typedef unsigned short int	WORD;				
typedef unsigned long		DWORD;				
typedef unsigned long long	QWORD;				
typedef signed char			CHAR;				
typedef signed short int	SHORT;				
typedef signed long			LONG;				
typedef signed long long	LONGLONG;			

 
typedef void                VOID;

typedef char                CHAR8;
typedef unsigned char       UCHAR8;

 



typedef signed int          INT;
typedef signed char         INT8;
typedef signed short int    INT16;
typedef signed long int     INT32;
typedef signed long long    INT64;

typedef unsigned int        UINT;
typedef unsigned char       UINT8;
typedef unsigned short int  UINT16;
typedef unsigned long int   UINT32;  
typedef unsigned long long  UINT64;

typedef union _BYTE_VAL
{
    BYTE Val;
    struct
    {
        unsigned char b0:1;
        unsigned char b1:1;
        unsigned char b2:1;
        unsigned char b3:1;
        unsigned char b4:1;
        unsigned char b5:1;
        unsigned char b6:1;
        unsigned char b7:1;
    } bits;
} BYTE_VAL, BYTE_BITS;

typedef union _WORD_VAL
{
    WORD Val;
    BYTE v[2];
    struct
    {
        BYTE LB;
        BYTE HB;
    } byte;
    struct
    {
        unsigned char b0:1;
        unsigned char b1:1;
        unsigned char b2:1;
        unsigned char b3:1;
        unsigned char b4:1;
        unsigned char b5:1;
        unsigned char b6:1;
        unsigned char b7:1;
        unsigned char b8:1;
        unsigned char b9:1;
        unsigned char b10:1;
        unsigned char b11:1;
        unsigned char b12:1;
        unsigned char b13:1;
        unsigned char b14:1;
        unsigned char b15:1;
    } bits;
} WORD_VAL, WORD_BITS;

typedef union _DWORD_VAL
{
    DWORD Val;
	WORD w[2];
    BYTE v[4];
    struct
    {
        WORD LW;
        WORD HW;
    } word;
    struct
    {
        BYTE LB;
        BYTE HB;
        BYTE UB;
        BYTE MB;
    } byte;
    struct
    {
        WORD_VAL low;
        WORD_VAL high;
    }wordUnion;
    struct
    {
        unsigned char b0:1;
        unsigned char b1:1;
        unsigned char b2:1;
        unsigned char b3:1;
        unsigned char b4:1;
        unsigned char b5:1;
        unsigned char b6:1;
        unsigned char b7:1;
        unsigned char b8:1;
        unsigned char b9:1;
        unsigned char b10:1;
        unsigned char b11:1;
        unsigned char b12:1;
        unsigned char b13:1;
        unsigned char b14:1;
        unsigned char b15:1;
        unsigned char b16:1;
        unsigned char b17:1;
        unsigned char b18:1;
        unsigned char b19:1;
        unsigned char b20:1;
        unsigned char b21:1;
        unsigned char b22:1;
        unsigned char b23:1;
        unsigned char b24:1;
        unsigned char b25:1;
        unsigned char b26:1;
        unsigned char b27:1;
        unsigned char b28:1;
        unsigned char b29:1;
        unsigned char b30:1;
        unsigned char b31:1;
    } bits;
} DWORD_VAL;

typedef union _QWORD_VAL
{
    QWORD Val;
	DWORD d[2];
	WORD w[4];
    BYTE v[8];
    struct
    {
        DWORD LD;
        DWORD HD;
    } dword;
    struct
    {
        WORD LW;
        WORD HW;
        WORD UW;
        WORD MW;
    } word;
    struct
    {
        unsigned char b0:1;
        unsigned char b1:1;
        unsigned char b2:1;
        unsigned char b3:1;
        unsigned char b4:1;
        unsigned char b5:1;
        unsigned char b6:1;
        unsigned char b7:1;
        unsigned char b8:1;
        unsigned char b9:1;
        unsigned char b10:1;
        unsigned char b11:1;
        unsigned char b12:1;
        unsigned char b13:1;
        unsigned char b14:1;
        unsigned char b15:1;
        unsigned char b16:1;
        unsigned char b17:1;
        unsigned char b18:1;
        unsigned char b19:1;
        unsigned char b20:1;
        unsigned char b21:1;
        unsigned char b22:1;
        unsigned char b23:1;
        unsigned char b24:1;
        unsigned char b25:1;
        unsigned char b26:1;
        unsigned char b27:1;
        unsigned char b28:1;
        unsigned char b29:1;
        unsigned char b30:1;
        unsigned char b31:1;
        unsigned char b32:1;
        unsigned char b33:1;
        unsigned char b34:1;
        unsigned char b35:1;
        unsigned char b36:1;
        unsigned char b37:1;
        unsigned char b38:1;
        unsigned char b39:1;
        unsigned char b40:1;
        unsigned char b41:1;
        unsigned char b42:1;
        unsigned char b43:1;
        unsigned char b44:1;
        unsigned char b45:1;
        unsigned char b46:1;
        unsigned char b47:1;
        unsigned char b48:1;
        unsigned char b49:1;
        unsigned char b50:1;
        unsigned char b51:1;
        unsigned char b52:1;
        unsigned char b53:1;
        unsigned char b54:1;
        unsigned char b55:1;
        unsigned char b56:1;
        unsigned char b57:1;
        unsigned char b58:1;
        unsigned char b59:1;
        unsigned char b60:1;
        unsigned char b61:1;
        unsigned char b62:1;
        unsigned char b63:1;
    } bits;
} QWORD_VAL;

#line 282 "../../Microchip/Include/GenericTypeDefs.h"
#line 52 "main.c"

#line 1 "../../Microchip/Include/Compiler.h"

#line 51 "../../Microchip/Include/Compiler.h"
 

#line 54 "../../Microchip/Include/Compiler.h"


#line 57 "../../Microchip/Include/Compiler.h"
	
#line 59 "../../Microchip/Include/Compiler.h"
#line 62 "../../Microchip/Include/Compiler.h"
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"

#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 7 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 15 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 17 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 21 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 23 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 27 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 29 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 31 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 35 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 37 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 47 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 49 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 51 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 53 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 57 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 59 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 61 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 63 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 65 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 69 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 71 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 73 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 75 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 77 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 79 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 81 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 85 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 87 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 89 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 91 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 93 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 99 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 101 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 103 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 105 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 107 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 109 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 111 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 113 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 115 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 117 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 119 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 121 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 123 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 125 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 127 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 129 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 131 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 133 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 135 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 137 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 139 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 141 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 143 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 145 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 149 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 151 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 153 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 155 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 157 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 159 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 163 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 165 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 167 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 169 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 171 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 173 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 175 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 177 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 179 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 181 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 185 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 187 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 189 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 191 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 193 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 195 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 197 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 201 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 203 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 205 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 207 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 209 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 211 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 213 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 215 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 217 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 219 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 221 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 223 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 225 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 227 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 229 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 231 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 233 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 235 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 237 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 239 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 241 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 243 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 245 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 247 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 249 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 251 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"

#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
 


#line 37 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"

extern volatile far  unsigned char       RPOR0;
extern volatile far  unsigned char       RPOR1;
extern volatile far  unsigned char       RPOR2;
extern volatile far  unsigned char       RPOR3;
extern volatile far  unsigned char       RPOR4;
extern volatile far  unsigned char       RPOR5;
extern volatile far  unsigned char       RPOR6;
extern volatile far  unsigned char       RPOR7;
extern volatile far  unsigned char       RPOR8;
extern volatile far  unsigned char       RPOR9;
extern volatile far  unsigned char       RPOR10;
extern volatile far  unsigned char       RPOR11;
extern volatile far  unsigned char       RPOR12;
extern volatile far  unsigned char       RPOR13;
extern volatile far  unsigned char       RPOR17;
extern volatile far  unsigned char       RPOR18;
extern volatile far  unsigned char       RPOR19;
extern volatile far  unsigned char       RPOR20;
extern volatile far  unsigned char       RPOR21;
extern volatile far  unsigned char       RPOR22;
extern volatile far  unsigned char       RPOR23;
extern volatile far  unsigned char       RPOR24;
extern volatile far  unsigned char       RPINR1;
extern volatile far  unsigned char       RPINR2;
extern volatile far  unsigned char       RPINR3;
extern volatile far  unsigned char       RPINR4;
extern volatile far  unsigned char       RPINR6;
extern volatile far  unsigned char       RPINR7;
extern volatile far  unsigned char       RPINR8;
extern volatile far  unsigned char       RPINR12;
extern volatile far  unsigned char       RPINR13;
extern volatile far  unsigned char       RPINR16;
extern volatile far  unsigned char       RPINR17;
extern volatile far  unsigned char       RPINR21;
extern volatile far  unsigned char       RPINR22;
extern volatile far  unsigned char       RPINR23;
extern volatile far  unsigned char       RPINR24;
extern volatile far  unsigned char       PPSCON;
extern volatile far  struct {
  unsigned IOLOCK:1;
} PPSCONbits;
extern volatile far  unsigned char       UEP0;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP0bits;
extern volatile far  unsigned char       UEP1;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP1bits;
extern volatile far  unsigned char       UEP2;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP2bits;
extern volatile far  unsigned char       UEP3;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP3bits;
extern volatile far  unsigned char       UEP4;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP4bits;
extern volatile far  unsigned char       UEP5;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP5bits;
extern volatile far  unsigned char       UEP6;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP6bits;
extern volatile far  unsigned char       UEP7;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP7bits;
extern volatile far  unsigned char       UEP8;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP8bits;
extern volatile far  unsigned char       UEP9;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP9bits;
extern volatile far  unsigned char       UEP10;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP10bits;
extern volatile far  unsigned char       UEP11;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP11bits;
extern volatile far  unsigned char       UEP12;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP12bits;
extern volatile far  unsigned char       UEP13;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP13bits;
extern volatile far  unsigned char       UEP14;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP14bits;
extern volatile far  unsigned char       UEP15;
extern volatile far  struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP15bits;
extern volatile far  unsigned char       UIE;
extern volatile far  struct {
  unsigned URSTIE:1;
  unsigned UERRIE:1;
  unsigned ACTVIE:1;
  unsigned TRNIE:1;
  unsigned IDLEIE:1;
  unsigned STALLIE:1;
  unsigned SOFIE:1;
} UIEbits;
extern volatile far  unsigned char       UEIE;
extern volatile far  struct {
  unsigned PIDEE:1;
  unsigned CRC5EE:1;
  unsigned CRC16EE:1;
  unsigned DFN8EE:1;
  unsigned BTOEE:1;
  unsigned :2;
  unsigned BTSEE:1;
} UEIEbits;
extern volatile far  unsigned char       UADDR;
extern volatile far  union {
  struct {
    unsigned ADDR:7;
  };
  struct {
    unsigned ADDR0:1;
    unsigned ADDR1:1;
    unsigned ADDR2:1;
    unsigned ADDR3:1;
    unsigned ADDR4:1;
    unsigned ADDR5:1;
    unsigned ADDR6:1;
  };
} UADDRbits;
extern volatile far  unsigned char       UCFG;
extern volatile far  struct {
  unsigned PPB0:1;
  unsigned PPB1:1;
  unsigned FSEN:1;
  unsigned UTRDIS:1;
  unsigned UPUEN:1;
  unsigned :1;
  unsigned UOEMON:1;
  unsigned UTEYE:1;
} UCFGbits;
extern volatile far  unsigned char       PADCFG1;
extern volatile far  struct {
  unsigned PMPTTL:1;
  unsigned RTSECSEL0:1;
  unsigned RTSECSEL1:1;
} PADCFG1bits;
extern volatile far  unsigned char       REFOCON;
extern volatile far  union {
  struct {
    unsigned RODIV:4;
    unsigned ROSEL:1;
    unsigned ROSSLP:1;
    unsigned :1;
    unsigned ROON:1;
  };
  struct {
    unsigned RODIV0:1;
    unsigned RODIV1:1;
    unsigned RODIV2:1;
    unsigned RODIV3:1;
  };
} REFOCONbits;
extern volatile far  unsigned char       RTCCAL;
extern volatile far  union {
  struct {
    unsigned CAL:8;
  };
  struct {
    unsigned CAL0:1;
    unsigned CAL1:1;
    unsigned CAL2:1;
    unsigned CAL3:1;
    unsigned CAL4:1;
    unsigned CAL5:1;
    unsigned CAL6:1;
    unsigned CAL7:1;
  };
} RTCCALbits;
extern volatile far  unsigned char       RTCCFG;
extern volatile far  struct {
  unsigned RTCPTR0:1;
  unsigned RTCPTR1:1;
  unsigned RTCOE:1;
  unsigned HALFSEC:1;
  unsigned RTCSYNC:1;
  unsigned RTCWREN:1;
  unsigned :1;
  unsigned RTCEN:1;
} RTCCFGbits;
extern volatile far  unsigned char       ODCON3;
extern volatile far  struct {
  unsigned SPI1OD:1;
  unsigned SPI2OD:1;
} ODCON3bits;
extern volatile far  unsigned char       ODCON2;
extern volatile far  struct {
  unsigned U1OD:1;
  unsigned U2OD:1;
} ODCON2bits;
extern volatile far  unsigned char       ODCON1;
extern volatile far  struct {
  unsigned ECCP1OD:1;
  unsigned ECCP2OD:1;
} ODCON1bits;
extern volatile far  unsigned char       ANCON0;
extern volatile far  struct {
  unsigned PCFG0:1;
  unsigned PCFG1:1;
  unsigned PCFG2:1;
  unsigned PCFG3:1;
  unsigned PCFG4:1;
  unsigned PCFG5:1;
  unsigned PCFG6:1;
  unsigned PCFG7:1;
} ANCON0bits;
extern volatile far  unsigned char       ANCON1;
extern volatile far  struct {
  unsigned PCFG8:1;
  unsigned PCFG9:1;
  unsigned PCFG10:1;
  unsigned PCFG11:1;
  unsigned PCFG12:1;
  unsigned :1;
  unsigned VBG2EN:1;
  unsigned VBGEN:1;
} ANCON1bits;
extern volatile far  unsigned char       DSWAKEL;
extern volatile far  struct {
  unsigned DSPOR:1;
  unsigned :1;
  unsigned DSMCLR:1;
  unsigned DSRTC:1;
  unsigned DSWDT:1;
  unsigned DSULP:1;
  unsigned :1;
  unsigned DSFLT:1;
} DSWAKELbits;
extern volatile far  unsigned char       DSWAKEH;
extern volatile far  struct {
  unsigned DSINT0:1;
} DSWAKEHbits;
extern volatile far  unsigned char       DSCONL;
extern volatile far  struct {
  unsigned RELEASE:1;
  unsigned DSBOR:1;
  unsigned ULPWDIS:1;
} DSCONLbits;
extern volatile far  unsigned char       DSCONH;
extern volatile far  struct {
  unsigned RTCWDIS:1;
  unsigned DSULPEN:1;
  unsigned :5;
  unsigned DSEN:1;
} DSCONHbits;
extern volatile far  unsigned char       DSGPR0;
extern volatile far  unsigned char       DSGPR1;
extern volatile far  unsigned char       TCLKCON;
extern volatile far  struct {
  unsigned T3CCP1:1;
  unsigned T3CCP2:1;
  unsigned :2;
  unsigned T1RUN:1;
} TCLKCONbits;
extern volatile far  unsigned char       CVRCON;
extern volatile far  union {
  struct {
    unsigned CVR:4;
    unsigned CVRSS:1;
    unsigned CVRR:1;
    unsigned CVROE:1;
    unsigned CVREN:1;
  };
  struct {
    unsigned CVR0:1;
    unsigned CVR1:1;
    unsigned CVR2:1;
    unsigned CVR3:1;
  };
} CVRCONbits;
extern volatile far  unsigned char       PMSTATL;
extern volatile far  struct {
  unsigned OB0E:1;
  unsigned OB1E:1;
  unsigned OB2E:1;
  unsigned OB3E:1;
  unsigned :2;
  unsigned OBUF:1;
  unsigned OBE:1;
} PMSTATLbits;
extern volatile far  unsigned char       PMSTATH;
extern volatile far  struct {
  unsigned IB0F:1;
  unsigned IB1F:1;
  unsigned IB2F:1;
  unsigned IB3F:1;
  unsigned :2;
  unsigned IBOV:1;
  unsigned IBF:1;
} PMSTATHbits;
extern volatile far  unsigned char       PMEL;
extern volatile far  union {
  struct {
    unsigned PTENL:8;
  };
  struct {
    unsigned PTEN0:1;
    unsigned PTEN1:1;
    unsigned PTEN2:1;
    unsigned PTEN3:1;
    unsigned PTEN4:1;
    unsigned PTEN5:1;
    unsigned PTEN6:1;
    unsigned PTEN7:1;
  };
} PMELbits;
extern volatile far  unsigned char       PMEH;
extern volatile far  union {
  struct {
    unsigned PTENH:8;
  };
  struct {
    unsigned PTEN8:1;
    unsigned PTEN9:1;
    unsigned PTEN10:1;
    unsigned PTEN11:1;
    unsigned PTEN12:1;
    unsigned PTEN13:1;
    unsigned PTEN14:1;
    unsigned PTEN15:1;
  };
} PMEHbits;
extern volatile far  unsigned char       PMDIN2L;
extern volatile far  unsigned char       PMDIN2H;
extern volatile far  unsigned char       PMDOUT2L;
extern volatile far  unsigned char       PMDOUT2H;
extern volatile far  unsigned char       PMMODEL;
extern volatile far  union {
  struct {
    unsigned WAITE:2;
    unsigned WAITM:4;
    unsigned WAITB:2;
  };
  struct {
    unsigned WAITE0:1;
    unsigned WAITE1:1;
    unsigned WAITM0:1;
    unsigned WAITM1:1;
    unsigned WAITM2:1;
    unsigned WAITM3:1;
    unsigned WAITB0:1;
    unsigned WAITB1:1;
  };
} PMMODELbits;
extern volatile far  unsigned char       PMMODEH;
extern volatile far  struct {
  unsigned MODE0:1;
  unsigned MODE1:1;
  unsigned MODE16:1;
  unsigned INCM0:1;
  unsigned INCM1:1;
  unsigned IRQM0:1;
  unsigned IRQM1:1;
  unsigned BUSY:1;
} PMMODEHbits;
extern volatile far  unsigned char       PMCONL;
extern volatile far  struct {
  unsigned RDSP:1;
  unsigned WRSP:1;
  unsigned BEP:1;
  unsigned CS1P:1;
  unsigned CS2P:1;
  unsigned ALP:1;
  unsigned CSF0:1;
  unsigned CSF1:1;
} PMCONLbits;
extern volatile far  unsigned char       PMCONH;
extern volatile far  struct {
  unsigned PTRDEN:1;
  unsigned PTWREN:1;
  unsigned PTBEEN:1;
  unsigned ADRMUX0:1;
  unsigned ADRMUX1:1;
  unsigned PSIDL:1;
  unsigned :1;
  unsigned PMPEN:1;
} PMCONHbits;
extern volatile near unsigned            UFRM;
extern volatile near unsigned char       UFRML;
extern volatile near union {
  struct {
    unsigned FRM:8;
  };
  struct {
    unsigned FRM0:1;
    unsigned FRM1:1;
    unsigned FRM2:1;
    unsigned FRM3:1;
    unsigned FRM4:1;
    unsigned FRM5:1;
    unsigned FRM6:1;
    unsigned FRM7:1;
  };
} UFRMLbits;
extern volatile near unsigned char       UFRMH;
extern volatile near union {
  struct {
    unsigned FRM:3;
  };
  struct {
    unsigned FRM8:1;
    unsigned FRM9:1;
    unsigned FRM10:1;
  };
} UFRMHbits;
extern volatile near unsigned char       UIR;
extern volatile near struct {
  unsigned URSTIF:1;
  unsigned UERRIF:1;
  unsigned ACTVIF:1;
  unsigned TRNIF:1;
  unsigned IDLEIF:1;
  unsigned STALLIF:1;
  unsigned SOFIF:1;
} UIRbits;
extern volatile near unsigned char       UEIR;
extern volatile near struct {
  unsigned PIDEF:1;
  unsigned CRC5EF:1;
  unsigned CRC16EF:1;
  unsigned DFN8EF:1;
  unsigned BTOEF:1;
  unsigned :2;
  unsigned BTSEF:1;
} UEIRbits;
extern volatile near unsigned char       USTAT;
extern volatile near union {
  struct {
    unsigned :1;
    unsigned PPBI:1;
    unsigned DIR:1;
    unsigned ENDP:4;
  };
  struct {
    unsigned :3;
    unsigned ENDP0:1;
    unsigned ENDP1:1;
    unsigned ENDP2:1;
    unsigned ENDP3:1;
  };
} USTATbits;
extern volatile near unsigned char       UCON;
extern volatile near struct {
  unsigned :1;
  unsigned SUSPND:1;
  unsigned RESUME:1;
  unsigned USBEN:1;
  unsigned PKTDIS:1;
  unsigned SE0:1;
  unsigned PPBRST:1;
} UCONbits;
extern volatile near unsigned char       DMABCH;
extern volatile near struct {
  unsigned DMACNTHB:2;
} DMABCHbits;
extern volatile near unsigned char       DMABCL;
extern volatile near unsigned char       RXADDRH;
extern volatile near struct {
  unsigned DMARCPTRHB:4;
} RXADDRHbits;
extern volatile near unsigned char       RXADDRL;
extern volatile near unsigned char       TXADDRH;
extern volatile near struct {
  unsigned DMATXPTRHB:4;
} TXADDRHbits;
extern volatile near unsigned char       TXADDRL;
extern volatile near unsigned char       PMDIN1L;
extern volatile near unsigned char       PMDIN1H;
extern volatile near unsigned char       PMADDRL;
extern volatile near unsigned char       PMDOUT1L;
extern volatile near unsigned char       PMADDRH;
extern volatile near struct {
  unsigned :6;
  unsigned CS1:1;
} PMADDRHbits;
extern volatile near unsigned char       PMDOUT1H;
extern volatile near unsigned char       CMSTAT;
extern volatile near struct {
  unsigned COUT1:1;
  unsigned COUT2:1;
} CMSTATbits;
extern volatile near unsigned char       CMSTATUS;
extern volatile near struct {
  unsigned COUT1:1;
  unsigned COUT2:1;
} CMSTATUSbits;
extern volatile near unsigned char       SSP2CON2;
extern volatile near union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned ACKSTAT:1;
    unsigned GCEN:1;
  };
  struct {
    unsigned :1;
    unsigned ADMSK1:1;
    unsigned ADMSK2:1;
    unsigned ADMSK3:1;
    unsigned ADMSK4:1;
    unsigned ADMSK5:1;
  };
} SSP2CON2bits;
extern volatile near unsigned char       SSP2CON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
} SSP2CON1bits;
extern volatile near unsigned char       SSP2STAT;
extern volatile near struct {
  unsigned BF:1;
  unsigned UA:1;
  unsigned R_NOT_W:1;
  unsigned S:1;
  unsigned P:1;
  unsigned D_NOT_A:1;
  unsigned CKE:1;
  unsigned SMP:1;
} SSP2STATbits;
extern volatile near unsigned char       SSP2ADD;
extern volatile near union {
  struct {
    unsigned SSPADD:8;
  };
  struct {
    unsigned MSK0:1;
    unsigned MSK1:1;
    unsigned MSK2:1;
    unsigned MSK3:1;
    unsigned MSK4:1;
    unsigned MSK5:1;
    unsigned MSK6:1;
    unsigned MSK7:1;
  };
} SSP2ADDbits;
extern volatile near unsigned char       SSP2BUF;
extern volatile near unsigned char       T4CON;
extern volatile near union {
  struct {
    unsigned T4CKPS:2;
    unsigned TMR4ON:1;
    unsigned T4OUTPS:4;
  };
  struct {
    unsigned T4CKPS0:1;
    unsigned T4CKPS1:1;
    unsigned :1;
    unsigned T4OUTPS0:1;
    unsigned T4OUTPS1:1;
    unsigned T4OUTPS2:1;
    unsigned T4OUTPS3:1;
  };
} T4CONbits;
extern volatile near unsigned char       PR4;
extern volatile near unsigned char       TMR4;
extern volatile near unsigned char       T3CON;
extern volatile near union {
  struct {
    unsigned TMR3ON:1;
    unsigned RD16:1;
    unsigned T3SYNC:1;
    unsigned :1;
    unsigned T3CKPS:2;
    unsigned TMR3CS:2;
  };
  struct {
    unsigned :4;
    unsigned T3CKPS0:1;
    unsigned T3CKPS1:1;
    unsigned TMR3CS0:1;
    unsigned TMR3CS1:1;
  };
} T3CONbits;
extern volatile near unsigned char       TMR3L;
extern volatile near unsigned char       TMR3H;
extern volatile near unsigned char       BAUDCON2;
extern volatile near struct {
  unsigned ABDEN:1;
  unsigned WUE:1;
  unsigned :1;
  unsigned BRG16:1;
  unsigned TXCKP:1;
  unsigned RXDTP:1;
  unsigned RCIDL:1;
  unsigned ABDOVF:1;
} BAUDCON2bits;
extern volatile near unsigned char       SPBRGH2;
extern volatile near unsigned char       BAUDCON;
extern volatile near struct {
  unsigned ABDEN:1;
  unsigned WUE:1;
  unsigned :1;
  unsigned BRG16:1;
  unsigned TXCKP:1;
  unsigned RXDTP:1;
  unsigned RCIDL:1;
  unsigned ABDOVF:1;
} BAUDCONbits;
extern volatile near unsigned char       BAUDCON1;
extern volatile near struct {
  unsigned ABDEN:1;
  unsigned WUE:1;
  unsigned :1;
  unsigned BRG16:1;
  unsigned TXCKP:1;
  unsigned RXDTP:1;
  unsigned RCIDL:1;
  unsigned ABDOVF:1;
} BAUDCON1bits;
extern volatile near unsigned char       BAUDCTL;
extern volatile near struct {
  unsigned ABDEN:1;
  unsigned WUE:1;
  unsigned :1;
  unsigned BRG16:1;
  unsigned TXCKP:1;
  unsigned RXDTP:1;
  unsigned RCIDL:1;
  unsigned ABDOVF:1;
} BAUDCTLbits;
extern volatile near unsigned char       SPBRGH;
extern volatile near unsigned char       SPBRGH1;
extern volatile near unsigned char       PORTA;
extern volatile near union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned :1;
    unsigned RA5:1;
    unsigned RA6:1;
    unsigned RA7:1;
  };
  struct {
    unsigned AN0:1;
    unsigned AN1:1;
    unsigned AN2:1;
    unsigned AN3:1;
    unsigned :1;
    unsigned AN4:1;
    unsigned OSC2:1;
    unsigned OSC1:1;
  };
  struct {
    unsigned C1INA:1;
    unsigned C2INA:1;
    unsigned VREF_MINUS:1;
    unsigned VREF_PLUS:1;
    unsigned :1;
    unsigned NOT_SS1:1;
    unsigned CLKO:1;
    unsigned CLKI:1;
  };
  struct {
    unsigned PMA6:1;
    unsigned PMA7:1;
    unsigned CVREF_MINUS:1;
    unsigned C1INB:1;
    unsigned :1;
    unsigned HLVDIN:1;
  };
  struct {
    unsigned RP0:1;
    unsigned RP1:1;
    unsigned C2INB:1;
    unsigned :2;
    unsigned RCV:1;
  };
  struct {
    unsigned ULPWU:1;
    unsigned :4;
    unsigned RP2:1;
  };
} PORTAbits;
extern volatile near unsigned char       PORTB;
extern volatile near union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
  struct {
    unsigned AN12:1;
    unsigned AN10:1;
    unsigned AN8:1;
    unsigned AN9:1;
    unsigned PMA1:1;
    unsigned PMA0:1;
    unsigned KBI2:1;
    unsigned KBI3:1;
  };
  struct {
    unsigned INT0:1;
    unsigned PMPBE:1;
    unsigned CTEDG1:1;
    unsigned CTEDG2:1;
    unsigned KBI0:1;
    unsigned KBI1:1;
    unsigned PGC:1;
    unsigned PGD:1;
  };
  struct {
    unsigned RP3:1;
    unsigned RTCC:1;
    unsigned PMA3:1;
    unsigned PMA2:1;
    unsigned SCK1:1;
    unsigned SDI1:1;
    unsigned RP9:1;
    unsigned RP10:1;
  };
  struct {
    unsigned :1;
    unsigned RP4:1;
    unsigned VMO:1;
    unsigned VPO:1;
    unsigned SCL1:1;
    unsigned SDA1:1;
  };
  struct {
    unsigned :2;
    unsigned REFO:1;
    unsigned RP6:1;
    unsigned RP7:1;
    unsigned RP8:1;
  };
  struct {
    unsigned :2;
    unsigned RP5:1;
  };
} PORTBbits;
extern volatile near unsigned char       PORTC;
extern volatile near union {
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned :1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
  struct {
    unsigned T1OSO:1;
    unsigned T1OSI:1;
    unsigned AN11:1;
    unsigned :1;
    unsigned D_MINUS:1;
    unsigned D_PLUS:1;
    unsigned PMA5:1;
    unsigned PMA4:1;
  };
  struct {
    unsigned T1CK:1;
    unsigned NOT_UOE:1;
    unsigned CTPLS:1;
    unsigned :1;
    unsigned VM:1;
    unsigned VP:1;
    unsigned TX1:1;
    unsigned RX1:1;
  };
  struct {
    unsigned RP11:1;
    unsigned RP12:1;
    unsigned RP13:1;
    unsigned :3;
    unsigned CK1:1;
    unsigned DT1:1;
  };
  struct {
    unsigned :6;
    unsigned RP17:1;
    unsigned SDO1:1;
  };
  struct {
    unsigned :7;
    unsigned RP18:1;
  };
} PORTCbits;
extern volatile near unsigned char       PORTD;
extern volatile near union {
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
  struct {
    unsigned PMD0:1;
    unsigned PMD1:1;
    unsigned PMD2:1;
    unsigned PMD3:1;
    unsigned PMD4:1;
    unsigned PMD5:1;
    unsigned PMD6:1;
    unsigned PMD7:1;
  };
  struct {
    unsigned SCL2:1;
    unsigned SDA2:1;
    unsigned RP19:1;
    unsigned RP20:1;
    unsigned RP21:1;
    unsigned RP22:1;
    unsigned RP23:1;
    unsigned RP24:1;
  };
} PORTDbits;
extern volatile near unsigned char       PORTE;
extern volatile near union {
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
    unsigned :3;
    unsigned REPU:1;
    unsigned RDPU:1;
  };
  struct {
    unsigned AN5:1;
    unsigned AN6:1;
    unsigned AN7:1;
  };
  struct {
    unsigned PMPRD:1;
    unsigned PMPWR:1;
    unsigned PMPCS:1;
  };
} PORTEbits;
extern volatile near unsigned char       HLVDCON;
extern volatile near union {
  struct {
    unsigned HLVDL:4;
    unsigned HLVDEN:1;
    unsigned IRVST:1;
    unsigned BGVST:1;
    unsigned VDIRMAG:1;
  };
  struct {
    unsigned HLVDL0:1;
    unsigned HLVDL1:1;
    unsigned HLVDL2:1;
    unsigned HLVDL3:1;
  };
} HLVDCONbits;
extern volatile near unsigned char       DMACON2;
extern volatile near union {
  struct {
    unsigned INTLVL:4;
    unsigned DLYCYC:4;
  };
  struct {
    unsigned INTLVL0:1;
    unsigned INTLVL1:1;
    unsigned INTLVL2:1;
    unsigned INTLVL3:1;
    unsigned DLYCYC0:1;
    unsigned DLYCYC1:1;
    unsigned DLYCYC2:1;
    unsigned DLYCYC3:1;
  };
} DMACON2bits;
extern volatile near unsigned char       DMACON1;
extern volatile near struct {
  unsigned DMAEN:1;
  unsigned DLYINTEN:1;
  unsigned DUPLEX0:1;
  unsigned DUPLEX1:1;
  unsigned RXINC:1;
  unsigned TXINC:1;
  unsigned SSCON0:1;
  unsigned SSCON1:1;
} DMACON1bits;
extern volatile near unsigned char       LATA;
extern volatile near struct {
  unsigned LATA0:1;
  unsigned LATA1:1;
  unsigned LATA2:1;
  unsigned LATA3:1;
  unsigned :1;
  unsigned LATA5:1;
  unsigned LATA6:1;
  unsigned LATA7:1;
} LATAbits;
extern volatile near unsigned char       LATB;
extern volatile near struct {
  unsigned LATB0:1;
  unsigned LATB1:1;
  unsigned LATB2:1;
  unsigned LATB3:1;
  unsigned LATB4:1;
  unsigned LATB5:1;
  unsigned LATB6:1;
  unsigned LATB7:1;
} LATBbits;
extern volatile near unsigned char       LATC;
extern volatile near struct {
  unsigned LATC0:1;
  unsigned LATC1:1;
  unsigned LATC2:1;
  unsigned :1;
  unsigned LATC4:1;
  unsigned LATC5:1;
  unsigned LATC6:1;
  unsigned LATC7:1;
} LATCbits;
extern volatile near unsigned char       LATD;
extern volatile near struct {
  unsigned LATD0:1;
  unsigned LATD1:1;
  unsigned LATD2:1;
  unsigned LATD3:1;
  unsigned LATD4:1;
  unsigned LATD5:1;
  unsigned LATD6:1;
  unsigned LATD7:1;
} LATDbits;
extern volatile near unsigned char       LATE;
extern volatile near struct {
  unsigned LATE0:1;
  unsigned LATE1:1;
  unsigned LATE2:1;
} LATEbits;
extern volatile near unsigned char       ALRMVALL;
extern volatile near unsigned char       ALRMVALH;
extern volatile near unsigned char       ALRMRPT;
extern volatile near union {
  struct {
    unsigned ARPT:8;
  };
  struct {
    unsigned ARPT0:1;
    unsigned ARPT1:1;
    unsigned ARPT2:1;
    unsigned ARPT3:1;
    unsigned ARPT4:1;
    unsigned ARPT5:1;
    unsigned ARPT6:1;
    unsigned ARPT7:1;
  };
} ALRMRPTbits;
extern volatile near unsigned char       ALRMCFG;
extern volatile near union {
  struct {
    unsigned ALRMPTR:2;
    unsigned AMASK:4;
    unsigned CHIME:1;
    unsigned ALRMEN:1;
  };
  struct {
    unsigned ALRMPTR0:1;
    unsigned ALRMPTR1:1;
    unsigned AMASK0:1;
    unsigned AMASK1:1;
    unsigned AMASK2:1;
    unsigned AMASK3:1;
  };
} ALRMCFGbits;
extern volatile near unsigned char       TRISA;
extern volatile near struct {
  unsigned TRISA0:1;
  unsigned TRISA1:1;
  unsigned TRISA2:1;
  unsigned TRISA3:1;
  unsigned :1;
  unsigned TRISA5:1;
  unsigned TRISA6:1;
  unsigned TRISA7:1;
} TRISAbits;
extern volatile near unsigned char       TRISB;
extern volatile near struct {
  unsigned TRISB0:1;
  unsigned TRISB1:1;
  unsigned TRISB2:1;
  unsigned TRISB3:1;
  unsigned TRISB4:1;
  unsigned TRISB5:1;
  unsigned TRISB6:1;
  unsigned TRISB7:1;
} TRISBbits;
extern volatile near unsigned char       TRISC;
extern volatile near struct {
  unsigned TRISC0:1;
  unsigned TRISC1:1;
  unsigned TRISC2:1;
  unsigned :1;
  unsigned TRISC4:1;
  unsigned TRISC5:1;
  unsigned TRISC6:1;
  unsigned TRISC7:1;
} TRISCbits;
extern volatile near unsigned char       TRISD;
extern volatile near struct {
  unsigned TRISD0:1;
  unsigned TRISD1:1;
  unsigned TRISD2:1;
  unsigned TRISD3:1;
  unsigned TRISD4:1;
  unsigned TRISD5:1;
  unsigned TRISD6:1;
  unsigned TRISD7:1;
} TRISDbits;
extern volatile near unsigned char       TRISE;
extern volatile near struct {
  unsigned TRISE0:1;
  unsigned TRISE1:1;
  unsigned TRISE2:1;
} TRISEbits;
extern volatile near unsigned char       T3GCON;
extern volatile near union {
  struct {
    unsigned T3GSS0:1;
    unsigned T3GSS1:1;
    unsigned T3GVAL:1;
    unsigned T3GGO_T3DONE:1;
    unsigned T3GSPM:1;
    unsigned T3GTM:1;
    unsigned T3GPOL:1;
    unsigned TMR3GE:1;
  };
  struct {
    unsigned :3;
    unsigned T3GGO:1;
  };
  struct {
    unsigned :3;
    unsigned T3DONE:1;
  };
} T3GCONbits;
extern volatile near unsigned char       RTCVALL;
extern volatile near unsigned char       RTCVALH;
extern volatile near unsigned char       T1GCON;
extern volatile near union {
  struct {
    unsigned T1GSS0:1;
    unsigned T1GSS1:1;
    unsigned T1GVAL:1;
    unsigned T1GGO_T1DONE:1;
    unsigned T1GSPM:1;
    unsigned T1GTM:1;
    unsigned T1GPOL:1;
    unsigned TMR1GE:1;
  };
  struct {
    unsigned :3;
    unsigned T1GGO:1;
  };
  struct {
    unsigned :3;
    unsigned T1DONE:1;
  };
} T1GCONbits;
extern volatile near unsigned char       OSCTUNE;
extern volatile near union {
  struct {
    unsigned TUN:6;
    unsigned PLLEN:1;
    unsigned INTSRC:1;
  };
  struct {
    unsigned TUN0:1;
    unsigned TUN1:1;
    unsigned TUN2:1;
    unsigned TUN3:1;
    unsigned TUN4:1;
    unsigned TUN5:1;
  };
} OSCTUNEbits;
extern volatile near unsigned char       RCSTA2;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned RX9D2:1;
    unsigned OERR2:1;
    unsigned FERR2:1;
    unsigned ADDEN2:1;
    unsigned CREN2:1;
    unsigned SREN2:1;
    unsigned RX92:1;
    unsigned SPEN2:1;
  };
} RCSTA2bits;
extern volatile near unsigned char       PIE1;
extern volatile near union {
  struct {
    unsigned TMR1IE:1;
    unsigned TMR2IE:1;
    unsigned CCP1IE:1;
    unsigned SSP1IE:1;
    unsigned TX1IE:1;
    unsigned RC1IE:1;
    unsigned ADIE:1;
    unsigned PMPIE:1;
  };
  struct {
    unsigned :3;
    unsigned SSPIE:1;
    unsigned TXIE:1;
    unsigned RCIE:1;
  };
} PIE1bits;
extern volatile near unsigned char       PIR1;
extern volatile near union {
  struct {
    unsigned TMR1IF:1;
    unsigned TMR2IF:1;
    unsigned CCP1IF:1;
    unsigned SSP1IF:1;
    unsigned TX1IF:1;
    unsigned RC1IF:1;
    unsigned ADIF:1;
    unsigned PMPIF:1;
  };
  struct {
    unsigned :3;
    unsigned SSPIF:1;
    unsigned TXIF:1;
    unsigned RCIF:1;
  };
} PIR1bits;
extern volatile near unsigned char       IPR1;
extern volatile near union {
  struct {
    unsigned TMR1IP:1;
    unsigned TMR2IP:1;
    unsigned CCP1IP:1;
    unsigned SSP1IP:1;
    unsigned TX1IP:1;
    unsigned RC1IP:1;
    unsigned ADIP:1;
    unsigned PMPIP:1;
  };
  struct {
    unsigned :3;
    unsigned SSPIP:1;
    unsigned TXIP:1;
    unsigned RCIP:1;
  };
} IPR1bits;
extern volatile near unsigned char       PIE2;
extern volatile near union {
  struct {
    unsigned CCP2IE:1;
    unsigned TMR3IE:1;
    unsigned LVDIE:1;
    unsigned BCL1IE:1;
    unsigned USBIE:1;
    unsigned CM1IE:1;
    unsigned CM2IE:1;
    unsigned OSCFIE:1;
  };
  struct {
    unsigned :3;
    unsigned BCLIE:1;
  };
} PIE2bits;
extern volatile near unsigned char       PIR2;
extern volatile near union {
  struct {
    unsigned CCP2IF:1;
    unsigned TMR3IF:1;
    unsigned LVDIF:1;
    unsigned BCL1IF:1;
    unsigned USBIF:1;
    unsigned CM1IF:1;
    unsigned CM2IF:1;
    unsigned OSCFIF:1;
  };
  struct {
    unsigned :3;
    unsigned BCLIF:1;
  };
} PIR2bits;
extern volatile near unsigned char       IPR2;
extern volatile near union {
  struct {
    unsigned CCP2IP:1;
    unsigned TMR3IP:1;
    unsigned LVDIP:1;
    unsigned BCL1IP:1;
    unsigned USBIP:1;
    unsigned CM1IP:1;
    unsigned CM2IP:1;
    unsigned OSCFIP:1;
  };
  struct {
    unsigned :3;
    unsigned BCLIP:1;
  };
} IPR2bits;
extern volatile near unsigned char       PIE3;
extern volatile near struct {
  unsigned RTCCIE:1;
  unsigned TMR3GIE:1;
  unsigned CTMUIE:1;
  unsigned TMR4IE:1;
  unsigned TX2IE:1;
  unsigned RC2IE:1;
  unsigned BCL2IE:1;
  unsigned SSP2IE:1;
} PIE3bits;
extern volatile near unsigned char       PIR3;
extern volatile near struct {
  unsigned RTCCIF:1;
  unsigned TMR3GIF:1;
  unsigned CTMUIF:1;
  unsigned TMR4IF:1;
  unsigned TX2IF:1;
  unsigned RC2IF:1;
  unsigned BCL2IF:1;
  unsigned SSP2IF:1;
} PIR3bits;
extern volatile near unsigned char       IPR3;
extern volatile near struct {
  unsigned RTCCIP:1;
  unsigned TMR3GIP:1;
  unsigned CTMUIP:1;
  unsigned TMR4IP:1;
  unsigned TX2IP:1;
  unsigned RC2IP:1;
  unsigned BCL2IP:1;
  unsigned SSP2IP:1;
} IPR3bits;
extern volatile near unsigned char       EECON1;
extern volatile near struct {
  unsigned :1;
  unsigned WR:1;
  unsigned WREN:1;
  unsigned WRERR:1;
  unsigned FREE:1;
  unsigned WPROG:1;
} EECON1bits;
extern volatile near unsigned char       EECON2;
extern volatile near unsigned char       TXSTA2;
extern volatile near union {
  struct {
    unsigned TX9D:1;
    unsigned TRMT:1;
    unsigned BRGH:1;
    unsigned SENDB:1;
    unsigned SYNC:1;
    unsigned TXEN:1;
    unsigned TX9:1;
    unsigned CSRC:1;
  };
  struct {
    unsigned TX9D2:1;
    unsigned TRMT2:1;
    unsigned BRGH2:1;
    unsigned SENDB2:1;
    unsigned SYNC2:1;
    unsigned TXEN2:1;
    unsigned TX92:1;
    unsigned CSRC2:1;
  };
} TXSTA2bits;
extern volatile near unsigned char       TXREG2;
extern volatile near unsigned char       RCREG2;
extern volatile near unsigned char       SPBRG2;
extern volatile near unsigned char       RCSTA;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned RCD8:1;
    unsigned :2;
    unsigned ADEN:1;
    unsigned :2;
    unsigned RC9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_RC8:1;
  };
  struct {
    unsigned :6;
    unsigned RC8_9:1;
  };
  struct {
    unsigned RX9D1:1;
    unsigned OERR1:1;
    unsigned FERR1:1;
    unsigned ADDEN1:1;
    unsigned CREN1:1;
    unsigned SREN1:1;
    unsigned RX91:1;
    unsigned SPEN1:1;
  };
} RCSTAbits;
extern volatile near unsigned char       RCSTA1;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned RCD8:1;
    unsigned :2;
    unsigned ADEN:1;
    unsigned :2;
    unsigned RC9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_RC8:1;
  };
  struct {
    unsigned :6;
    unsigned RC8_9:1;
  };
  struct {
    unsigned RX9D1:1;
    unsigned OERR1:1;
    unsigned FERR1:1;
    unsigned ADDEN1:1;
    unsigned CREN1:1;
    unsigned SREN1:1;
    unsigned RX91:1;
    unsigned SPEN1:1;
  };
} RCSTA1bits;
extern volatile near unsigned char       TXSTA;
extern volatile near union {
  struct {
    unsigned TX9D:1;
    unsigned TRMT:1;
    unsigned BRGH:1;
    unsigned SENDB:1;
    unsigned SYNC:1;
    unsigned TXEN:1;
    unsigned TX9:1;
    unsigned CSRC:1;
  };
  struct {
    unsigned TXD8:1;
    unsigned :5;
    unsigned TX8_9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_TX8:1;
  };
  struct {
    unsigned TX9D1:1;
    unsigned TRMT1:1;
    unsigned BRGH1:1;
    unsigned SENDB1:1;
    unsigned SYNC1:1;
    unsigned TXEN1:1;
    unsigned TX91:1;
    unsigned CSRC1:1;
  };
} TXSTAbits;
extern volatile near unsigned char       TXSTA1;
extern volatile near union {
  struct {
    unsigned TX9D:1;
    unsigned TRMT:1;
    unsigned BRGH:1;
    unsigned SENDB:1;
    unsigned SYNC:1;
    unsigned TXEN:1;
    unsigned TX9:1;
    unsigned CSRC:1;
  };
  struct {
    unsigned TXD8:1;
    unsigned :5;
    unsigned TX8_9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_TX8:1;
  };
  struct {
    unsigned TX9D1:1;
    unsigned TRMT1:1;
    unsigned BRGH1:1;
    unsigned SENDB1:1;
    unsigned SYNC1:1;
    unsigned TXEN1:1;
    unsigned TX91:1;
    unsigned CSRC1:1;
  };
} TXSTA1bits;
extern volatile near unsigned char       TXREG;
extern volatile near unsigned char       TXREG1;
extern volatile near unsigned char       RCREG;
extern volatile near unsigned char       RCREG1;
extern volatile near unsigned char       SPBRG;
extern volatile near unsigned char       SPBRG1;
extern volatile near unsigned char       CTMUICON;
extern volatile near union {
  struct {
    unsigned IRNG:2;
    unsigned ITRIM:6;
  };
  struct {
    unsigned IRNG0:1;
    unsigned IRNG1:1;
    unsigned ITRIM0:1;
    unsigned ITRIM1:1;
    unsigned ITRIM2:1;
    unsigned ITRIM3:1;
    unsigned ITRIM4:1;
    unsigned ITRIM5:1;
  };
} CTMUICONbits;
extern volatile near unsigned char       CTMUCONL;
extern volatile near struct {
  unsigned EDG1STAT:1;
  unsigned EDG2STAT:1;
  unsigned EDG1SEL0:1;
  unsigned EDG1SEL1:1;
  unsigned EDG1POL:1;
  unsigned EDG2SEL0:1;
  unsigned EDG2SEL1:1;
  unsigned EDG2POL:1;
} CTMUCONLbits;
extern volatile near unsigned char       CTMUCONH;
extern volatile near struct {
  unsigned CTTRIG:1;
  unsigned IDISSEN:1;
  unsigned EDGSEQEN:1;
  unsigned EDGEN:1;
  unsigned TGEN:1;
  unsigned CTMUSIDL:1;
  unsigned :1;
  unsigned CTMUEN:1;
} CTMUCONHbits;
extern volatile near unsigned char       CCP2CON;
extern volatile near union {
  struct {
    unsigned CCP2M:4;
    unsigned DC2B:2;
    unsigned P2M:2;
  };
  struct {
    unsigned CCP2M0:1;
    unsigned CCP2M1:1;
    unsigned CCP2M2:1;
    unsigned CCP2M3:1;
    unsigned DC2B0:1;
    unsigned DC2B1:1;
    unsigned P2M0:1;
    unsigned P2M1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP2Y:1;
    unsigned CCP2X:1;
  };
} CCP2CONbits;
extern volatile near unsigned char       ECCP2CON;
extern volatile near union {
  struct {
    unsigned CCP2M:4;
    unsigned DC2B:2;
    unsigned P2M:2;
  };
  struct {
    unsigned CCP2M0:1;
    unsigned CCP2M1:1;
    unsigned CCP2M2:1;
    unsigned CCP2M3:1;
    unsigned DC2B0:1;
    unsigned DC2B1:1;
    unsigned P2M0:1;
    unsigned P2M1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP2Y:1;
    unsigned CCP2X:1;
  };
} ECCP2CONbits;
extern volatile near unsigned            CCPR2;
extern volatile near unsigned char       CCPR2L;
extern volatile near unsigned char       CCPR2H;
extern volatile near unsigned char       ECCP2DEL;
extern volatile near union {
  struct {
    unsigned P2DC:7;
    unsigned P2RSEN:1;
  };
  struct {
    unsigned P2DC0:1;
    unsigned P2DC1:1;
    unsigned P2DC2:1;
    unsigned P2DC3:1;
    unsigned P2DC4:1;
    unsigned P2DC5:1;
    unsigned P2DC6:1;
  };
} ECCP2DELbits;
extern volatile near unsigned char       PWM2CON;
extern volatile near union {
  struct {
    unsigned P2DC:7;
    unsigned P2RSEN:1;
  };
  struct {
    unsigned P2DC0:1;
    unsigned P2DC1:1;
    unsigned P2DC2:1;
    unsigned P2DC3:1;
    unsigned P2DC4:1;
    unsigned P2DC5:1;
    unsigned P2DC6:1;
  };
} PWM2CONbits;
extern volatile near unsigned char       ECCP2AS;
extern volatile near union {
  struct {
    unsigned PSS2BD:2;
    unsigned PSS2AC:2;
    unsigned ECCP2AS:3;
    unsigned ECCP2ASE:1;
  };
  struct {
    unsigned PSS2BD0:1;
    unsigned PSS2BD1:1;
    unsigned PSS2AC0:1;
    unsigned PSS2AC1:1;
    unsigned ECCP2AS0:1;
    unsigned ECCP2AS1:1;
    unsigned ECCP2AS2:1;
  };
} ECCP2ASbits;
extern volatile near unsigned char       PSTR2CON;
extern volatile near union {
  struct {
    unsigned STRA:1;
    unsigned STRB:1;
    unsigned STRC:1;
    unsigned STRD:1;
    unsigned STRSYNC:1;
    unsigned :1;
    unsigned CMPL0:1;
    unsigned CMPL1:1;
  };
  struct {
    unsigned P2DC0:1;
    unsigned P2DC1:1;
    unsigned P2DC2:1;
    unsigned P2DC3:1;
    unsigned P2DC4:1;
    unsigned P2DC5:1;
    unsigned P2DC6:1;
  };
} PSTR2CONbits;
extern volatile near unsigned char       CCP1CON;
extern volatile near union {
  struct {
    unsigned CCP1M:4;
    unsigned DC1B:2;
    unsigned P1M:2;
  };
  struct {
    unsigned CCP1M0:1;
    unsigned CCP1M1:1;
    unsigned CCP1M2:1;
    unsigned CCP1M3:1;
    unsigned DC1B0:1;
    unsigned DC1B1:1;
    unsigned P1M0:1;
    unsigned P1M1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP1Y:1;
    unsigned CCP1X:1;
  };
} CCP1CONbits;
extern volatile near unsigned char       ECCP1CON;
extern volatile near union {
  struct {
    unsigned CCP1M:4;
    unsigned DC1B:2;
    unsigned P1M:2;
  };
  struct {
    unsigned CCP1M0:1;
    unsigned CCP1M1:1;
    unsigned CCP1M2:1;
    unsigned CCP1M3:1;
    unsigned DC1B0:1;
    unsigned DC1B1:1;
    unsigned P1M0:1;
    unsigned P1M1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP1Y:1;
    unsigned CCP1X:1;
  };
} ECCP1CONbits;
extern volatile near unsigned            CCPR1;
extern volatile near unsigned char       CCPR1L;
extern volatile near unsigned char       CCPR1H;
extern volatile near unsigned char       ECCP1DEL;
extern volatile near union {
  struct {
    unsigned P1DC:7;
    unsigned P1RSEN:1;
  };
  struct {
    unsigned P1DC0:1;
    unsigned P1DC1:1;
    unsigned P1DC2:1;
    unsigned P1DC3:1;
    unsigned P1DC4:1;
    unsigned P1DC5:1;
    unsigned P1DC6:1;
  };
} ECCP1DELbits;
extern volatile near unsigned char       PWM1CON;
extern volatile near union {
  struct {
    unsigned P1DC:7;
    unsigned P1RSEN:1;
  };
  struct {
    unsigned P1DC0:1;
    unsigned P1DC1:1;
    unsigned P1DC2:1;
    unsigned P1DC3:1;
    unsigned P1DC4:1;
    unsigned P1DC5:1;
    unsigned P1DC6:1;
  };
} PWM1CONbits;
extern volatile near unsigned char       ECCP1AS;
extern volatile near union {
  struct {
    unsigned PSS1BD:2;
    unsigned PSS1AC:2;
    unsigned ECCP1AS:3;
    unsigned ECCP1ASE:1;
  };
  struct {
    unsigned PSS1BD0:1;
    unsigned PSS1BD1:1;
    unsigned PSS1AC0:1;
    unsigned PSS1AC1:1;
    unsigned ECCP1AS0:1;
    unsigned ECCP1AS1:1;
    unsigned ECCP1AS2:1;
  };
} ECCP1ASbits;
extern volatile near unsigned char       PSTR1CON;
extern volatile near struct {
  unsigned STRA:1;
  unsigned STRB:1;
  unsigned STRC:1;
  unsigned STRD:1;
  unsigned STRSYNC:1;
  unsigned :1;
  unsigned CMPL0:1;
  unsigned CMPL1:1;
} PSTR1CONbits;
extern volatile near unsigned char       WDTCON;
extern volatile near union {
  struct {
    unsigned SWDTEN:1;
    unsigned ULPSINK:1;
    unsigned ULPEN:1;
    unsigned DS:1;
    unsigned :1;
    unsigned ULPLVL:1;
    unsigned LVDSTAT:1;
    unsigned REGSLP:1;
  };
  struct {
    unsigned SWDTE:1;
  };
} WDTCONbits;
extern volatile near unsigned char       ADCON1;
extern volatile near union {
  struct {
    unsigned ADCS:3;
    unsigned ACQT:3;
    unsigned ADCAL:1;
    unsigned ADFM:1;
  };
  struct {
    unsigned ADCS0:1;
    unsigned ADCS1:1;
    unsigned ADCS2:1;
    unsigned ACQT0:1;
    unsigned ACQT1:1;
    unsigned ACQT2:1;
  };
} ADCON1bits;
extern volatile near unsigned char       ADCON0;
extern volatile near union {
  struct {
    unsigned ADON:1;
    unsigned GO_NOT_DONE:1;
    unsigned CHS:4;
    unsigned VCFG:2;
  };
  struct {
    unsigned :1;
    unsigned GO_DONE:1;
    unsigned CHS0:1;
    unsigned CHS1:1;
    unsigned CHS2:1;
    unsigned CHS3:1;
    unsigned VCFG0:1;
    unsigned VCFG1:1;
  };
  struct {
    unsigned :1;
    unsigned DONE:1;
  };
  struct {
    unsigned :1;
    unsigned GO:1;
  };
  struct {
    unsigned :1;
    unsigned NOT_DONE:1;
  };
} ADCON0bits;
extern volatile near unsigned            ADRES;
extern volatile near unsigned char       ADRESL;
extern volatile near unsigned char       ADRESH;
extern volatile near unsigned char       SSP1CON2;
extern volatile near union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned ACKSTAT:1;
    unsigned GCEN:1;
  };
  struct {
    unsigned :1;
    unsigned ADMSK1:1;
    unsigned ADMSK2:1;
    unsigned ADMSK3:1;
    unsigned ADMSK4:1;
    unsigned ADMSK5:1;
  };
} SSP1CON2bits;
extern volatile near unsigned char       SSPCON2;
extern volatile near union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned ACKSTAT:1;
    unsigned GCEN:1;
  };
  struct {
    unsigned :1;
    unsigned ADMSK1:1;
    unsigned ADMSK2:1;
    unsigned ADMSK3:1;
    unsigned ADMSK4:1;
    unsigned ADMSK5:1;
  };
} SSPCON2bits;
extern volatile near unsigned char       SSP1CON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
  struct {
    unsigned SSPM01:1;
    unsigned SSPM11:1;
    unsigned SSPM21:1;
    unsigned SSPM31:1;
    unsigned CKP1:1;
    unsigned SSPEN1:1;
    unsigned SSPOV1:1;
    unsigned WCOL1:1;
  };
} SSP1CON1bits;
extern volatile near unsigned char       SSPCON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
  struct {
    unsigned SSPM01:1;
    unsigned SSPM11:1;
    unsigned SSPM21:1;
    unsigned SSPM31:1;
    unsigned CKP1:1;
    unsigned SSPEN1:1;
    unsigned SSPOV1:1;
    unsigned WCOL1:1;
  };
} SSPCON1bits;
extern volatile near unsigned char       SSP1STAT;
extern volatile near union {
  struct {
    unsigned BF:1;
    unsigned UA:1;
    unsigned R_NOT_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_NOT_A:1;
    unsigned CKE:1;
    unsigned SMP:1;
  };
  struct {
    unsigned :2;
    unsigned R:1;
    unsigned :2;
    unsigned D:1;
  };
  struct {
    unsigned :2;
    unsigned R_W:1;
    unsigned :2;
    unsigned D_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W:1;
    unsigned :2;
    unsigned NOT_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE:1;
    unsigned :2;
    unsigned NOT_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE:1;
    unsigned :2;
    unsigned DATA_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ:1;
    unsigned I2C_START:1;
    unsigned I2C_STOP:1;
    unsigned I2C_DAT:1;
  };
  struct {
    unsigned BF1:1;
    unsigned UA1:1;
    unsigned R_NOT_W1:1;
    unsigned S1:1;
    unsigned P1:1;
    unsigned D_NOT_A1:1;
    unsigned CKE1:1;
    unsigned SMP1:1;
  };
  struct {
    unsigned :2;
    unsigned R1:1;
    unsigned :2;
    unsigned D1:1;
  };
  struct {
    unsigned :2;
    unsigned D_A1:1;
    unsigned :2;
    unsigned R_W1:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W1:1;
    unsigned :2;
    unsigned NOT_A1:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE1:1;
    unsigned :2;
    unsigned NOT_ADDRESS1:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE1:1;
    unsigned :2;
    unsigned DATA_ADDRESS1:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ1:1;
    unsigned I2C_START1:1;
    unsigned I2C_STOP1:1;
    unsigned I2C_DAT1:1;
  };
} SSP1STATbits;
extern volatile near unsigned char       SSPSTAT;
extern volatile near union {
  struct {
    unsigned BF:1;
    unsigned UA:1;
    unsigned R_NOT_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_NOT_A:1;
    unsigned CKE:1;
    unsigned SMP:1;
  };
  struct {
    unsigned :2;
    unsigned R:1;
    unsigned :2;
    unsigned D:1;
  };
  struct {
    unsigned :2;
    unsigned R_W:1;
    unsigned :2;
    unsigned D_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W:1;
    unsigned :2;
    unsigned NOT_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE:1;
    unsigned :2;
    unsigned NOT_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE:1;
    unsigned :2;
    unsigned DATA_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ:1;
    unsigned I2C_START:1;
    unsigned I2C_STOP:1;
    unsigned I2C_DAT:1;
  };
  struct {
    unsigned BF1:1;
    unsigned UA1:1;
    unsigned R_NOT_W1:1;
    unsigned S1:1;
    unsigned P1:1;
    unsigned D_NOT_A1:1;
    unsigned CKE1:1;
    unsigned SMP1:1;
  };
  struct {
    unsigned :2;
    unsigned R1:1;
    unsigned :2;
    unsigned D1:1;
  };
  struct {
    unsigned :2;
    unsigned D_A1:1;
    unsigned :2;
    unsigned R_W1:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W1:1;
    unsigned :2;
    unsigned NOT_A1:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE1:1;
    unsigned :2;
    unsigned NOT_ADDRESS1:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE1:1;
    unsigned :2;
    unsigned DATA_ADDRESS1:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ1:1;
    unsigned I2C_START1:1;
    unsigned I2C_STOP1:1;
    unsigned I2C_DAT1:1;
  };
} SSPSTATbits;
extern volatile near unsigned char       SSP1ADD;
extern volatile near union {
  struct {
    unsigned SSPADD:8;
  };
  struct {
    unsigned MSK0:1;
    unsigned MSK1:1;
    unsigned MSK2:1;
    unsigned MSK3:1;
    unsigned MSK4:1;
    unsigned MSK5:1;
    unsigned MSK6:1;
    unsigned MSK7:1;
  };
  struct {
    unsigned MSK01:1;
    unsigned MSK11:1;
    unsigned MSK21:1;
    unsigned MSK31:1;
    unsigned MSK41:1;
    unsigned MSK51:1;
    unsigned MSK61:1;
    unsigned MSK71:1;
  };
} SSP1ADDbits;
extern volatile near unsigned char       SSPADD;
extern volatile near union {
  struct {
    unsigned SSPADD:8;
  };
  struct {
    unsigned MSK0:1;
    unsigned MSK1:1;
    unsigned MSK2:1;
    unsigned MSK3:1;
    unsigned MSK4:1;
    unsigned MSK5:1;
    unsigned MSK6:1;
    unsigned MSK7:1;
  };
  struct {
    unsigned MSK01:1;
    unsigned MSK11:1;
    unsigned MSK21:1;
    unsigned MSK31:1;
    unsigned MSK41:1;
    unsigned MSK51:1;
    unsigned MSK61:1;
    unsigned MSK71:1;
  };
} SSPADDbits;
extern volatile near unsigned char       SSP1BUF;
extern volatile near unsigned char       SSPBUF;
extern volatile near unsigned char       T2CON;
extern volatile near union {
  struct {
    unsigned T2CKPS:2;
    unsigned TMR2ON:1;
    unsigned T2OUTPS:4;
  };
  struct {
    unsigned T2CKPS0:1;
    unsigned T2CKPS1:1;
    unsigned :1;
    unsigned T2OUTPS0:1;
    unsigned T2OUTPS1:1;
    unsigned T2OUTPS2:1;
    unsigned T2OUTPS3:1;
  };
} T2CONbits;
extern volatile near unsigned char       PR2;
extern volatile near unsigned char       TMR2;
extern volatile near unsigned char       T1CON;
extern volatile near union {
  struct {
    unsigned TMR1ON:1;
    unsigned RD16:1;
    unsigned T1SYNC:1;
    unsigned T1OSCEN:1;
    unsigned T1CKPS:2;
    unsigned TMR1CS:2;
  };
  struct {
    unsigned :4;
    unsigned T1CKPS0:1;
    unsigned T1CKPS1:1;
    unsigned TMR1CS0:1;
    unsigned TMR1CS1:1;
  };
  struct {
    unsigned :1;
    unsigned RD161:1;
    unsigned T1SYNC1:1;
    unsigned T1OSCEN1:1;
    unsigned T1CKPS01:1;
    unsigned T1CKPS11:1;
    unsigned TMR1CS01:1;
    unsigned TMR1CS11:1;
  };
} T1CONbits;
extern volatile near unsigned char       TMR1L;
extern volatile near unsigned char       TMR1H;
extern volatile near unsigned char       RCON;
extern volatile near union {
  struct {
    unsigned NOT_BOR:1;
    unsigned NOT_POR:1;
    unsigned NOT_PD:1;
    unsigned NOT_TO:1;
    unsigned NOT_RI:1;
    unsigned NOT_CM:1;
    unsigned :1;
    unsigned IPEN:1;
  };
  struct {
    unsigned BOR:1;
    unsigned POR:1;
    unsigned PD:1;
    unsigned TO:1;
    unsigned RI:1;
    unsigned CM:1;
  };
} RCONbits;
extern volatile near unsigned char       CM2CON;
extern volatile near union {
  struct {
    unsigned CCH:2;
    unsigned CREF:1;
    unsigned EVPOL:2;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned CON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :1;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
} CM2CONbits;
extern volatile near unsigned char       CM2CON1;
extern volatile near union {
  struct {
    unsigned CCH:2;
    unsigned CREF:1;
    unsigned EVPOL:2;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned CON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :1;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
} CM2CON1bits;
extern volatile near unsigned char       CM1CON;
extern volatile near union {
  struct {
    unsigned CCH:2;
    unsigned CREF:1;
    unsigned EVPOL:2;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned CON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :1;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned CCH01:1;
    unsigned CCH11:1;
    unsigned CREF1:1;
    unsigned EVPOL01:1;
    unsigned EVPOL11:1;
    unsigned CPOL1:1;
    unsigned COE1:1;
    unsigned CON1:1;
  };
} CM1CONbits;
extern volatile near unsigned char       CM1CON1;
extern volatile near union {
  struct {
    unsigned CCH:2;
    unsigned CREF:1;
    unsigned EVPOL:2;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned CON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :1;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned CCH01:1;
    unsigned CCH11:1;
    unsigned CREF1:1;
    unsigned EVPOL01:1;
    unsigned EVPOL11:1;
    unsigned CPOL1:1;
    unsigned COE1:1;
    unsigned CON1:1;
  };
} CM1CON1bits;
extern volatile near unsigned char       OSCCON;
extern volatile near union {
  struct {
    unsigned SCS:2;
    unsigned :1;
    unsigned OSTS:1;
    unsigned IRCF:3;
    unsigned IDLEN:1;
  };
  struct {
    unsigned SCS0:1;
    unsigned SCS1:1;
    unsigned :2;
    unsigned IRCF0:1;
    unsigned IRCF1:1;
    unsigned IRCF2:1;
  };
} OSCCONbits;
extern volatile near unsigned char       T0CON;
extern volatile near union {
  struct {
    unsigned T0PS:3;
    unsigned PSA:1;
    unsigned T0SE:1;
    unsigned T0CS:1;
    unsigned T08BIT:1;
    unsigned TMR0ON:1;
  };
  struct {
    unsigned T0PS0:1;
    unsigned T0PS1:1;
    unsigned T0PS2:1;
  };
} T0CONbits;
extern volatile near unsigned char       TMR0L;
extern volatile near unsigned char       TMR0H;
extern          near unsigned char       STATUS;
extern          near struct {
  unsigned C:1;
  unsigned DC:1;
  unsigned Z:1;
  unsigned OV:1;
  unsigned N:1;
} STATUSbits;
extern          near unsigned            FSR2;
extern          near unsigned char       FSR2L;
extern          near unsigned char       FSR2H;
extern volatile near unsigned char       PLUSW2;
extern volatile near unsigned char       PREINC2;
extern volatile near unsigned char       POSTDEC2;
extern volatile near unsigned char       POSTINC2;
extern          near unsigned char       INDF2;
extern          near unsigned char       BSR;
extern          near unsigned            FSR1;
extern          near unsigned char       FSR1L;
extern          near unsigned char       FSR1H;
extern volatile near unsigned char       PLUSW1;
extern volatile near unsigned char       PREINC1;
extern volatile near unsigned char       POSTDEC1;
extern volatile near unsigned char       POSTINC1;
extern          near unsigned char       INDF1;
extern          near unsigned char       WREG;
extern          near unsigned            FSR0;
extern          near unsigned char       FSR0L;
extern          near unsigned char       FSR0H;
extern volatile near unsigned char       PLUSW0;
extern volatile near unsigned char       PREINC0;
extern volatile near unsigned char       POSTDEC0;
extern volatile near unsigned char       POSTINC0;
extern          near unsigned char       INDF0;
extern volatile near unsigned char       INTCON3;
extern volatile near union {
  struct {
    unsigned INT1IF:1;
    unsigned INT2IF:1;
    unsigned INT3IF:1;
    unsigned INT1IE:1;
    unsigned INT2IE:1;
    unsigned INT3IE:1;
    unsigned INT1IP:1;
    unsigned INT2IP:1;
  };
  struct {
    unsigned INT1F:1;
    unsigned INT2F:1;
    unsigned INT3F:1;
    unsigned INT1E:1;
    unsigned INT2E:1;
    unsigned INT3E:1;
    unsigned INT1P:1;
    unsigned INT2P:1;
  };
} INTCON3bits;
extern volatile near unsigned char       INTCON2;
extern volatile near union {
  struct {
    unsigned RBIP:1;
    unsigned INT3IP:1;
    unsigned TMR0IP:1;
    unsigned INTEDG3:1;
    unsigned INTEDG2:1;
    unsigned INTEDG1:1;
    unsigned INTEDG0:1;
    unsigned NOT_RBPU:1;
  };
  struct {
    unsigned :1;
    unsigned INT3P:1;
    unsigned T0IP:1;
    unsigned :4;
    unsigned RBPU:1;
  };
} INTCON2bits;
extern volatile near unsigned char       INTCON;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE_GIEL:1;
    unsigned GIE_GIEH:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :6;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCONbits;
extern          near unsigned            PROD;
extern          near unsigned char       PRODL;
extern          near unsigned char       PRODH;
extern volatile near unsigned char       TABLAT;
extern volatile near unsigned short long TBLPTR;
extern volatile near unsigned char       TBLPTRL;
extern volatile near unsigned char       TBLPTRH;
extern volatile near unsigned char       TBLPTRU;
extern volatile near unsigned short long PC;
extern volatile near unsigned char       PCL;
extern volatile near unsigned char       PCLATH;
extern volatile near unsigned char       PCLATU;
extern volatile near unsigned char       STKPTR;
extern volatile near union {
  struct {
    unsigned STKPTR:5;
    unsigned :1;
    unsigned STKUNF:1;
    unsigned STKFUL:1;
  };
  struct {
    unsigned SP0:1;
    unsigned SP1:1;
    unsigned SP2:1;
    unsigned SP3:1;
    unsigned SP4:1;
    unsigned :2;
    unsigned STKOVF:1;
  };
} STKPTRbits;
extern          near unsigned short long TOS;
extern          near unsigned char       TOSL;
extern          near unsigned char       TOSH;
extern          near unsigned char       TOSU;

#pragma varlocate 14 RPOR0
#pragma varlocate 14 RPOR1
#pragma varlocate 14 RPOR2
#pragma varlocate 14 RPOR3
#pragma varlocate 14 RPOR4
#pragma varlocate 14 RPOR5
#pragma varlocate 14 RPOR6
#pragma varlocate 14 RPOR7
#pragma varlocate 14 RPOR8
#pragma varlocate 14 RPOR9
#pragma varlocate 14 RPOR10
#pragma varlocate 14 RPOR11
#pragma varlocate 14 RPOR12
#pragma varlocate 14 RPOR13
#pragma varlocate 14 RPOR17
#pragma varlocate 14 RPOR18
#pragma varlocate 14 RPOR19
#pragma varlocate 14 RPOR20
#pragma varlocate 14 RPOR21
#pragma varlocate 14 RPOR22
#pragma varlocate 14 RPOR23
#pragma varlocate 14 RPOR24
#pragma varlocate 14 RPINR1
#pragma varlocate 14 RPINR2
#pragma varlocate 14 RPINR3
#pragma varlocate 14 RPINR4
#pragma varlocate 14 RPINR6
#pragma varlocate 14 RPINR7
#pragma varlocate 14 RPINR8
#pragma varlocate 14 RPINR12
#pragma varlocate 14 RPINR13
#pragma varlocate 14 RPINR16
#pragma varlocate 14 RPINR17
#pragma varlocate 14 RPINR21
#pragma varlocate 14 RPINR22
#pragma varlocate 14 RPINR23
#pragma varlocate 14 RPINR24
#pragma varlocate 14 PPSCON
#pragma varlocate 14 PPSCONbits
#pragma varlocate 15 UEP0
#pragma varlocate 15 UEP0bits
#pragma varlocate 15 UEP1
#pragma varlocate 15 UEP1bits
#pragma varlocate 15 UEP2
#pragma varlocate 15 UEP2bits
#pragma varlocate 15 UEP3
#pragma varlocate 15 UEP3bits
#pragma varlocate 15 UEP4
#pragma varlocate 15 UEP4bits
#pragma varlocate 15 UEP5
#pragma varlocate 15 UEP5bits
#pragma varlocate 15 UEP6
#pragma varlocate 15 UEP6bits
#pragma varlocate 15 UEP7
#pragma varlocate 15 UEP7bits
#pragma varlocate 15 UEP8
#pragma varlocate 15 UEP8bits
#pragma varlocate 15 UEP9
#pragma varlocate 15 UEP9bits
#pragma varlocate 15 UEP10
#pragma varlocate 15 UEP10bits
#pragma varlocate 15 UEP11
#pragma varlocate 15 UEP11bits
#pragma varlocate 15 UEP12
#pragma varlocate 15 UEP12bits
#pragma varlocate 15 UEP13
#pragma varlocate 15 UEP13bits
#pragma varlocate 15 UEP14
#pragma varlocate 15 UEP14bits
#pragma varlocate 15 UEP15
#pragma varlocate 15 UEP15bits
#pragma varlocate 15 UIE
#pragma varlocate 15 UIEbits
#pragma varlocate 15 UEIE
#pragma varlocate 15 UEIEbits
#pragma varlocate 15 UADDR
#pragma varlocate 15 UADDRbits
#pragma varlocate 15 UCFG
#pragma varlocate 15 UCFGbits
#pragma varlocate 15 PADCFG1
#pragma varlocate 15 PADCFG1bits
#pragma varlocate 15 REFOCON
#pragma varlocate 15 REFOCONbits
#pragma varlocate 15 RTCCAL
#pragma varlocate 15 RTCCALbits
#pragma varlocate 15 RTCCFG
#pragma varlocate 15 RTCCFGbits
#pragma varlocate 15 ODCON3
#pragma varlocate 15 ODCON3bits
#pragma varlocate 15 ODCON2
#pragma varlocate 15 ODCON2bits
#pragma varlocate 15 ODCON1
#pragma varlocate 15 ODCON1bits
#pragma varlocate 15 ANCON0
#pragma varlocate 15 ANCON0bits
#pragma varlocate 15 ANCON1
#pragma varlocate 15 ANCON1bits
#pragma varlocate 15 DSWAKEL
#pragma varlocate 15 DSWAKELbits
#pragma varlocate 15 DSWAKEH
#pragma varlocate 15 DSWAKEHbits
#pragma varlocate 15 DSCONL
#pragma varlocate 15 DSCONLbits
#pragma varlocate 15 DSCONH
#pragma varlocate 15 DSCONHbits
#pragma varlocate 15 DSGPR0
#pragma varlocate 15 DSGPR1
#pragma varlocate 15 TCLKCON
#pragma varlocate 15 TCLKCONbits
#pragma varlocate 15 CVRCON
#pragma varlocate 15 CVRCONbits
#pragma varlocate 15 PMSTATL
#pragma varlocate 15 PMSTATLbits
#pragma varlocate 15 PMSTATH
#pragma varlocate 15 PMSTATHbits
#pragma varlocate 15 PMEL
#pragma varlocate 15 PMELbits
#pragma varlocate 15 PMEH
#pragma varlocate 15 PMEHbits
#pragma varlocate 15 PMDIN2L
#pragma varlocate 15 PMDIN2H
#pragma varlocate 15 PMDOUT2L
#pragma varlocate 15 PMDOUT2H
#pragma varlocate 15 PMMODEL
#pragma varlocate 15 PMMODELbits
#pragma varlocate 15 PMMODEH
#pragma varlocate 15 PMMODEHbits
#pragma varlocate 15 PMCONL
#pragma varlocate 15 PMCONLbits
#pragma varlocate 15 PMCONH
#pragma varlocate 15 PMCONHbits


#line 2714 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
 
#line 2716 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
#line 2717 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"


#line 2720 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
 
#line 2722 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
#line 2723 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
#line 2724 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
#line 2725 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"

#line 2727 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
#line 2728 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
#line 2729 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
#line 2730 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
#line 2731 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"


#line 2735 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
 
#line 2737 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"


#line 2740 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f46j50.h"
#line 251 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"

#line 253 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 255 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 257 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 259 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 261 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 263 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 265 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 267 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 269 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 271 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 273 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 275 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 277 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 279 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 281 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 283 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 285 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 287 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 289 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 291 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 293 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 295 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 297 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 299 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 301 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 303 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 305 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 307 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 309 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 311 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 313 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 315 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 317 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 319 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 321 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 323 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 325 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 327 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 329 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 331 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 333 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 335 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 337 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 343 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 345 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 347 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 349 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 351 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 353 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 355 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 357 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 359 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 361 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 363 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 365 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 367 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 369 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 371 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 373 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 375 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 377 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 379 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 381 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 383 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 385 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 387 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 389 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 391 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 393 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 395 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 397 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 399 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 401 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 403 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 405 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 407 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 409 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 411 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 413 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 415 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 417 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 419 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 421 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 423 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 425 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 427 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 429 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 431 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 433 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 435 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 437 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 439 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 441 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 443 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 445 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 447 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 449 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 453 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 455 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 457 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 459 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 461 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 463 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 465 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 467 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 469 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 471 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 473 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 475 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 477 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 481 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 483 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 485 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 487 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 489 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 491 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 493 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 495 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 497 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 499 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 501 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 503 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 505 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 507 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 509 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 511 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 515 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 517 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 519 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 521 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 525 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 527 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 529 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 531 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 533 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 535 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 537 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 539 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 543 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 545 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 547 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 549 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 551 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 553 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 555 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 557 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 559 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 561 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 563 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 565 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 567 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 569 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 571 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 573 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 575 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 579 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 581 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 583 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 587 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 589 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 591 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 593 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 595 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 597 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"

#line 599 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 62 "../../Microchip/Include/Compiler.h"

#line 64 "../../Microchip/Include/Compiler.h"
#line 65 "../../Microchip/Include/Compiler.h"
#line 68 "../../Microchip/Include/Compiler.h"
#line 71 "../../Microchip/Include/Compiler.h"
#line 74 "../../Microchip/Include/Compiler.h"
#line 77 "../../Microchip/Include/Compiler.h"
#line 78 "../../Microchip/Include/Compiler.h"
#line 80 "../../Microchip/Include/Compiler.h"
#line 83 "../../Microchip/Include/Compiler.h"
#line 85 "../../Microchip/Include/Compiler.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
 


#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"

typedef void* va_list;
#line 8 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 12 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 

#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"

typedef unsigned char wchar_t;


#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 
typedef signed short int ptrdiff_t;
typedef signed short int ptrdiffram_t;
typedef signed short long int ptrdiffrom_t;


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 
typedef unsigned short int size_t;
typedef unsigned short int sizeram_t;
typedef unsigned short long int sizerom_t;


#line 34 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 
#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"


#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"

#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"



#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"
 
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"


typedef unsigned char FILE;

 
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"
#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

extern FILE *stderr;
extern FILE *stdout;


int putc (auto char c, auto FILE *f);
int vsprintf (auto char *buf, auto const far  rom char *fmt, auto va_list ap);
int vprintf (auto const far  rom char *fmt, auto va_list ap);
int sprintf (auto char *buf, auto const far  rom char *fmt, ...);
int printf (auto const far  rom char *fmt, ...);
int fprintf (auto FILE *f, auto const far  rom char *fmt, ...);
int vfprintf (auto FILE *f, auto const far  rom char *fmt, auto va_list ap);
int puts (auto const far  rom char *s);
int fputs (auto const far  rom char *s, auto FILE *f);

#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"
#line 86 "../../Microchip/Include/Compiler.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 

#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"

#line 6 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"

#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
 

#line 16 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
double atof (const auto char *s);

#line 28 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
signed char atob (const auto char *s);


#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
int atoi (const auto char *s);

#line 47 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
long atol (const auto char *s);

#line 58 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
unsigned long atoul (const auto char *s);


#line 71 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
char *btoa (auto signed char value, auto char *s);

#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
char *itoa (auto int value, auto char *s);

#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
char *ltoa (auto long value, auto char *s);

#line 107 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
char *ultoa (auto unsigned long value, auto char *s);
 


#line 112 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
 

#line 116 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
#line 118 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"


#line 124 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
int rand (void);

#line 136 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
void srand (auto unsigned int seed);
 
#line 140 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
#line 149 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"

#line 151 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
#line 87 "../../Microchip/Include/Compiler.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 7 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
#line 22 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"


#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
#line 27 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

 

#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memcpy (auto void *s1, auto const void *s2, auto size_t n);


#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memmove (auto void *s1, auto const void *s2, auto size_t n);


#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strcpy (auto char *s1, auto const char *s2);


#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strncpy (auto char *s1, auto const char *s2, auto size_t n);


#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strcat (auto char *s1, auto const char *s2);


#line 113 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strncat (auto char *s1, auto const char *s2, auto size_t n);


#line 128 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char memcmp (auto const void *s1, auto const void *s2, auto size_t n);


#line 141 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strcmp (auto const char *s1, auto const char *s2);


#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 


#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strncmp (auto const char *s1, auto const char *s2, auto size_t n);


#line 167 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 


#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memchr (auto const void *s, auto unsigned char c, auto size_t n);


#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strchr (auto const char *s, auto unsigned char c);


#line 210 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
size_t strcspn (auto const char *s1, auto const char *s2);


#line 222 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strpbrk (auto const char *s1, auto const char *s2);


#line 238 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strrchr (auto const char *s, auto unsigned char c);


#line 249 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
size_t strspn (auto const char *s1, auto const char *s2);


#line 262 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strstr (auto const char *s1, auto const char *s2);


#line 305 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strtok (auto char *s1, auto const char *s2);


#line 321 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memset (auto void *s, auto unsigned char c, auto size_t n);


#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"


#line 349 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
size_t strlen (auto const char *s);


#line 358 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strupr (auto char *s);


#line 367 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strlwr (auto char *s);



 

#line 379 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memcpypgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 389 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memcpypgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 398 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memcpyram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 407 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memmovepgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 417 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memmovepgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 426 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memmoveram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 434 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strcpypgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 443 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strcpypgm2ram (auto char *s1, auto const far  rom char *s2);


#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strcpyram2pgm (auto far  rom char *s1, auto const char *s2);


#line 460 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strncpypgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 470 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strncpypgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strncpyram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 487 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strcatpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 496 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strcatpgm2ram (auto char *s1, auto const far  rom char *s2);


#line 504 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strcatram2pgm (auto far  rom char *s1, auto const char *s2);


#line 513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strncatpgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strncatpgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 532 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strncatram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char memcmppgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 551 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char memcmppgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 560 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char memcmpram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 568 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strcmppgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strcmppgm2ram (auto const char *s1, auto const far  rom char *s2);


#line 585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strcmpram2pgm (auto const far  rom char *s1, auto const char *s2);


#line 594 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strncmppgm (auto const far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 604 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strncmppgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 613 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strncmpram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 622 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *memchrpgm (auto const far  rom char *s, auto const unsigned char c, auto sizerom_t n);


#line 631 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strchrpgm (auto const far  rom char *s, auto unsigned char c);


#line 639 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strcspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 647 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strcspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 655 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizeram_t strcspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 663 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strpbrkpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 671 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strpbrkpgmram (auto const far  rom char *s1, auto const char *s2);


#line 679 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strpbrkrampgm (auto const char *s1, auto const far  rom char *s2);


#line 688 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
 


#line 696 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 712 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizeram_t strspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 720 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strstrpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 729 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strstrpgmram (auto const far  rom char *s1, auto const char *s2);


#line 737 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strstrrampgm (auto const char *s1, auto const far  rom char *s2);


#line 745 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strtokpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 754 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strtokpgmram (auto char *s1, auto const far  rom char *s2);


#line 762 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strtokrampgm (auto far  rom char *s1, auto const char *s2);


#line 771 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memsetpgm (auto far  rom void *s, auto unsigned char c, auto sizerom_t n);


#line 778 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *struprpgm (auto far  rom char *s);


#line 785 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strlwrpgm (auto far  rom char *s);


#line 792 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strlenpgm (auto const far  rom char *s);

#line 796 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 798 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 805 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
#line 814 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 816 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
#line 88 "../../Microchip/Include/Compiler.h"




#line 93 "../../Microchip/Include/Compiler.h"
#line 96 "../../Microchip/Include/Compiler.h"
#line 99 "../../Microchip/Include/Compiler.h"
#line 100 "../../Microchip/Include/Compiler.h"
#line 101 "../../Microchip/Include/Compiler.h"
#line 102 "../../Microchip/Include/Compiler.h"



#line 106 "../../Microchip/Include/Compiler.h"
#line 116 "../../Microchip/Include/Compiler.h"




#line 121 "../../Microchip/Include/Compiler.h"
#line 122 "../../Microchip/Include/Compiler.h"

#line 124 "../../Microchip/Include/Compiler.h"

	
#line 127 "../../Microchip/Include/Compiler.h"
#line 128 "../../Microchip/Include/Compiler.h"
#line 129 "../../Microchip/Include/Compiler.h"
#line 130 "../../Microchip/Include/Compiler.h"
	
	
#line 133 "../../Microchip/Include/Compiler.h"
#line 139 "../../Microchip/Include/Compiler.h"
    


#line 143 "../../Microchip/Include/Compiler.h"
#line 147 "../../Microchip/Include/Compiler.h"
#line 150 "../../Microchip/Include/Compiler.h"
#line 153 "../../Microchip/Include/Compiler.h"
#line 160 "../../Microchip/Include/Compiler.h"
#line 161 "../../Microchip/Include/Compiler.h"



#line 165 "../../Microchip/Include/Compiler.h"
#line 53 "main.c"

#line 1 "../../Microchip/Include/HardwareProfile.h"

#line 49 "../../Microchip/Include/HardwareProfile.h"
 


#line 53 "../../Microchip/Include/HardwareProfile.h"

#line 1 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"

#line 39 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
 


#line 43 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"

     
     
     
    
    
    
    
    
    
    
    

    
#line 58 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 59 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"

    
#line 62 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 63 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"

     
     
     
     
     
     
     

#line 73 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"

     
    
    
    
    
    
    
#line 82 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 83 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 84 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 85 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"

     
#line 88 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
    
#line 90 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 91 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 92 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 93 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
    
#line 95 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 96 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 97 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 98 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"

#line 100 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 101 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 102 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 103 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
    
#line 105 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 106 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 107 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 108 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
    
#line 110 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 111 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 112 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 113 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
    
     
#line 116 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 117 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 118 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 119 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 120 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"

     

#line 125 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 126 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"

#line 128 "../../Microchip/Include/HardwareProfile - PIC18F Starter Kit.h"
#line 54 "../../Microchip/Include/HardwareProfile.h"


#line 57 "../../Microchip/Include/HardwareProfile.h"
#line 54 "main.c"



#line 1 "../../Microchip/mTouch/mtouch.h"

#line 36 "../../Microchip/mTouch/mtouch.h"
 

#line 39 "../../Microchip/mTouch/mtouch.h"

 
#line 1 "../../Microchip/Include/Compiler.h"

#line 51 "../../Microchip/Include/Compiler.h"
 
#line 57 "../../Microchip/Include/Compiler.h"
#line 59 "../../Microchip/Include/Compiler.h"
#line 62 "../../Microchip/Include/Compiler.h"
#line 64 "../../Microchip/Include/Compiler.h"
#line 65 "../../Microchip/Include/Compiler.h"
#line 68 "../../Microchip/Include/Compiler.h"
#line 71 "../../Microchip/Include/Compiler.h"
#line 74 "../../Microchip/Include/Compiler.h"
#line 77 "../../Microchip/Include/Compiler.h"
#line 78 "../../Microchip/Include/Compiler.h"
#line 80 "../../Microchip/Include/Compiler.h"
#line 83 "../../Microchip/Include/Compiler.h"
#line 85 "../../Microchip/Include/Compiler.h"
#line 93 "../../Microchip/Include/Compiler.h"
#line 96 "../../Microchip/Include/Compiler.h"
#line 99 "../../Microchip/Include/Compiler.h"
#line 102 "../../Microchip/Include/Compiler.h"
#line 106 "../../Microchip/Include/Compiler.h"
#line 116 "../../Microchip/Include/Compiler.h"
#line 121 "../../Microchip/Include/Compiler.h"
#line 127 "../../Microchip/Include/Compiler.h"
#line 130 "../../Microchip/Include/Compiler.h"
#line 133 "../../Microchip/Include/Compiler.h"
#line 139 "../../Microchip/Include/Compiler.h"
#line 143 "../../Microchip/Include/Compiler.h"
#line 147 "../../Microchip/Include/Compiler.h"
#line 150 "../../Microchip/Include/Compiler.h"
#line 153 "../../Microchip/Include/Compiler.h"
#line 160 "../../Microchip/Include/Compiler.h"
#line 161 "../../Microchip/Include/Compiler.h"
#line 165 "../../Microchip/Include/Compiler.h"
#line 41 "../../Microchip/mTouch/mtouch.h"

 

void mTouchInit(void);
void mTouchCalibrate(void);
unsigned int mTouchReadButton(unsigned char buttonID);


#line 50 "../../Microchip/mTouch/mtouch.h"
#line 57 "main.c"


#line 1 "../../Microchip/BMA150 driver/BMA150.h"
#line 2 "../../Microchip/BMA150 driver/BMA150.h"
#line 3 "../../Microchip/BMA150 driver/BMA150.h"
#line 4 "../../Microchip/BMA150 driver/BMA150.h"
#line 5 "../../Microchip/BMA150 driver/BMA150.h"
#line 6 "../../Microchip/BMA150 driver/BMA150.h"
#line 7 "../../Microchip/BMA150 driver/BMA150.h"
#line 8 "../../Microchip/BMA150 driver/BMA150.h"
#line 9 "../../Microchip/BMA150 driver/BMA150.h"
#line 10 "../../Microchip/BMA150 driver/BMA150.h"
#line 11 "../../Microchip/BMA150 driver/BMA150.h"
#line 12 "../../Microchip/BMA150 driver/BMA150.h"
#line 13 "../../Microchip/BMA150 driver/BMA150.h"
#line 14 "../../Microchip/BMA150 driver/BMA150.h"

#line 16 "../../Microchip/BMA150 driver/BMA150.h"

#line 18 "../../Microchip/BMA150 driver/BMA150.h"
#line 19 "../../Microchip/BMA150 driver/BMA150.h"
#line 20 "../../Microchip/BMA150 driver/BMA150.h"
#line 21 "../../Microchip/BMA150 driver/BMA150.h"
#line 22 "../../Microchip/BMA150 driver/BMA150.h"
#line 23 "../../Microchip/BMA150 driver/BMA150.h"
#line 24 "../../Microchip/BMA150 driver/BMA150.h"
#line 25 "../../Microchip/BMA150 driver/BMA150.h"

#line 27 "../../Microchip/BMA150 driver/BMA150.h"
#line 28 "../../Microchip/BMA150 driver/BMA150.h"

#line 30 "../../Microchip/BMA150 driver/BMA150.h"
#line 31 "../../Microchip/BMA150 driver/BMA150.h"
#line 32 "../../Microchip/BMA150 driver/BMA150.h"

#line 34 "../../Microchip/BMA150 driver/BMA150.h"
#line 35 "../../Microchip/BMA150 driver/BMA150.h"
#line 36 "../../Microchip/BMA150 driver/BMA150.h"
#line 37 "../../Microchip/BMA150 driver/BMA150.h"
#line 38 "../../Microchip/BMA150 driver/BMA150.h"
#line 39 "../../Microchip/BMA150 driver/BMA150.h"
#line 40 "../../Microchip/BMA150 driver/BMA150.h"


typedef struct
{
    WORD x;
    WORD y;
    WORD z;
} BMA150_XYZ, *PBMA150_XYZ;

typedef union
{
    
    struct
    {
        BYTE chip_id :3;
        BYTE :5;
    } ;

    
    struct
    {
        BYTE ml_version :4;
        BYTE al_version :4;
    } ;

    
    struct
    {
        BYTE new_data_x :1;
        BYTE :5;
        BYTE acc_x :2;
    } ;

    
    struct
    {
        BYTE acc_x :8;
    } ;

    
    struct
    {
        BYTE new_data_y :1;
        BYTE :5;
        BYTE acc_y :2;
    } ;

    
    struct
    {
        BYTE acc_y :8;
    } ;

    
    struct
    {
        BYTE new_data_z :1;
        BYTE :5;
        BYTE acc_z :2;
    } ;

    
    struct
    {
        BYTE acc_z :8;
    } ;

    
    struct
    {
        BYTE bandwidth :3;  
        BYTE range :2;
		BYTE :3;
    } ;

    BYTE val;
} BMA150_REG;
void BMA150_GetXYZ(PBMA150_XYZ);
void InitBma150 (void);
void BMA150_WriteByte(BYTE address, BYTE data);
BYTE BMA150_ReadByte(BYTE address);

#line 59 "main.c"


#line 1 "./oled.h"

#line 36 "./oled.h"
 

#line 39 "./oled.h"

 
#line 1 "../../Microchip/Include/Compiler.h"

#line 51 "../../Microchip/Include/Compiler.h"
 
#line 57 "../../Microchip/Include/Compiler.h"
#line 59 "../../Microchip/Include/Compiler.h"
#line 62 "../../Microchip/Include/Compiler.h"
#line 64 "../../Microchip/Include/Compiler.h"
#line 65 "../../Microchip/Include/Compiler.h"
#line 68 "../../Microchip/Include/Compiler.h"
#line 71 "../../Microchip/Include/Compiler.h"
#line 74 "../../Microchip/Include/Compiler.h"
#line 77 "../../Microchip/Include/Compiler.h"
#line 78 "../../Microchip/Include/Compiler.h"
#line 80 "../../Microchip/Include/Compiler.h"
#line 83 "../../Microchip/Include/Compiler.h"
#line 85 "../../Microchip/Include/Compiler.h"
#line 93 "../../Microchip/Include/Compiler.h"
#line 96 "../../Microchip/Include/Compiler.h"
#line 99 "../../Microchip/Include/Compiler.h"
#line 102 "../../Microchip/Include/Compiler.h"
#line 106 "../../Microchip/Include/Compiler.h"
#line 116 "../../Microchip/Include/Compiler.h"
#line 121 "../../Microchip/Include/Compiler.h"
#line 127 "../../Microchip/Include/Compiler.h"
#line 130 "../../Microchip/Include/Compiler.h"
#line 133 "../../Microchip/Include/Compiler.h"
#line 139 "../../Microchip/Include/Compiler.h"
#line 143 "../../Microchip/Include/Compiler.h"
#line 147 "../../Microchip/Include/Compiler.h"
#line 150 "../../Microchip/Include/Compiler.h"
#line 153 "../../Microchip/Include/Compiler.h"
#line 160 "../../Microchip/Include/Compiler.h"
#line 161 "../../Microchip/Include/Compiler.h"
#line 165 "../../Microchip/Include/Compiler.h"
#line 41 "./oled.h"

#line 1 "../../Microchip/Include/GenericTypeDefs.h"

#line 43 "../../Microchip/Include/GenericTypeDefs.h"
 

#line 53 "../../Microchip/Include/GenericTypeDefs.h"
#line 282 "../../Microchip/Include/GenericTypeDefs.h"
#line 42 "./oled.h"

 

void WriteCommand(BYTE cmd);
void WriteData(BYTE data);
void FillDisplay(unsigned char data);
void oledPutString(unsigned char *ptr,unsigned char page, unsigned char col);
void oledPutROMString(rom unsigned char *ptr,unsigned char page, unsigned char col);
void oledPutImage(rom unsigned char *ptr, unsigned char sizex, unsigned char sizey, unsigned char startx, unsigned char starty);
void oledWriteChar1x(char letter, unsigned char page, unsigned char column) ;
void oledWriteCharRaw( char letter );
void oledRepeatByte( BYTE b, int repeat, unsigned char page, unsigned char col);
void oledPrintRectangle(unsigned char start_page, unsigned char start_col);
void FillInverseDisplay(unsigned char data, unsigned char page,int pageOffset, unsigned char col, int colOffset);

void printDigit(char letter,unsigned char col);

 
extern rom  BYTE g_pucFont[95][5];
extern rom  BYTE g_pucNum[50][5];
 


#line 66 "./oled.h"


#line 69 "./oled.h"
 
#line 73 "./oled.h"



#line 77 "./oled.h"


#line 80 "./oled.h"


#line 83 "./oled.h"
#line 84 "./oled.h"

#line 87 "./oled.h"
 
#line 89 "./oled.h"
#line 90 "./oled.h"


#line 100 "./oled.h"
 
#line 102 "./oled.h"
#line 103 "./oled.h"


#line 106 "./oled.h"
 

#line 109 "./oled.h"
#line 110 "./oled.h"


#line 113 "./oled.h"
 

#line 116 "./oled.h"




#line 121 "./oled.h"


#line 124 "./oled.h"
#line 125 "./oled.h"


extern BYTE _color;


#line 132 "./oled.h"
 


extern SHORT _clipRgn;


extern SHORT _clipLeft;

extern SHORT _clipTop;

extern SHORT _clipRight;

extern SHORT _clipBottom;


#line 160 "./oled.h"
 







#line 169 "./oled.h"








#line 189 "./oled.h"
 

#line 192 "./oled.h"





#line 209 "./oled.h"
 



#line 226 "./oled.h"
 
#line 228 "./oled.h"


#line 245 "./oled.h"
 

#line 249 "./oled.h"
#line 250 "./oled.h"


#line 264 "./oled.h"
 
void ResetDevice(void);


#line 280 "./oled.h"
 
#line 282 "./oled.h"


#line 296 "./oled.h"
 
#line 298 "./oled.h"


#line 312 "./oled.h"
 
#line 314 "./oled.h"


#line 328 "./oled.h"
 
#line 330 "./oled.h"


#line 344 "./oled.h"
 
#line 346 "./oled.h"


#line 360 "./oled.h"
 
#line 362 "./oled.h"


#line 377 "./oled.h"
 
void PutPixel(SHORT x, SHORT y);


#line 394 "./oled.h"
 
BYTE GetPixel(SHORT x, SHORT y);


#line 413 "./oled.h"
 
#line 415 "./oled.h"


#line 429 "./oled.h"
 
#line 431 "./oled.h"


#line 445 "./oled.h"
 
#line 447 "./oled.h"


#line 461 "./oled.h"
 
#line 463 "./oled.h"


#line 477 "./oled.h"
 
#line 479 "./oled.h"


#line 495 "./oled.h"
 
#line 497 "./oled.h"


#line 512 "./oled.h"
 
#line 514 "./oled.h"


#line 529 "./oled.h"
 
#line 531 "./oled.h"


#line 546 "./oled.h"
 
void DelayMs(WORD time);

#line 550 "./oled.h"
#line 61 "main.c"


#line 1 "../../Microchip/Soft Start/soft_start.h"

#line 50 "../../Microchip/Soft Start/soft_start.h"
 


#line 78 "../../Microchip/Soft Start/soft_start.h"
 
void AppPowerEnable(void);


#line 104 "../../Microchip/Soft Start/soft_start.h"
 
void AppPowerDisable(void);


#line 144 "../../Microchip/Soft Start/soft_start.h"
 
BOOL AppPowerReady(void);
#line 63 "main.c"





#line 69 "main.c"
   
     #pragma config WDTEN = OFF          
   
     #pragma config PLLDIV = 3           
   
     #pragma config STVREN = ON            
   
     #pragma config XINST = OFF          
   
     #pragma config CPUDIV = OSC1        
   
     #pragma config CP0 = OFF            
   
     #pragma config OSC = ECPLL          
   
     #pragma config T1DIG = ON           
   
     #pragma config LPT1OSC = OFF        
   
     #pragma config FCMEN = OFF           
   
     #pragma config IESO = OFF           
   
     #pragma config WDTPS = 128        
   
     #pragma config DSWDTOSC = INTOSCREF 
   
     #pragma config RTCOSC = T1OSCREF    
   
     #pragma config DSBOREN = OFF        
   
     #pragma config DSWDTEN = OFF        
   
     #pragma config DSWDTPS = 8192       
   
     #pragma config IOL1WAY = OFF        
   
     #pragma config MSSP7B_EN = MSK7     
   
     #pragma config WPFP = PAGE_1        
   
     #pragma config WPEND = PAGE_0       
   
     #pragma config WPCFG = OFF          
   
     #pragma config WPDIS = OFF          
  	#pragma interrupt HighPriotiryIsr
#line 117 "main.c"
#line 119 "main.c"




#pragma udata



static void InitializeSystem(void);
static void ProcessIO(void);
static void UserInit(void);
static void YourHighPriorityISRCode();
static void YourLowPriorityISRCode();

BOOL CheckButtonPressed(void);


#line 137 "main.c"
  
  
  
  
  
  
  
  
  
  
  
 

#line 151 "main.c"
#line 152 "main.c"
#line 153 "main.c"
#line 154 "main.c"
#line 155 "main.c"
#line 159 "main.c"
  
#line 161 "main.c"
  extern void _startup (void);        
  #pragma code REMAPPED_RESET_VECTOR = 0xA000 
  void _reset (void)
  {
      _asm goto _startup _endasm
  }
#line 168 "main.c"
  #pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0xA008 
  void Remapped_High_ISR (void)
  {
       _asm goto YourHighPriorityISRCode _endasm
  }
  #pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0xA018 
  void Remapped_Low_ISR (void)
  {
       _asm goto YourLowPriorityISRCode _endasm
  }
  
#line 180 "main.c"
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
#line 201 "main.c"
 
  
  
#line 206 "main.c"
 
#line 208 "main.c"

  #pragma code
  

  
  #pragma interrupt YourHighPriorityISRCode
  void YourHighPriorityISRCode()
  {
    
    
    
    
  
  } 
  #pragma interruptlow YourLowPriorityISRCode
  void YourLowPriorityISRCode()
  {
    
    
    
    
  
  } 
#line 232 "main.c"





#pragma code
#line 239 "main.c"


#line 256 "main.c"
 
void UserInit(void)
{

   
  mTouchInit();

   
  mTouchCalibrate();

   
  InitBma150(); 

   
   ResetDevice();  
   FillDisplay(0x00);

}



#line 295 "main.c"
 
static void InitializeSystem(void)
{
	
	while(!AppPowerReady())
		;

#line 303 "main.c"
  
    ANCON0 = 0xFF;                  
    ANCON1 = 0xFF;                  
#line 307 "main.c"
       
    UserInit();

}



void isr_handleButtonInterrupt(void);
void isr_handleTimer0Interrupt(void);
void displayMode();
void displayMode();
void setDate();
void Alarm();

#line 322 "main.c"
#line 323 "main.c"
#line 324 "main.c"
#line 325 "main.c"

typedef struct
{
     
    BYTE hour;
    BYTE min;
    BYTE sec;
    BYTE hSec;
}TIMER;

 
static TIMER TMR0;

 
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

     
    TMR0.hour = 12;
    TMR0.min = 0;
    TMR0.sec = 0;
    TMR0.hSec = 0;

     
    count = 0xFFFF - (12000000 /4 /256 /100) + 1 ; 
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

void timer_stopTimer0(void)
{
    T0CONbits.TMR0ON = 0;   
    INTCONbits.TMR0IF = 0;  
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


BOOL timer_isTimer0Interrupt(void)
{
    return INTCONbits.TMR0IF;
}




void isr_enableGlobalInterrupts(void)
{
     
    INTCONbits.GIEH = 1;    
    RCONbits.IPEN = 1;      
}

void isr_handleButtonInterrupt(void)
{
     
    if(timer_isTimer0Active())
         
        timer_stopTimer0();
    else
         
        timer_startTimer0();
}

void isr_handleTimer0Interrupt(void)
{
     
    timer_startTimer0();

     
    _asm CLRWDT _endasm

     
    timer_increamentTimer0(1);
}

void HighPriotiryIsr(void)
{
    INTCONbits.GIE = 0; 

     
    if(timer_isTimer0Interrupt())
        isr_handleTimer0Interrupt();    

    INTCONbits.GIE = 1; 
}

#pragma code HIGH_INTERRUPT_VECTOR = 0x08
void High_ISR (void){_asm goto HighPriotiryIsr _endasm}


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

	
	if(!(left > 800))
		return 'L';
	
	
	if(!(right > 800))
		return 'R';

	
	if(scrollU > 965)									
		return 'U';
	if(scrollD > 980)
		return 'D';


}

 
void mainMenu()
{
	char touch = 'f';
	int count = 3; 
	BOOL button;
	oledWriteChar1x(0x3C, count + 0xB0,120);

	while(1)
	{
		timer_showTimer0(0, 80);
		oledPutROMString("CLOCK MENU",0,0) ;
		oledPutROMString("1 - Display Mode  ",3,0) ;
		oledPutROMString("2 - Set Time      ",4,0) ;
		oledPutROMString("3 - Set Date      ",5,0) ;	
		oledPutROMString("4 - Alarm         ",6,0) ;
		
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
			if(count > 6)
				count = 6;
			oledWriteChar1x(0x3C, count + 0xB0,120);
		}

		button = CheckButtonPressed();
       	if(button == TRUE){
			switch(count)
			{
				case 3:
					displayMode();	
					break;
				case 4:
					setTime();	
					break;
				case 5:
					displayMode();	
					break;
				case 6:
					displayMode();	
					break;
				default:
					break;
			}
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

		if(touch == 'L')
			return;
	}
}

setTime()
{
	char touch = 'F';
	int count = 1; 
	int row = 50;
    BOOL button;

	FillDisplay(0x00);
	oledWriteChar1x(0X5F, 5 + 0xB0, row);
	oledWriteChar1x(0X5F, 5 + 0xB0, row+6);

	while(1)
	{
		timer_showTimer0(4, 50);	
		
		touch = touchButtons();
		if(touch == 'L')
		{		
			FillDisplay(0x00);
			count -= 1;
			row -= 16;
			if(count < 1)
			{
				row = 50;
				count = 1;
			}
			oledWriteChar1x(0X5F, 5 + 0xB0, row);
			oledWriteChar1x(0X5F, 5 + 0xB0, row+6);
		}
		if(touch == 'R')
		{
			FillDisplay(0x00);
			count += 1;
			row += 16; 
			if(count > 3)
			{
				row = 85;
				count = 3;
			}
			oledWriteChar1x(0X5F, 5 + 0xB0, row);
			oledWriteChar1x(0X5F, 5 + 0xB0, row+6);
		}

		if(row == 50){
			if(touch == 'U' && TMR0.hour < 22)
				TMR0.hour  += 1;
			if(touch == 'D' && TMR0.hour > 1)
				TMR0.hour  -= 1;
		}

		if(row == 66){
			if(touch == 'U' && TMR0.min < 59)
				TMR0.min   += 1;
			if(touch == 'D' && TMR0.min > 0)
				TMR0.min  -= 1;
		}

		if(row == 82){
			if(touch == 'U')
			{
				TMR0.sec   += 1;
			}
			if(touch == 'D')
			{
				TMR0.sec   -= 1;
			}
		}

		button = CheckButtonPressed();
       	if(button == TRUE)
		{
			return;
		}
	}
}

#line 735 "main.c"
 
void main(void)
{
	int selection;
	BOOL button;

	InitializeSystem();

     
    timer_initTimer0(TRUE); 
    

     
    isr_enableGlobalInterrupts();

     
    timer_startTimer0();

     
    WDTCONbits.SWDTEN = 1;
		

    while(1)                            
    {
         
        if(timer_isTimer0Active()) 
        {	
			timer_showTimer0(5, 50);

			button = CheckButtonPressed();
        	if(button == TRUE){
				mainMenu();
			}
		}   
    }
}




 

