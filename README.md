# Cobol-Calculo-Fecha

Programa Cobol que a partir de una variable en segundos. Calcula los dias, minutos y segundos correspondientes.

Este programa sirve para calcular ans, ver tiempo transcurrido o cualquier funcionada para determinar un tiempo determinado.

Ejecucion:
    Recibe como parametro los segundos (WS-SEGUNDOS). 
    A partir de este valor calcula cuandos dias, minutos y segundos que son.

Ejemplo:
    Necesito calcular el tiempo transcurrido de una fecha inicio + 9600 segundos. 
    Entonces envio como argumento 9600 y me devolvera que son 0 dias con 2 horas, con 40 minutos y 0 segundos:
    *"DIAS:     0000000000",*
    *"HORAS:    0000000002",* 
    *"MINUTOS:  0000000040",*
    *"SEGUNDOS: 0000"*
    
    Por lo cual a mi fecha inicio le sumare 2 horas mas 40 minutos, y me dara exacto en dias. Ya que aveces estas funciones en DB2 no da un dato correcto.
