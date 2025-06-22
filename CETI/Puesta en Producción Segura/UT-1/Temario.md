## UNIDAD DE CONTROL

Cerebro del procesador, encargado de dirigir y coordinar la ejecución de todas las operaciones que se hacen en el PC.

¿Cómo lo hace?
- Genera señales de control
- Interpreta las instrucciones almacenadas en memoria
- Supervisa el flujo de datos

## ALU - Unidad Aritmeticológica

Componente que lleva a cabo las operaciones matemáticas y lógicas

- **Operaciones aritméticas**
	- + - * / <>
	  
- **Operaciones lógicas**
	- OR XOR AND NOT
	  
- **Operaciones de desplazamiento**
	- Manipulan bits para ajustar valores.

## CAPTACIÓN

### Ciclo de captación

La unidad de control lee de la memoria la siguiente instrucción a ejecutar.
El contador de programa se incrementa automáticamente para apuntar a la dirección de memoria.

La instrucción leída en memoria se almacena temporalmente en otro registro (Registro de Instrucción).

### Ciclo de ejecución

La Unidad de Control interpreta el contenido del Registro de Instrucción, es decir, se decodifica.

Este proceso implica
- Identificar el tipo de instrucción
	- Transferencia
	- Procesado
	- Control
	  
- Determinar los operandos necesarios 
- Planificar las señales de control que se debe generar para activar los componentes adecuados.

Durante estos 2 ciclos el contados de programa y el registro de instrucción contienen datos clave.
Si estos datos son alterados por alguien, podrían redirigir la ejecución q código malicioso.

Para evitarlo, se implementan técnicas como la ASRL.

## LENGUAJES DE  PROGRAMACIÓN

Los traductores son programas que "traducen" el lenguaje de alto y bajo nivel

### INTÉRPRETES

Traducen el código fuente línea a línea
Coge la primera línea, la traduce y ejecuta
Lee la siguiente, la traduce y la ejecuta. Así en bucle.

Tanto el código a ejecutar como el intérprete han de estar cargados en memoria.
Si se detecta un error durante la traducción, se detiene la ejecución.

**Características**
- Interactividad
- Portabilidad
- Experiencia del desarrollador
- Vulnerables a inyecciones de código

Ejemplos
- PHP
- Python
- Perl
- Ruby

### COMPILADORES

Traduce un programa entero de un lenguaje de programación a un lenguaje objeto.

Solo está instalado en la máquina de desarrollo.

El código generado solo funcionará en un software y hardware determinados y si se quiere ejecutar en otro equipo, se deberá compilar de nuevo.
Los programas que se generan están optimizados y son seguros para una arquitectura en específico.

Fases de compilación
- Análisis léxico
	- Convierte el código fuente en una secuencia de tokens (palabras, claves, operadores etc)
	- Detecta errores básicos 
	  
- Análisis sintáctico
	- Verifica la estructura del programa según las reglas del lenguaje y construye un árbol de sintaxis.
	  
- Análisis semántico
	- Comprueba que las operaciones tienen sentido
	  
- Generación de código intermedio
	- Convierte el AST en un código intermedio.
	  
- Optimización del código
	- Se reduce
		- El tiempo de ejecución
		- Uso de memoria del programa
		  
- Generación de código máquina
	- Traduce el código intermedio a instrucciones de hardware
	  
- Ensamblado y enlace
	- Integra el código máquina con librerías externas y prepara el programa para su ejecución.

### Ejemplos
- C/C++
- Pascal

#### Ventajas de compilar
- Se compila 1 sola vez y se ejecuta muchas veces
- La ejecución es más rápida
- Tenemos una visión más amplia del programa

#### Ventajas interpretar vs compilar
- Menor uso de memoria
- Mayor interactividad con el código a l ahora de desarrollar

### Compilación en tiempos de ejecución
Para remediar los fallos de cada solución, se usa el JIT.


## ENTORNOS DE DESARROLLO

Los entornos de desarrollo proporcionan funcionalidades que facilitan la escritura, prueba y depuración del código
Algunas de esas funcionalidades son:
- Resaltado de sintaxis
- Autocompletado
- Detección de errores
- Depuración

### Entornos de desarrollo en la nube

- **Ventajas**
	- Capacidad de trabajo colaborativo
	- Uso de repositorios comunes
	- Posibilidad de acceder desde cualquier dispositivo
- **Desventajas**
	- Falta de potencia
	- Seguridad

- **Ejemplos**
	- GitHub Codespaces
	- Replit

### Entornos de desarrollo en local

- **Ventajas**
	- Mayor control
	- Mayor potencia
