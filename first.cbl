       identification division.    *> First
       program-id HelloWorld.
       
       environment division.       *> second
       input-output section.
       file-control.
*          TODO
       i-o-control.
*          TODO

       data division.              *> Third
       working-storage section.
       01 PICV999 PIC 9999V999.
       01 COMP2 COMP-2.
       
       01 COMP1 COMP-1 VALUE 555.11.
       01 COMP2a COMP-2 VALUE 555.11.

       procedure division.         *> Fourth
           DISPLAY "Hello World!".

           MOVE 1.001 to PICV999
           MOVE PICV999 TO COMP2
           DISPLAY "The result of MOVE " PICV999 " TO COMP2 is " COMP2
           MOVE COMP2 to PICV999
           DISPLAY "The result of MOVE COMP2 TO PICV999 is " PICV999
           ADD COMP2 to ZERO GIVING PICV999 ROUNDED
           DISPLAY "The result of ADD COMP2 to ZERO GIVING PICV999 ROUNDED is " PICV999
       
           DISPLAY "COMPARE " COMP1 " with " COMP2a
           IF COMP1 EQUAL COMP2a DISPLAY "Equal" ELSE DISPLAY "Not equal" END-IF
           MOVE COMP1 to COMP2a
           DISPLAY "COMPARE " COMP1 " with " COMP2a
           IF COMP1 EQUAL COMP2a DISPLAY "Equal" ELSE DISPLAY "Not equal" END-IF
           