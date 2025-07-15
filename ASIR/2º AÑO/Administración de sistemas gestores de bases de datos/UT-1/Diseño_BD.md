## Enunciado

Una empresa de alquiler de vehículos desea conocer en todo momento el estado de su flota. La empresa tiene diversas oficinas repartidas por todo el territorio español.  

Cada oficina se identifica por un código único y se caracteriza por la ciudad en la que se encuentra y su teléfono y la oficina estará en una provincia. De cada provincia se tiene un id (número), provincia, superficie, municipios, capital y CA (Comunidad Autónoma).  

En cada oficina hay disponible un conjunto de coches, de los cuales se conoce su matrícula, el grupo al que pertenece: A, B, C, D, E, F o G, la marca, el modelo, el número de puertas, el número de plazas y la capacidad del maletero.  

Para llevar el control del estado de cada vehículo, se mantiene un registro de sus alquileres, indicando para cada uno de ellos, el nombre del conductor, su DNI, su dirección, un teléfono de contacto y un número de tarjeta de crédito sobre la que realizar los cargos correspondientes.  

Además de esta información de los clientes, para cada alquiler se almacena su fecha inicio, fecha devolución prevista, el tipo de seguro contratado y el precio total. 

Otras restricciones: 

- Codigo Oficina se incrementará automáticamente desde uno.
- NPuertas >=3
- NPuertas por defecto 3
- Controlar Fechas Inicio >= Fecha devolución
- El nombre del conductor no puede repetirse.

---

## Diseño teórico

### Modelo Entidad-Relación

<img width="765" height="462" alt="image" src="https://github.com/user-attachments/assets/6146f097-ae5c-476e-9e7f-68199b0feccd" />

---

### Modelo relacional

<img width="778" height="501" alt="image" src="https://github.com/user-attachments/assets/3b184000-08ba-454e-9f02-a07800bbd7c7" />

### Normalización

#### Cliente

<img width="399" height="368" alt="image" src="https://github.com/user-attachments/assets/2fc82848-3ddb-4997-bbde-f25a1c91c5fb" />

**1FN**

- Una tabla, se considera que esta en 1FN cuando no hay atributos multivaluados. En la tabla cliente no los hay, así que está en 1FN.

**2FN**

- Una tabla está en 2FN cuando está en 1FN y cuando los atributos secundarios dependen completamente entre sí 
- En esta tabla los atributos secundarios dependen de la clave primaria, además de ya estar en 1FN, por lo que está en 2FN. 

**3FN**

- Una tabla está en 3FN cuando no hay relaciones entre atributos secundarios y cuando está en 2FN.
- Esta tabla cumple ambas cosas

**FNBC**

- Una tabla está en FNBC cuando todo determinante es clave candidata. 
- El único determinante de esta tabla (DNI) es una clave candidata, además de ya estar la tabla en 3FN, por lo que también está en FNBC

---

#### Alquila

<img width="459" height="341" alt="image" src="https://github.com/user-attachments/assets/9476c038-79d2-4cf0-85f8-34dd93c82974" />

**1FN**

En esta tabla no hay, atributos multivalorados así que está en 1FN. 

**2FN**

En esta tabla, los atributos secundarios, dependen totalmente de la clave primaria y como ya está en 1FN, está en 2FN.

**3FN**

Esta tabla no tiene relaciones entre sus atributos secundarios y está en 2FN, así que está en 3FN 

**FNBC**

Los determinantes de esta tabla (DNI+Matrícula+F_inicio) es una clave candidata, además de ya estar la tabla en 3FN, por lo que también está en FNBC. 

---

#### Coche/Oficina/Provincia 

<img width="390" height="440" alt="image" src="https://github.com/user-attachments/assets/c49bb5ea-bece-4011-9bd8-bee525bcf562" />

↓

<img width="413" height="432" alt="image" src="https://github.com/user-attachments/assets/967460ca-eba6-4e92-85f6-10cba1f2e43e" />

↓

<img width="379" height="350" alt="image" src="https://github.com/user-attachments/assets/406fe95d-0b67-441f-9686-b9889165ffe9" />

**FNBC**

En estas tablas, el determinante es la clave candidata, por lo tanto están en todas las formas (**1FN, 2FN, 3FN y FNBC**)

---

### Grafo Relacional

En este caso, el grafo relacional es el mismo que el modelo relacional. 

<img width="808" height="522" alt="image" src="https://github.com/user-attachments/assets/b75d5201-1bae-4e2e-a107-e370061ffe75" />



 
