# Uso de la herramienta HWINFO

## Accede a Program - Syustem Summary

### Identifica el modelo de tu procesador y las siguientes características:

![image](https://github.com/user-attachments/assets/e5632890-1158-41dc-9b6b-f54a607b6b4d)

### ¿Cuántos módulos de memoria RAM tiene tu equipo? ¿De qué capacidad? Indica su tipo, frecuencia y latencia (CL).

![image](https://github.com/user-attachments/assets/4c5abc1b-3077-41c9-979d-8be54cf71d91)

### Identifica la GPU, su interfaz y su memoria. 

![image](https://github.com/user-attachments/assets/6a1d337c-b88d-4081-9d02-c99882499236)

### Señala el modelo de placa base y el chipset, además de localizar la versión y fecha de la BIOS

![image](https://github.com/user-attachments/assets/449e3f16-c2d7-4909-86b5-677537fee7d5)

### Describe cuántas unidades de almacenamiento secundario tiene el equipo, identificando su interfaz, capacidad y tipo.

![image](https://github.com/user-attachments/assets/b3beeef2-6864-4b2a-ade7-990711023f0d)

## Localiza informaicón sobre los siguientes componentes

### Monitor

![image](https://github.com/user-attachments/assets/249cecf5-bef4-4b32-b50b-8fecdbbfd951)

### Audio

![image](https://github.com/user-attachments/assets/1368654c-300c-4b85-b3d5-dbf8b64b7bf0)

### Red

![image](https://github.com/user-attachments/assets/853a7951-3683-425d-a995-369c580b1318)

### Puertos

![image](https://github.com/user-attachments/assets/6407273e-d177-4b30-b8e4-8f3e79ad6641)

## ¿Qué es un benchmark? Ejecuta un benchmark en HWiNFO con las opciones por defecto

Técnica usada para registrar el desempeño general de un sistema para un modelo de uso definido. 
Se mide el desempeño de algunos componentes individuales como CPU, memoria, o tarjeta de gráficos.

### ¿Sobre qué componentes permite realizar el benchmark? 

![image](https://github.com/user-attachments/assets/c8ce5bd4-9537-4b22-8f25-9092df54628c)

### Ejecuta el benchmark y obtén un gráfico comparativo respecto a otros equipos del desempeño de los siguientes elementos: 

![image](https://github.com/user-attachments/assets/2e53741a-5d2e-4dc7-b4cc-461ede11c6c2)

↓

![image](https://github.com/user-attachments/assets/4c6e4fb7-de75-4871-af42-f1bfb9f91584)

## Desde la opción Sensors

### Localiza los datos sobre el voltaje actual, mínimo, máximo y medio de cada uno de los núcleos del procesador. 

Desde la opción Sensores, podemos ver información sobre todo tipo de componentes y elementos. 
Como, por ejemplo, los voltajes de los núcleos de la CPU.

![image](https://github.com/user-attachments/assets/da06d325-2344-4e3e-8ef5-0270b3a116c2)

### Localiza los datos sobre la temperatura de los siguientes componentes

**CPU PACKAGE**

![image](https://github.com/user-attachments/assets/ee2769a6-c244-48e8-b6f2-9273a6e43a71)

**Core #1 ... Core #x**

![image](https://github.com/user-attachments/assets/b1245a2f-f676-4c53-ae5d-6030a1317ecf)

### Disco duro

![image](https://github.com/user-attachments/assets/b86b611e-d2b5-413e-8d88-0b6f4dd39377)

### GPU 

![image](https://github.com/user-attachments/assets/7062a2f2-74a6-4a69-a0cb-78fa0ebc821f)

## Guarda un informe en un fichero de texto

Para guardar un informe, seleccionaremos la opción Save Report y elegiremos la opción Text Logfile, para que se guarde como un fichero de texto. 

Y podemos elegir los datos que se guardarán. 

![image](https://github.com/user-attachments/assets/b14c0fa6-69cf-4a26-8507-412c1d81204f)

↓

![image](https://github.com/user-attachments/assets/67688437-6691-42e5-89ec-067ff2d3b6d6)

# Uso de la herramienta CPU-Z 

## Observa la pestaña CPU

###  Identifica el modelo de tu procesador, tecnología de fabricación (en nm), número de núcleos e hilos y frecuencia actual del reloj (incluyendo valor del multiplicador y frecuencia del FSB). 

### Identifica las características de los distintos niveles de la memoria caché. 

![image](https://github.com/user-attachments/assets/a574f763-4b03-44b5-9841-5c5d2b6526b6)

## Observa la pestaña Mainboard:

### Indica el fabricante y modelo de la placa base.
### Identifica el chipset (puente norte y puente sur).
### BIOS: Indica el fabricante, la versión y la fecha. 
### Señala cuál es la interfaz utilizada para los gráficos. 

![image](https://github.com/user-attachments/assets/1cb8d7ff-6342-40af-8681-636db1e4c4b6)

### Investiga qué es el LPCIO.

El LPCIO es un controlador básico de **entrada-salida** que controla las salidas de entrada de nivel de chip de la placa madre como monitorear el voltaje de la CPU, la velocidad del ventilador. 

Además, es el controlador que usan los programas de este tipo para recoger la información de cada componente.

## Observa la pestaña Memory

### ¿Qué tipo de memoria tiene? ¿De qué capacidad?
### ¿Está configurada en Dual Channel? 
### ¿Qué es FSB:DRAM? 

![image](https://github.com/user-attachments/assets/13bf3fb5-5788-4cf4-8457-e6dbf4bc02de)

### Indica los valores de las latencias y su unidad de medida.

**CAS Latency**
Cuánto tiempo debe esperar la computadora antes de que realmente pueda comenzar a leer datos de la memoria 

**RAS to CAS delay**
Especifica el número de ciclos de reloj entre el momento en que la luz estroboscópica de fila activa una fila hasta que la columna en esa fila (que define una celda o bit de memoria) se puede leer o escribir 

**RAS Precharge**
Indica el tiempo que tarda la memoria en colocarse sobre una fila.

**Cycle Time**
El tiempo, generalmente medido en nanosegundos, entre el inicio de un acceso a la memoria de acceso aleatorio (RAM) hasta el momento en que se puede iniciar el siguiente acceso 

**Row Refresh Cycle Time**
Es un tiempo en ciclos para actualizar una fila en un banco de memoria. Por lo tanto, un menor tiempo de ciclo de actualización de filas (tRFC) da como resultado un mejor rendimiento.

## Observa la pestaña SPD

### Indica los slots de memoria ocupados indicando para cada uno de ellos el tipo de módulo, su fabricante y su capacidad. 

### Indica el estándar utilizado en los módulos de memoria RAM y su frecuencia. ¿Por qué el valor de la frecuencia es la mitad del especificado en el módulo? Por ejemplo, si un módulo es DDR4-3200 el valor de la frecuencia que se puede leer con las herramientas de diagnóstico está en torno a 1600MHz. 

###
































