- **Desventajas**
	- El codigo fuente puede ser comprometido por malware
	
- **Ejemplos**
	- Visual Studio
	- Eclipse


## ELEMENTOS PRINCIPALES DE UN PROGRAMA

- **Bloque de declaraciones**
	- Incluye la declaración y la instanciación de todos los objetos y elementos a procesar como constantes o variables.
	  
- **Bloque de instrucciones**
	- Entrada
		- Obtener la información
	- Proceso
		- Instrucciones cuya finalidad es alcanzar el objetivo del programa
	- Salida
		- Ya realizados los cálculos, el bloque se encarga de almacenar o mostrar los datos en algún dispositivo de salida.
		  
- **Espacio de nombre o paquete**
	- Indica el ámbito / alcance del código de forma que se puedan encapsular para su posterior uso.
- **Bloque de uso de elementos externos**
	- Indica las clases / funciones externas que se van a usar en programa.
	- También se llaman **librerías**
	- Al incluir librerías en nuestro código es importante usar solo las necesarias, además de verificar su integridad.
	  
- **Bloque de definición del fichero**
	- Comentarios donde se incluye el creador del fichero, función del código etc


## PRUEBAS

#### ¿Para que sirven las pruebas?

- Aliviar a los equipos de desarrollo
- Aumentar la satisfacción de los empleados, debido a que estas pruebas las realiza personal especializado
- Garantía externa de calidad 
### Verificación vs Validación

#### Verificación

Conjunto de actividades que aseguran que el software implemente de forma correcta una función en específico.
Básicamente se refiere al proceso de determinar si un flujo de trabajo se ha realizado de forma correcta, permitiendo comprobar que la aplicación satisface los requerimientos funcionales y no funcionales que fueron establecidos en su diseño.


#### Validación

Es un proceso más general.
En la validación se debe asegurar que el software satisface las expectativas del cliente.
Este proceso se lleva a cabo justo antes de entregar el producto al cliente.

### Etapas / niveles de pruebas

**Modelo V**

Este modelo plantea que en todo el proceso se deben llevar a cabo la verificación y la validación de la siguiente forma:



En cada nivel de desarrollo de comprueba si los requisitos y definiciones de niveles previos se han implementado de forma correcta.

Tan pronto empieza el desarrollo del software, se pueden empezar a crear las correspondientes pruebas.


#### Pruebas unitarias

Permiten comprobar componentes individuales para asegurar que funcionan correctamente.

Estas no deben tener dependencias respecto del entorno donde se ejecutan o a si mismas.
Desde el punto de vista de la ciberseguridad, por un lado se debe validar que los métodos individuales implementen controles (**autenticación, autorización, sanitización de datos**) e incluir pruebas específicas (inyección SQL).

El propósito de estas pruebas es lograr un **código limpio**, **que funcione** y **sea seguro**.

**Test Driven Development** 
Consiste en codificar pruebas y desarrollar y refactorizar de forma continua el codigo

#### Pruebas de integración

Prueban que los elementos que componen el software funcionan juntos de forma correcta

**Tipos**
- Pruebas no incrementales
	- Se prueban todos los componentes juntos, sin saber que origino los fallos y porque
	- Desventajas
		- Complicado aislar errores encontrados
		- Hay una gran probabilidad de que se pierdan algunos defectos
		- Es difícil cubrir todos los casos.
		  
- Pruebas incrementales 
	- Integración descendente
		- La prueba comienza por el componente de más alto nivel, el cual convoca el resto de componentes.
		- La integración avanza, descendiendo a través de la jerarquía de control.


#### Pruebas de sistema

Su objetivo es comprobar el funcionamiento global del sistema, verificando el funcionamiento correcto de las interfaces entre los subsistemas que lo componen y con el resto de sistemas con los que se comunica.

Se deben ejecutar análisis de vulnerabilidades y pruebas de pentesting.


#### Pruebas de aceptación

Se realizan en la etapa final del desarrollo del producto.
El cliente proporciona datos con los que probar el sistema para determinar que el software cumple con los requisitos y especificaciones solicitados.

Pruebas Alfa
- Se llevan a cabo por un cliente en el lugar de desarrollo
Pruebas beta
- Se llevan a cabo por los usuarios finales en el lugar de trabajo 

### Tipos de Pruebas

- Funcionales
	- Asegurar que nuestro programa realiza correctamente todas las funciones que se han detallado en sus especificaciones durante la fase de análisis de requisitos del software
	
- No funcionales
	- Son pruebas encaminadas a controlar la calidad de los sistemas implementados, se realizan en aplicaciones de software para asegurarse de que todo funciona bien y poder saber en qué circunstancias podrían fallar


