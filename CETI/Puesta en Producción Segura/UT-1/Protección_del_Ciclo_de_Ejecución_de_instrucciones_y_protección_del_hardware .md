<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
</details>

---

## Ejercicio 1

Realiza un programa simple parecido al visto en clase e indica que fallos o amenazas podrían causar que no se desarrolle correctamente el programa. 
¿Habría alguna forma de solucionarlo con las instrucciones existentes? 

Para este ejercicio se utilizará el siguiente [recurso](https://peterhigginson.co.uk/lmc/?F5=19-Jun-25_16:11:29). 
A continuación, se muestran las diferentes instrucciones simples que se pueden utilizar en Little Man Computer:  


| Código de operación | Instrucción simbólica | Nombre en español de la operación. | Descripción de la instrucción                                                              |
| ------------------- | --------------------- | ---------------------------------- | ------------------------------------------------------------------------------------------ |
| 1XX                 | ADD XX                | Sumar                              | Suma el valor de la dirección XX al acumulador.                                            |
| 2XX                 | SUB XX                | Restar                             | Resta el valor de la dirección XX al acumulador                                            |
| 3XX                 | STA XX                | Almacenar                          | Almacena el valor del acumulador en la dirección XX                                        |
| 5XX                 | LDA XX                | Cargar                             | Carga el valor de la dirección XX en el acumulador                                         |
| 6XX                 | BRA XX                | Salto incondicional                | Salta a la instrucción en la dirección XX                                                  |
| 7XX                 | BRZ XX                | Salto si cero                      | Salta a la instrucción en la dirección XX si el acumulador contiene 0.                     |
| 8XX                 | BRP XX                | Salto si positivo o cero           | Salta a la instrucción en la dirección XX si el acumulador contiene un número positivo o 0 |
| 901                 | INP                   | Entrada                            | Solicita un valor al usuario y lo almacena en el acumulador                                |
| 902                 | OUT                   | Salida                             | Envía el valor del acumulador al buzón de salida (pantalla)                                |
| 0XX                 | HLT                   | Detener                            | Detiene la ejecución del programa                                                          |
| DAT                 | DAT                   | Declaración de datos               | Utilizada para declarar variables o constantes en la memoria                               |

El programa que yo he creado ha sido el siguiente:

```bash
INP 
STA 33 
LDA 32 
ADD 33 
OUT 
HLT 
```

Este programa lo que hace es pedirle un valor al usuario, para guardarlo en el acumulador. 

Luego, ese valor que se encuentra en el acumulador, lo va a almacenar en la posición de memoria Nº33. 

Luego, cargará en el acumulador, el valor que se encuentra en la posición de memoria Nº32. 

El siguiente paso es sumar el valor que se encuentra en la posición de memoria Nº33 con el valor almacenado en el acumulador. 

Sacará el resultado por el OUTPUT y finalizará el programa.

Es un programa muy sencillo, pero puede haber una serie de fallos / amenazas:


***Externas al programa***
















































































