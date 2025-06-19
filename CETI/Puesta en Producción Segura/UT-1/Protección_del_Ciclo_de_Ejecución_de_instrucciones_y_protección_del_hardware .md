<details>
  <summary><h2>Índice</h2></summary>
  
 - [Ejercicio 1](#ejercicio-1)
 - [Ejercicio 2](#ejercicio-2)
 - [Ejercicio 3](#ejercicio-3)
</details>

---

## Ejercicio 1

*Realiza un programa simple parecido al visto en clase e indica que fallos o amenazas podrían causar que no se desarrolle correctamente el programa. 
¿Habría alguna forma de solucionarlo con las instrucciones existentes?*

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
BRP POSITIVE  # Si el resultado es positivo, continúa 
BRA NEGATIVE  # Si el resultado es negativo, maneja el error 
POSITIVE OUT 
HLT 
NEGATIVE HLT  # Manejar el error de resultado negativo 
#Otra solución sería la de poner una validación de entrada, haciendo que los valores ingresados estén dentro de un rango permitido. 
#Se podría hacer comprobando el valor de la celda de memoria nº32 y hacer que no se puedan ingresar #números que, al sumarlos con el valor de la celda nº32 superen el valor 999. 
LDA 32 # Cargar el valor de la celda 32 
INP # Leer el número ingresado por el usuario 
ADD 32 # Sumar el valor ingresado al valor de la celda 32 
BRP VALID # Si el resultado es positivo, continúa 
BRA INVALID # Si el resultado es negativo, maneja el error 
VALID   STA 33 # Almacenar el número ingresado en la dirección 33 
LDA 32 # Cargar el valor de la celda 32 nuevamente 
ADD 33 # Sumar el valor de la celda 33 
OUT # Mostrar el resultado 
HLT # Detener el programa 
INVALID HLT # Manejar el error de entrada no válida
```

---

### Ejercicio 2

*Investiga sobre las amenazas relacionadas con el hardware de los equipos informáticos.*


**Fuente de alimentación**

- Que al tener una subida/bajada de tensión, la fuente de alimentación al no ser de calidad fallé, provocando un cortocircuito de la placa base.

- No tenemos cuidado al tomar nuestro café mañanero y se nos cae, cayendo el líquido sobre el cable de alimentación, provocando un cortocircuito.

**RAM**

- Puede ocurrir el **Rowhammer** el cual pasa cuando las celdas de memoria se activan espontáneamente, debido a impulsos eléctricos de celdas adyacentes, llevando a una corrupción de los datos.

**Refrigeración**

- Falta de limpieza en los equipos / no tener un sistema de refrigeración óptimo provocando un sobrecalentamiento del equipo, reduciendo su rendimiento o que algunas piezas fallen. 

**Acceso al equipo no autorizado**

- Si un atacante accede a nuestro equipo, puede insertar un USB Killer y acabar con la vida de nuestro ordenador.
- También podría abrir el ordenador, robar los discos duros y de paso romper algunos componentes, dejando inservible e irrecuperable el equipo. 

---

### Ejercicio 3

*¿Qué es BitLocker? Explica la vulnerabilidad CVE-2024-20666 de forma detallada.*


Bitlocker es una herramienta de cifrado de discos, la cual fue desarrollada por Microsoft. 

Esta herramienta protege todo el contenido del disco, previniendo el acceso no autorizado a los datos. 

En caso de problemas, proporciona opciones para recuperar el acceso a los datos. 

Las claves de cifrado se guardan en el TPM. 

**¿Y qué es el TPM?**

Este es un chip de seguridad, el cual se encuentra en la mayoría de los ordenadores modernos. 

Este chip se encarga de crear, guardar y gestionar las claves criptográficas, verificando la integridad del sistema, asegurándose de que el software no ha sido alterado. 

Pero, el 9/1/2024 este sistema fue vulnerado 

**Vulnerabilidad CVE-2024-20666**

Esta vulnerabilidad permite a un atacante omitir ciertas características de seguridad de BitLocker, lo que podría darles acceso no autorizado a los datos cifrado. 

Esta vulnerabilidad se explota manipulando la forma en la que Bitlocker analiza y valida los datos de entrada.

Al crear una cadena de entrada específica, se desencadenan una serie de eventos, que llevan a la omisión de las características de seguridad. 


Microsoft nos ofrece en la siguiente [página](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-20666) diferentes métricas para medir el impacto de esta vulnerabilidad. 

Algunas de esas métricas son: 

**Vector de ataque**

- Es el contexto en el que es posible la explotación de la vulnerabilidad
- **Físico**, puesto que el atacante debe manipular físicamente el componente.

**Complejidad del ataque**

- Son las condiciones (más allá del control del atacante) que deben existir para explotar la vulnerabilidad
- **Baja**, puesto que no existen condiciones / circunstancias especiales para realizar el ataque.

**Interacción del usuario **

- Quiere decir que si es necesaria la participación de otro usuario para llevar a cabo el ataque.
- **Ninguna**, puesto que el sistema puede ser vulnerado sin la intervención del usuario.

**Integridad**

- Mide el impacto en la integridad (confiabilidad y veracidad de la información) cuando la vulnerabilidad es explotada con éxito
- **Alta**, debido a que el atacante puede modificar todos los archivos que estén cifrados.

Estos serían las métricas base, ahora vamos con las métricas temporales.

**Nivel de remediación**

- Este es un factor importante a la hora de la priorización de la vulnerabilidad. A medida que se van publicando soluciones temporales / parches, este nivel va bajando, hasta que se pública una solución definitiva.
- **Solución oficial** puesto que Microsoft ya ha desarrollado una actualización la cual corrige este error.

**Informe de confianza**

- Mide el grado de confianza en la existencia de la vulnerabilidad y la credibilidad de los detalles técnicos conocidos.
- Confirmada, puesto que existen detalles detallados, además de una reproducción funcional del ataque. 




























































