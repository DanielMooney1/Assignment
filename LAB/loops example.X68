   ORG    $1000

START:               
    LEA MESSAG 
    MOVE.B #10,D0
    MOVE.W #200,$2000
    
NEXT:
    SUB #1,D0
    MOVE.B D0,D2
    BSR LOOP
    MOVE.B D2,D0
    BNE NEXT 

    BRA END
LOOP:    
    LEA MESSAGE, A1
    MOVE.B #14,D0
    TRAP #15
    RTS
    MOVE.B #100,D1
    MOVE.B #23,D0
    TRAP  #15
    
END:
    LEA MESSAGE, A1
    MOVE.B #14,D0
    TRAP #15

    SIMHALT             

MESSAGE DC.B 'hit -2 ' ,0

    END    START        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
