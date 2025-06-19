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


**Externas al programa**

- Que alguien manipule el contador de programa o el acumulador
- Que interferencias electromagnéticas afecten al funcionamiento del programa.
- Que se cambie el valor de las posiciones de memoria mientras se ejecuta el programa. 

**Del programa**

- Que al pedir un numero al usuario, este ponga un nº que no está permitido (+999).
- Que al pedir un numero al usuario para realizar la operación, este ponga un nº que haga que el resultado sea un nº negativo, haciendo que el resto de las operaciones carezcan de sentido / no se ejecuten bien. 

**Soluciones**

- Se podría implementar lógica para manejar resultados negativos, usando instrucciones de bifurcación para verificar si el resultado es negativo y manejarlo adecuadamente. 

```bash
INP 
STA 33 
LDA 32 
ADD 33 
BRP POSITIVE  ; Si el resultado es positivo, continúa 
BRA NEGATIVE  ; Si el resultado es negativo, maneja el error 
POSITIVE OUT 
HLT 
NEGATIVE HLT  ; Manejar el error de resultado negativo 
#Otra solución sería la de poner una validación de entrada, haciendo que los valores ingresados estén dentro de un rango permitido. 
#Se podría hacer comprobando el valor de la celda de memoria nº32 y hacer que no se puedan ingresar #números que, al sumarlos con el valor de la celda nº32 superen el valor 999. 
LDA 32 ; Cargar el valor de la celda 32 
INP ; Leer el número ingresado por el usuario 
ADD 32 ; Sumar el valor ingresado al valor de la celda 32 
BRP VALID ; Si el resultado es positivo, continúa 
BRA INVALID ; Si el resultado es negativo, maneja el error 
VALID   STA 33 ; Almacenar el número ingresado en la dirección 33 
LDA 32 ; Cargar el valor de la celda 32 nuevamente 
ADD 33 ; Sumar el valor de la celda 33 
OUT ; Mostrar el resultado 
HLT ; Detener el programa 
INVALID HLT ; Manejar el error de entrada no válida
```









































































