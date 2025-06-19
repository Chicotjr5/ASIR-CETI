<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
</details>

---

## Introducción

En esta práctica se realizarán pruebas unitarias sencillas para entender el concepto.  
Para ello se deberá instalar eclipse e importar el proyecto aportado por el profesor. 
Se realizarán las pruebas sobre una clase que calcula distintas medidas estadísticas (Moda, Varianza, Media Aritmética y Media Geométrica). 

---

## Prueba 1

![image](https://github.com/user-attachments/assets/6d5d8078-c272-4509-803b-e9878b982983)

Este código:

- Declara un array de enteros con unos valores (en este ejemplo no hay valores).
- Declara una variable llamada **estadisticas** de tipo **EstadisticasArray**.
- Crea una nueva instancia del objeto **EstadisticasArray** y asigna esa instancia a la variable **estadísticas**.
- Llamamos a la función **rellenaVector** del objeto **estadisticas** y se le pasa el array **"arrayprueba".** 
- Copia los valores de **arrayprueba** al array "vector" dentro del objeto **estadisticas**.
- Texto que saca por pantalla y a que funciones está llamando
- Comprueba que el resultado de la operación es 15.25.

En este caso, al pasarle un array vacío, nos da el error **NaN (Not a Number)** 

![image](https://github.com/user-attachments/assets/dd9e3042-0589-4da0-9a46-bc18dd4d5398)

---

## Prueba 2

![image](https://github.com/user-attachments/assets/f593bf95-4611-4f6f-b0a6-d580e59f45a2)

En esta prueba se comprueba que la media geométrica de los valores (positivos) del array es la correcta.

En el caso del array de la prueba, la media geométrica proporciona muchos decimales, así que pongo una tolerancia de errores de 0.01, así para que el resultado sea correcto, deberá de estar entre los valores 7.61 y 7.63.

Al ejecutarlo sale todo correcto. 

![image](https://github.com/user-attachments/assets/14a5711f-c809-425f-90a8-1369b1cd0f74)

↓

![image](https://github.com/user-attachments/assets/1630f1c7-8c14-4383-8f33-fd9510bd29ea)

---

## Prueba 3

![image](https://github.com/user-attachments/assets/e3a8d328-e3e8-4ee8-8175-8544ec10a9e5)

Al ejecutarlo, nos sale un **NaN**, así que es otro error del programa porque no esta función procesa números negativos.

![image](https://github.com/user-attachments/assets/626b2a4a-79f9-4e91-b294-f151bc2a499d)

---

## Prueba 4

![image](https://github.com/user-attachments/assets/6f9fb82e-eefb-4299-b0c6-61941a4e7063)


En esta prueba se ve si el programa es capaz de ejecutarse correctamente aun habiendo números negativos. 
Anteriormente se ha visto que no puede. 
Pero en este caso, se ejecuta de forma correcta y el resultado que nos saca es el correcto. 

![image](https://github.com/user-attachments/assets/bc21b45e-c987-4d5e-bee8-ddb503442fd0)

↓

![image](https://github.com/user-attachments/assets/23870fec-0dcf-42f1-bd1d-714d23dc0155)

---

## Prueba

![image](https://github.com/user-attachments/assets/1be5a283-f92b-4e3a-84c2-b4f8bdeb907a)

En esta prueba, se calcula la mediana de los números que se encuentran en el array. 
El nº de valores del array es par, así que la mediana se calculará de manera distinta a que si fuera impar. 
Se ejecuta y no nos da ningún error, además de que saca el resultado correcto.

![image](https://github.com/user-attachments/assets/1ec25779-6dcf-4b23-ae0b-8a6b1cc23a24)

↓

![image](https://github.com/user-attachments/assets/45a60036-5f2c-40ea-b68b-894000250509)

---

## Prueba 6 

![image](https://github.com/user-attachments/assets/bc868e45-d33e-4589-90b9-9fd929c944f2)

Esta prueba es similar a la anterior, solo que esta vez, el nº de valores del array es impar, así que la mediana se calcula de forma diferente. 
Antes la mediana daba 7 y ahora da 9, aunque la suma de los valores de ambos arrays da el mismo resultado. 
Como el resultado da 9, modificare el assertEquals para que el resultado ahora sea 9 y que el código no de ningún error. 

![image](https://github.com/user-attachments/assets/9470aa3f-e330-4b7d-92c1-edd27da70f43)

---

## Prueba 7

![image](https://github.com/user-attachments/assets/376dd5fc-04f5-4af8-a3a6-4a26051cd20e)

En esta última prueba se comprobará si el programa es capaz de soportar números negativos a la hora de realizar la media geométrica, para ello, se le pasa 1 número negativo a través del array. 

Al ejecutarlo, sacará el error NaN (Not a Number) así que no es capaz de procesar números negativos. 

![image](https://github.com/user-attachments/assets/c246e977-1d28-46ba-9d1f-57ccbd0a3d37)




