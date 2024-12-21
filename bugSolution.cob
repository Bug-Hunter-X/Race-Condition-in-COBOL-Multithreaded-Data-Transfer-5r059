01  WS-AREA-1 PIC X(100). 
01  WS-AREA-2 PIC X(100). 
01  WS-MUTEX  PIC 9(9) VALUE 0. 

PROCEDURE DIVISION.
    IF WS-MUTEX = 0 THEN
       MOVE 1 TO WS-MUTEX 
       MOVE 'Hello' TO WS-AREA-1.
       MOVE WS-AREA-1 TO WS-AREA-2.
       MOVE 0 TO WS-MUTEX 
    END-IF
    DISPLAY WS-AREA-2.
    GOBACK.

This solution introduces a simple mutex (mutual exclusion) mechanism, ensuring that only one thread can access and modify the shared data (WS-AREA-1 and WS-AREA-2) at a time.  Note that the implementation of mutexes might depend on the specific COBOL compiler and its support for multithreading.  More sophisticated synchronization primitives may be needed in real-world scenarios.