IDENTIFICATION DIVISION.                                
PROGRAM-ID. PGMCALFCH.                                
DATA DIVISION.                                          
WORKING-STORAGE SECTION.  
    01 WS-VARIABLES.                                
        05 WS-SEGUNDOS            PIC 9(20) VALUE ZEROES. 
        05 WS-RESTO-DD            PIC 9(04) VALUE ZEROES. 
        05 WS-RESTO-HH            PIC 9(04) VALUE ZEROES. 
        05 WS-RESTO-MM            PIC 9(04) VALUE ZEROES. 
        05 WS-RESUL-DD            PIC 9(10) VALUE ZEROES. 
        05 WS-RESUL-HH            PIC 9(10) VALUE ZEROES. 
        05 WS-RESUL-MM            PIC 9(10) VALUE ZEROES. 
    01 CT-CONSTANTES.                               
        05 CT-SEG-DD              PIC 9(05) VALUE 86400.  
        05 CT-SEG-HH              PIC 9(04) VALUE 3600.   
        05 CT-SEG-MM              PIC 9(02) VALUE 60.   
PROCEDURE DIVISION. 
    PERFORM 1-INICIO 
    PERFORM 2-PROCESO
    PERFORM 3-FIN   
    .
1-INICIO.    
    DISPLAY "*** Ingrese los segundos                              ***"
    ACCEPT WS-SEGUNDOS.
    DISPLAY "    Ingreso los siguientes segundos: " WS-SEGUNDOS
    .                          
2-PROCESO.                                                        
    DIVIDE CT-SEG-DD             INTO WS-SEGUNDOS              
          				       GIVING WS-RESUL-DD                    
        			        REMAINDER WS-RESTO-DD                    
    END-DIVIDE                                          
                                                        
    IF WS-RESUL-DD < 1                                      
        DIVIDE CT-SEG-HH         INTO WS-SEGUNDOS              
          				       GIVING WS-RESUL-HH                    
        			        REMAINDER WS-RESTO-HH                    
        END-DIVIDE                                          
    ELSE                                                    
        IF WS-RESTO-DD > ZEROES                             
            DIVIDE CT-SEG-HH     INTO WS-RESTO-DD          
          			    	   GIVING WS-RESUL-HH                
        			        REMAINDER WS-RESTO-HH                
            END-DIVIDE                                      
        END-IF                                              
    END-IF                                                  
                                                        
    IF WS-RESUL-HH < 1 AND WS-RESTO-HH < ZEROES             
        DIVIDE CT-SEG-MM         INTO WS-SEGUNDOS              
          				       GIVING WS-RESUL-MM                    
        			        REMAINDER WS-RESTO-MM                    
        END-DIVIDE                                          
    ELSE                                                    
        IF WS-RESTO-HH > ZEROES                             
            DIVIDE CT-SEG-MM     INTO WS-RESTO-HH          
          			    	   GIVING WS-RESUL-MM                
        			        REMAINDER WS-RESTO-MM                
            END-DIVIDE                                      
        END-IF                                              
    END-IF
    .
3-FIN.                                                        
    DISPLAY " DIAS:     " WS-RESUL-DD.                          
    DISPLAY " HORAS:    " WS-RESUL-HH.                         
    DISPLAY " MINUTOS:  " WS-RESUL-MM.                       
    DISPLAY " SEGUNDOS: " WS-RESTO-MM.                      
    STOP RUN
    .
