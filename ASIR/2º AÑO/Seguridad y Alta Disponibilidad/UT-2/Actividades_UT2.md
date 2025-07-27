### Un equipo informático doméstico está compuesto por un ordenador (200 W de consumo), un monitor (50 W), un router (10 W) y una impresora (10 W). Queremos instalar un SAI que proteja toda esa instalación y vamos a una tienda donde nos enseñan un modelo de 300 VA por 78 € y otro de 500 VA por 118 €. Ambos tienen un factor de potencia del 60%. 

**¿Cuál deberíamos elegir?**

Para saber cuál elegir, tendremos que calcular cuánto consume todo nuestro sistema 
200+50+10+10=270W 
Y tendremos que saber cuántos W nos proporciona cada SAI.
Para calcularlo, usaremos la fórmula del Factor de potencia.

```bash
F𝑃 =𝑊÷𝑉𝐴 
0.6 = 𝑊÷300𝑉𝐴 −> 𝑊 =300𝑉𝐴×0.6 = 180𝑊 
0.6 = 𝑊/500𝑉𝐴 −> 𝑊 =500𝑉𝐴∗.6= 300W
```

El SAI de 300VA no nos sirve, porque no es capaz ni de aguantar el ordenador, por lo que nos quedamos con el otro. 

**¿Y si queremos no sobrepasar el 80% de la potencia suministrada por el SAI?**

En ese caso, tendríamos que calcular cuánto es el 80% de 300W

```bash
300 ×0,8 = 240𝑊 
```

Nuestro sistema consume 270W, así que tenemos 2 opciones:

- Dejamos solo el equipo y el router e impresora conectado al SAI
- Compramos otro SAI

---

### En la web analiza las características del [SAI APC Smart-UPS 3000VA](https://www.se.com/es/es/product/SMT3000IC/sai-smartups-de-apc-de-3000-va-lcd-230v-con-smartconnect/?%3Frange=61915-smartups&parent-subcategory-id=88976&selected-node-id=23679172486). 

**A. Autonomía**

La autonomía del SAI varía según la carga que usemos. 
Con un 10% de carga, durará 1:58 Horas 
Mientras que si lo usamos a un 100% de carga, durará 5 minutos y 4 segundos 

**¿Cuál es la autonomía a mitad de carga?**

17 minutos y 12 segundos

**c. Potencia**

Tiene una potencia nominal de 2700W y 3000VA

**d. Vatios(W): potencia real (P=V*I, W = V*A)**

2700W 

**Voltiamperios (VA): potencia aparente, en especificaciones del SAI suele aparecer.**

3000VA

**Calcula el factor de potencia: relación entre VA y W (entre 0 y 1), es igual a W / VA.**

```bash
F𝑃 =2700÷3000 =0.9
```

**Tipos de conectores**

- Conectores RJ45
- Conectores USB
- Tomas de corriente de entrada
- Tomas de corriente de salida
- Tomas de corriente de Protection Only

---

### Ve a [APC](https://apc.com), selecciona un SAI diferente al anterior.

**Indica el enlace al SAI**

[Enlace](https://www.apc.com/es/es/product/SURT20KRMXLI/smartups-rt-de-apc-20-kva-rm-230-v/?%3Frange=61918-smartups-en-l%C3%ADnea&parent-subcategory-id=88976&selected-node-id=27162421315)

#### Indica

**Autonomía**

- 10% - 1h 39min 
- 50% - 15min 14s 
- 100% - 4min 53 s 

**Potencia**

- 20000VA  y 16000W

**Vatios(W): potencia real (P=V*I, W = V*A)**

- 16000W

**Voltiamperios (VA), Potencia aparente**

- 20000VA

**Calcula el factor de potencia: relación entre VA y W (entre 0 y 1), es igual a W / VA**

```bash
F𝑃 =16000𝑊÷20000𝑉𝐴 =0.8
```

**Tipos de conectores**

Solo tiene tomas de corriente, de ningún tipo en especial (como master, slave 
etc)

---

### Dispones de un SAI de 300 VA con el que quieres proteger un ordenador que tiene instalada una fuente de alimentación de 250 W. ¿Sería suficiente? 

Depende del factor de potencia del SAI. 

Si es de 0.9 (muy buen SAI) tendríamos 270W para el ordenador, pero si quisiéramos proteger algún dispositivo más o no estar usando el 100% de la carga del SAI, no nos valdría, sería mejor comprar uno con más VA, que nos permita al menos tenerlo al 80% de su carga como máximo 

---

### En una instalación local en la que tenemos dos ordenadores, dos monitores, dos teclados inalámbricos, una impresora y un router ADSL, pretendemos añadir un SAI. ¿Qué dispositivos deberíamos conectar al SAI? Justifica tu respuesta. 

Deberíamos de conectar los dispositivos más importantes, como los ordenadores, los monitores, para poder actuar sobre los ordenadores y el router, por si estamos haciendo alguna tarea en red (echarse un Counter-Strike por ejemplo) y no queremos perder los datos. 

La impresora, podríamos conectarla también, pero si no la usamos mucho, es mejor no conectarla, menos energía que gastar, SAI más barato que comprar.

---

### Realiza una tabla, con 3 elementos de seguridad activa y pasiva de un coche y de un equipo informática

#### Coche 

| Seguridad activa    | Seguridad pasiva      |
| ------------------- | --------------------- |
| ABS                 | Halo                  |
| Suspensión          | Cinturón de seguridad |
| Dirección           | Airbag                |
| Agarre del vehículo | Chasis                |

#### Informático

| Seguridad activa | Seguridad pasiva |
| ---------------- | ---------------- |
| Antivirus        | NAS              |
| Contraseñas      | SAI              |
| Encriptación     | Backup           |
| Firewall         | RAID             |




















































