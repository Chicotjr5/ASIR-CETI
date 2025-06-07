
## Índice
- [[Practica 1#Índice|Índice]]
- [[Practica 1#Algoritmos|Algoritmos]]
- [[Practica 1#Ejercicio de paginación|Ejercicio de paginación]]
- [[Practica 1#Ejercicio de segmentación|Ejercicio de segmentación]]


### Algoritmos



### Ejercicio de paginación

Tenemos un sistema operativo de 32 bits en el que la asignación de memoria se realiza mediante paginación. 
Cada página/marco ocupa 1 MB. De los 32 bits de la dirección de memoria, se usan 12 bits para especificar la página. 
Se tiene un proceso, P1 del que podemos ver el siguiente fragmento de su tabla de páginas:

| Página | Marco |
| ------ | ----- |
| 0x59B  | 0x123 |
| 0x59C  | 0xA05 |
| 0x59D  | 0x59F |
| 0x59E  | 0x799 |
| 0x59F  | 0xF8B |
| 0x59A0 | 0x22D |

Dada la dirección lógica 0x59F2A5A0, obtener la dirección física correspondiente:
- 0xF8B2A5A0

Dada la dirección lógica 0x5A02A59F, obtener la dirección física correspondiente.
- 0x22DA59F

Dada la dirección lógica 0x59C4DE87, obtener la dirección física correspondiente
- 0xA054DE87

### Ejercicio de segmentación

En un sistema de de 32 bits se tiene un proceso, P1 del que podemos ver el siguiente fragmento de su tabla de segmentos (el tamaño viene expresado de forma relativa la base):

| Segmento | Base       | Tamaño     | Límite     |
| -------- | ---------- | ---------- | ---------- |
| 0xA321   | 0x85434520 | 0x00005218 | 0x85439738 |
| 0xA322   | 0xBA41002E | 0x00003FD1 | 0xBA413FFF |
| 0xA323   | 0x226A5722 | 0x00004D3D | 0x226AA45F |
| 0xA324   | 0xF01809AC | 0x00000053 | 0xF01809FF |
| 0xA325   | 0x226CA460 | 0x0000AAFF | 0x226D4F5F |
| 0xA326   | 0x4951B4D8 | 0x0000F424 | 0x4952A8FC |

**Obtener las direcciones físicas absolutas donde termina cada segmento**

**Dada la dirección lógica 0xA3231265, obtener la dirección física correspondiente.**

- 4D3D-1265= 15064 Está dentro del segmento 
- 226A5722+1265 = 226A6987 
- Su dirección física sería 0x226A6987

**Dada la dirección lógica 0xA3240265, obtener la dirección física correspondiente.**

- 53-0265= -212 
- Se sale del segmento

**Dada la dirección lógica 0xA325AAFA, obtener la dirección física correspondiente.**

- AAFF – AAFA = 5 Esta dentro del segmento 
- 226CA460 + AAFA = 226D 4F5A 
- Su dirección física sería 0x226D4F5A





