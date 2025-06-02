## Índice

- [Realiza las siguientes restas en binario](#realiza-las-siguientes-restas-en-binario)
- [Realiza las tablas de la verdad de las siguientes operaciones lógicas](#realiza-las-tablas-de-la-verdad-de-las-siguientes-operaciones-lógicas)
- [Introducción](#introducción)

### Introducción

En esta práctica se realizan restas de numeros en diferentes sistemas de enumeración (octal, decimal, hexadecimal) para realizar su resta en binario.
Además de que se realizan operaciones lógicas

### Realiza las siguientes restas en binario

##### A) 453(octal)-276(octal)

| Octal | Decimal | Binario   |
| ----- | ------- | --------- |
| 453   | 299     | 100101011 |
| 276   | 190     | 010111110 |

Al realizar la resta, queda el siguiente resultado:

| Octal | Decimal | Binario   |
| ----- | ------- | --------- |
| 155   | 109     | 0110 1101 |

##### B) DF(hexadecimal)-A2(hexadecimal)

| Hexadecimal | Decimal | Binario  |
| ----------- | ------- | -------- |
| DF          | 223     | 11011111 |
| A2          | 162     | 10100010 |

Al realizar la resta, queda el siguiente resultado:

| Hexadecimal | Decimal | Binario  |
| ----------- | ------- | -------- |
| 3D          | 61      | 00111101 |

##### C) 202(decimal)-220(decimal)

| Decimal | Binario  |
| ------- | -------- |
| 202     | 11001010 |
| 220     | 11011100 |

Al realizar la resta, queda el siguiente resultado:

| Decimal | Binario   |
| ------- | --------- |
| -18     | 1110 1110 |

En este caso, la resta al dar un número negativo, delante de ese numero binaria vendrían muchos otros 1. (11111111111111111...11101110)

##### D) -53(decimal)-60(decimal) 

| Decimal | Binario   |
| ------- | --------- |
| -53     | 1100 1011 |
| 60      | 0011 1100 |

Al realizar la resta, queda el siguiente resultado:

| Decimal | Binario   |
| ------- | --------- |
| -7      | 1111 1001 |


---

### Realiza las tablas de la verdad de las siguientes operaciones lógicas

##### A) (A AND B) OR *B*

| A   | B   | (A AND B) | *B* | (A AND B) OR *B* |
| --- | --- | --------- | --- | ---------------- |
| 0   | 0   | 0         | 1   | 1                |
| 0   | 1   | 0         | 0   | 0                |
| 1   | 0   | 0         | 1   | 1                |
| 1   | 1   | 1         | 0   | 1                |

---
##### B) (*A* XOR C) OR B

| A   | B   | C   | ((*A* xor C)) | *A* | (*A* XOR C) OR B |
| --- | --- | --- | ------------- | --- | ---------------- |
| 0   | 0   | 0   | 1             | 1   | 1                |
| 0   | 0   | 1   | 0             | 1   | 0                |
| 0   | 1   | 0   | 1             | 1   | 1                |
| 0   | 1   | 1   | 0             | 1   | 0                |
| 1   | 0   | 0   | 0             | 0   | 1                |
| 1   | 0   | 1   | 1             | 0   | 1                |
| 1   | 1   | 0   | 0             | 0   | 1                |
| 1   | 1   | 1   | 1             | 0   | 1                |

---

##### C) (*A AND B*) OR (C AND A)


| A   | B   | C   | *A* | *B* | (*A AND B*) | (C AND A) | (*A AND B*) OR (C AND A) |
| --- | --- | --- | --- | --- | ----------- | --------- | ------------------------ |
| 0   | 0   | 0   | 1   | 1   | 1           | 0         | 1                        |
| 0   | 0   | 1   | 1   | 1   | 1           | 0         | 1                        |
| 0   | 1   | 0   | 1   | 0   | 0           | 0         | 0                        |
| 0   | 1   | 1   | 1   | 0   | 0           | 0         | 0                        |
| 1   | 0   | 0   | 0   | 1   | 0           | 0         | 0                        |
| 1   | 0   | 1   | 0   | 1   | 0           | 1         | 1                        |
| 1   | 1   | 0   | 0   | 0   | 0           | 0         | 0                        |
| 1   | 1   | 1   | 0   | 0   | 0           | 1         | 1                        |





