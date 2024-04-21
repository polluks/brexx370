/*REXX*/
/* ---------------------------------------------------------------------
 * Christmas and Chanukkah Greetings           Created 31. December 2019
 *                                                        by Misterspock
 * ---------------------------------------------------------------------
 */
CALL IMPORT FSSAPI
ADDRESS FSS
CALL FSSINIT
li=(fssheight()-24)/2
li=li%1+1
if li<1 then li=1
CALL FSSTEXT " ",li,24,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT "   ",li+1,23,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",li+2,24,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",li+3,24,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",li+4,24,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "   ",li+5,23,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "     ",li+6,22,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "       ",li+7,21,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "             ",li+8,18,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "       ",li+9,21,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "           ",li+10,19,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "               ",li+11,17,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "                   ",li+12,15,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "           ",li+13,19,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "               ",li+14,17,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "                   ",li+15,15,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "                       ",li+16,13,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "               ",li+17,17,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "                   ",li+18,15,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "                       ",li+19,13,,#PROT+#GREEN+#REVERSE
CALL FSSTEXT "   ",li+20,23,,#PROT+#RED+#REVERSE
CALL FSSTEXT "   ",li+21,23,,#PROT+#RED+#REVERSE
CALL FSSTEXT "                         ",li+22,12,,#PROT+#WHITE+#REVERSE
CALL FSSTEXT "HAPPY HOLIDAYS",li+1,34,,#PROT+#USCORE+#HI
CALL FSSTEXT "TO THE",li+3,38,,#PROT+#USCORE+#HI
CALL FSSTEXT "MOSHIX MAINFRAME",li+5,34,,#PROT+#USCORE+#HI
CALL FSSTEXT "GROUP!",li+7,38,,#PROT+#USCORE+#HI
CALL FSSTEXT " ",li+6,58,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",li+7,50,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",LI+7,52,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",LI+7,54,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",LI+7,56,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",LI+7,60,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",LI+7,62,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",LI+7,64,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",LI+7,66,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT " ",LI+7,58,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+8,50,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+8,52,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+8,54,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+8,56,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+8,60,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+8,62,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+8,64,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+8,66,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+8,58,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+9,50,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+9,52,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+9,54,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+9,56,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+9,60,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+9,62,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+9,64,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+9,66,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+9,58,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+10,50,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+10,52,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+10,54,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+10,56,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+10,58,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+10,60,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+10,62,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+10,64,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",LI+10,66,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT "                 ",li+11,50,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",li+12,58,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT " ",li+13,58,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT "         ",li+14,54,,#PROT+#BLUE+#REVERSE
CALL FSSTEXT "                          ",li+15,46,,#PROT+#RED+#REVERSE
CALL FSSTEXT "                          ",li+16,46,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+17,46,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+18,46,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+19,46,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+20,46,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+21,46,,#PROT+#RED+#REVERSE
CALL FSSTEXT "                          ",li+22,46,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+17,70,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+18,70,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+19,70,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+20,70,,#PROT+#RED+#REVERSE
CALL FSSTEXT "  ",LI+21,70,,#PROT+#RED+#REVERSE
CALL FSSTEXT "              ",LI+21,52,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT "            ",LI+20,53,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT "          ",LI+19,54,,#PROT+#YELLOW+#REVERSE
CALL FSSTEXT "  ",LI+18,58,,#PROT+#YELLOW+#REVERSE
   DO FOREVER
   RCKEY=FSSREFRESH()   /* DISPLAY/REFRESH FORMATTED SCREEN */
   IF RCKEY==#PFK03 THEN LEAVE
   END
   CALL FSSCLOSE
return
