         MACRO
&LABEL   REQU &RF,&RL
.* MACRO TO GENERATE EQUATES FOR REGISTERS: 0(R0) TO 15(R15).
.* IF NO OPERAND IS SPECIFIED 0-15 ASSUMED.
.* TWO OPERANDS MAY BE CODED FOR A SERIES OF REGISTERS.
.* ERROR CHECKING IS FOR LESS THAN 0 OR GREATER THAN 15.
.* IN CASE OF ERROR CONDITION, 0-15 ARE GENERATED WITH MNOTE.
         LCLA  &NUM,&MAX
         AIF   (T'&RF EQ 'O').ALL
         AIF   ('&RF' LT '0' OR '&RL' GT '15').OPERR
         AIF   ('&RL' LT '&RF').OPERR
         AIF   (N'&SYSLIST NE 2).OPERR
&NUM     SETA &RF
&MAX     SETA  &RL
         AGO   .GEN
.OPERR   ANOP
         MNOTE 0,'IMPROPER REGISTER SPECIFICATION. R0-R15 GENERATED.'
.ALL     ANOP
&NUM     SETA  0
&MAX     SETA  15
.GEN     ANOP
*****   EQUATES FOR REGISTERS   *****
.LOOP    ANOP
R&NUM    EQU   &NUM
         AIF   ('&NUM' EQ '&MAX').END
&NUM     SETA  &NUM+1
         AGO   .LOOP
.END     ANOP
         SPACE 2
MASK80   EQU   X'80'
MASK40   EQU   X'40'
MASK20   EQU   X'20'
MASK10   EQU   X'10'
MASK08   EQU   X'08'
MASK04   EQU   X'04'
MASK02   EQU   X'02'
MASK01   EQU   X'01'
         EJECT
         MEXIT
         MEND