#### Pruebas funcionales

Sirven para asegurar que el sistema de información realiza correctamente todas las funciones que se han detallado en sus especificaciones durante la dase de análisis de requisitos del software

**Pruebas exploratorias**
Consisten en ejecutar las pruebas a medidas que se piensa en ellas

**Pruebas de regresión**
Se aseguran de que los cambios realizados en el programa, no afectan a otros componentes del mismo

**Pruebas de compatibilidad de entorno**
Se ejecuta el mismo producto en diferentes entornos ara comprobar que funcionen y se comporten de la misma forma

**Pruebas libres**
Se ejecutan sin un plan, y sirven para probar las partes menos "maduras" de un programa

**Pruebas de humo**
Pruebas rápidas, que se ejecutan sobre las 1º versiones del programa para verificarlo de forma general y comprobar que no hay defectos en su funcionamiento básico.

**Pruebas de mono**
Pruebas que se hacen sin atender al funcionamiento técnico del producto.
Su objetivo final es comprobar que el programa funciona de forma correcta ante peticiones "locas"

**Pruebas de sanidad**
Se ejecutan para comprobar que todo funciona correctamente después de alguna intervención o modificación

---
##### Pruebas funcionales de seguridad

**Pruebas de penetración**
Simulan ataques reales para identificar vulnerabilidades explotables en los sistemas y redes

**Pruebas de autenticación y acceso**
Aseguran que solo usuarios autorizados puedan acceder al sistema

**Pruebas de gestión de datos sensibles**
Verifican que los datos sensibles estén debidamente protegidos, cifrados y no sean accesibles por usuarios no autorizados

**Pruebas de compatibilidad de seguridad**
Garantizan que las medidas de seguridad funcionan de manera consistente en diferentes entornos


#### Pruebas no funcionales

Estas pruebas se centran en aspectos muy importantes del comportamiento del producto.

**Pruebas de rendimiento**
Someten a un sistema a una carga de trabajo particular, para medir su velocidad, fiabilidad y estabilidad.

- Pruebas de carga
- Pruebas de estrés
- Pruebas de estabilidad

**Pruebas estructurales**
Se realizan para ejecutar la estructura interna del producto intentando ejecutar todos los caminos posibles del código.

**Pruebas de configuración**
Consiste en probar diferentes configuraciones de hardware / software para comprobar que el comportamiento es el esperado

**Pruebas de usabilidad**
Buscan comprobar que la aplicación ofrece a los usuarios una experiencia lo más cómoda, intuitiva y eficiente.


### Técnicas de prueba

#### Caja negra

Se centran en estudiar la especificación de las funciones, la entrada y salida para derivar los casos.

##### Técnicas

- Técnica de las clases
	- Los datos de entrada de un programa normalmente se pueden agrupar en varias clases diferentes que tienen características comunes
	
- Técnica de Análisis de Valores Límite
	- Prueba la habilidad del programa para manejar datos que se encuentran en los límites aceptables.
	
- Técnica de las pruebas de comparación
	- Partiendo de las mismas especificaciones se desarrollan diversas versiones independientes de una aplicación.
	- Se prueban todas las versiones con los mismos conjuntos de datos de prueba
	
- Técnica de conjetura de errores
	- Se elabora una lista con las equivocaciones que pueden cometer los desarrolladores y programadores
	
- Técnica de los grafos de Causa-Efecto
	- Técnica de diseño de casos de prueba de caja negra que permite representar sin ambigüedad las relaciones entre las condiciones lógicas y sus respectivas acciones 


#### Caja blanca

Se basan en el diseño de casos de prueba que usa la estructura de control del diseño procedimental para derivarlos.

Mediante la caja blanca, el programador puede obtener casos de prueba que:

- Garanticen y ejerciten por lo menos una vez todos los caminos independientes de cada módulo, programa o método.
- Ejerciten todas las decisiones lógicas en las vertientes verdadera y falsa
- Ejerciten todos los bucles en sus límites operacionales
- Ejerciten las estructuras internas de datos para asegurar su validez


## SANDBOX

Es un espacio virtual aislado y diseñado para ejecutar código de software potencialmente peligroso sin comprometer los recursos de red o app locales.


**Características**
- Permiten a los usuarios ejecutar programas / abrir ficheros en un entorno controlado, previniendo cualquier daño al equipo real
- Las sandbox permiten volver a un estado anterior del sistema.
- Permite reducir costes
- Permite a los usuarios el probar sus configuraciones / programas con diferentes software y hardware.
