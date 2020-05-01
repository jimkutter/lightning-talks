//HERC01FB JOB (FIZZBUZZ),
//             'COBOL FIZZBUZZ',
//             CLASS=A,
//             MSGCLASS=A,
//             MSGLEVEL=(1,1)
//FIZZBUZZ EXEC COBUCLG
//COB.SYSIN DD *
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  'FIZZBUZZ'.

       ENVIRONMENT DIVISION.

       CONFIGURATION SECTION.

       SOURCE-COMPUTER.  IBM-360.
       OBJECT-COMPUTER.  IBM-360.
       
       DATA DIVISION.

       WORKING-STORAGE SECTION.                                        
           77 IDX PIC 999.                                             
           77 DUMMY PIC 999.                                           
           77 REM PIC 999.                                             
           77 DISPLAYED PIC 9.
           77 N PIC 9999 VALUE 100.                                         
       
       PROCEDURE DIVISION.                                             
       
       MAIN.
           PERFORM SHOW VARYING IDX FROM 1 BY 1 UNTIL IDX = N.
           STOP RUN.                                                   
       
       FIZZ-BUZZ.                                                      
           IF DISPLAYED = 0 THEN DISPLAY 'FIZZBUZZ'.      
           MOVE 1 TO DISPLAYED.
       
       FIZZ.                                                           
           IF DISPLAYED = 0 THEN DISPLAY 'FIZZ'.          
           MOVE 1 TO DISPLAYED.                                        
       
       BUZZ.                                                           
           IF DISPLAYED = 0 THEN DISPLAY 'BUZZ'.          
           MOVE 1 TO DISPLAYED.                                        
       
       SHOW-NUM.                                                       
           IF DISPLAYED = 0 THEN DISPLAY IDX.             
           MOVE 1 TO DISPLAYED.                                        
       
       SHOW.                                                           
           MOVE 0 TO DISPLAYED.                                        
           DIVIDE IDX BY 15 GIVING DUMMY REMAINDER REM.                
           IF REM = 0 THEN PERFORM FIZZ-BUZZ.                          
           DIVIDE IDX BY 5 GIVING DUMMY REMAINDER REM.                 
           IF REM = 0 THEN PERFORM BUZZ.                               
                  DIVIDE IDX BY 3 GIVING DUMMY REMAINDER REM.
                  IF REM = 0 THEN PERFORM FIZZ.
                  PERFORM SHOW-NUM.
/*
//LKED.SYSLIB DD DSNAME=SYS1.COBLIB,DISP=SHR
//            DD DSNAME=SYS1.LINKLIB,DISP=SHR
//GO.SYSOUT   DD SYSOUT=*
//