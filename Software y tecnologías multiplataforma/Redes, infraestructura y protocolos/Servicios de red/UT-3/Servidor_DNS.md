## Instalación

En la anterior práctica aprendimos a crear un servidor DNS en Windows, bien pues ahora toca en Ubuntu. 
Para poder instalarlo, ejecutamos el comando 

```bash
apt install bind9
```

<img width="401" height="26" alt="image" src="https://github.com/user-attachments/assets/3e346c83-6c4e-43f4-b3b3-2ea68f515f79" />

Para comprobar que se ha instalado, podemos ver el estado del servicio named con el siguiente comando: 

```bash
systemctl status named 
```

<img width="741" height="203" alt="image" src="https://github.com/user-attachments/assets/f1425f10-9ad5-451f-b5e9-293b7694e213" />

Además de que podemos ver que se ha creado el directorio **/etc/bind** junto con sus ficheros. 

<img width="614" height="266" alt="image" src="https://github.com/user-attachments/assets/9492bf9d-133a-46d3-bef2-031dad51ae6f" />

---

## Crear la zona DNS autoritativa y las asociaciones para los equipos 

Una vez instalado, procedemos con la creación de las zonas directa e inversa. 
Primero, hemos de editar el fichero **/etc/bind/named.conf.local** que es el archivo que se usa para definir las zonas de nuestro servidor DNS.

<img width="495" height="26" alt="image" src="https://github.com/user-attachments/assets/c7d2870a-e240-4f72-a004-fa29f999f7c3" />

Y dentro de este fichero, pondremos la siguiente configuración para nuestra zona directa. 

<img width="370" height="118" alt="image" src="https://github.com/user-attachments/assets/18e819c8-cdff-40ee-8e18-892bdfc662cf" />

Esta configuración, especifica el nombre de la zona, el tipo de zona que es y el archivo donde se van a configurar los registros de la zona. 
Seguidamente, creamos un nuevo archivo de zona (o copiamos el archivo db.local y le cambiamos el nombre, ahorrándonos tiempo de escribir el archivo de 0). 

<img width="531" height="20" alt="image" src="https://github.com/user-attachments/assets/10e4f778-3366-4142-929c-f44f56458214" />

Una vez dentro, tenemos que crear a mano cada uno de los registros 
Cada registro, tiene unos parámetros distintos para poner. 
Por ejemplo:

**Registro A**

- Nombre de dominio | IN | A | IP

<img width="369" height="24" alt="image" src="https://github.com/user-attachments/assets/b59692b1-0eea-41e6-acd1-2f094de5a2cc" />

**Registro CNAME**

- Nombre de dominio | IN | CNAME | alias

<img width="561" height="20" alt="image" src="https://github.com/user-attachments/assets/e29da883-9d85-4588-9592-38a2e443a129" />

**Registro MX**

- Nombre de dominio | IN | MX | Prioridad | IP/nombre canonico

<img width="345" height="19" alt="image" src="https://github.com/user-attachments/assets/3fb56bd5-e5ce-4290-881d-6f9d00ae423d" />

Dentro del archivo tendremos la siguiente configuración: 
Antes de realizar esta captura, se comprobó el correcto funcionamiento del DNS

<img width="561" height="620" alt="image" src="https://github.com/user-attachments/assets/6ea80388-40ad-422c-a822-5a54427ec3f4" />

Para comprobar que al menos **sintácticamente** esta todo correcto, usamos el siguiente comando: 

```bash
named-checkzone sri-03.net db.sri-03.net 
```

<img width="803" height="67" alt="image" src="https://github.com/user-attachments/assets/83c7a405-e4fd-4754-87bc-f26e04d204a2" />

Después de realizar estos cambios, hemos de reiniciar el servicio, para que se guarden.

<img width="528" height="23" alt="image" src="https://github.com/user-attachments/assets/8dbe52a5-af62-4ce5-b346-b54ad0ee4cd5" />

---

## Crear también su correspondiente registro en la zona de resolución inversa salvo para los equipos aulapc05 - aulapc10. 

Una vez creada la zona directa, toca la zona inversa. 
Tenemos que seguir los mismos pasos, pero con unas ligeras modificaciones. 
Volvemos a editar el fichero **/etc/bind/named.conf.local** en el cual, pondremos la siguiente configuración.

<img width="380" height="113" alt="image" src="https://github.com/user-attachments/assets/6db452ad-2e08-44ee-8c4e-b01c0aceacbd" />

Volvemos a crear un archivo para la creación de los registros de la zona inversa. 

<img width="451" height="22" alt="image" src="https://github.com/user-attachments/assets/7b0a70ae-bd4f-460a-9f6d-29c51946fedb" />

Al igual que en la zona directa, tenemos que crear distintos registros, pero estos no son iguales a los de la zona directa, si no que son:

**Registro PTR**

- IP sin parte de red | IN | PTR | host

<img width="391" height="22" alt="image" src="https://github.com/user-attachments/assets/d4bbbe4a-0353-468b-832f-f8779c8d2472" />

Y pondremos la siguiente configuración:

<img width="572" height="452" alt="image" src="https://github.com/user-attachments/assets/c22fe2d4-83ab-4577-b12e-614237b98ac7" />

Y comprobamos que está bien **sintácticamente**

<img width="715" height="58" alt="image" src="https://github.com/user-attachments/assets/d91bde8e-aba6-4e72-9ef3-a1f9500b922f" />

---

## El tiempo en caché de los registros de recursos será de 3 horas

Esta configuración es muy sencilla, tan solo tenemos que editar la variable **$TTL** que viene en los archivos de registros de zona. 
Le asignaremos un valor de 10800 segundos (3 horas)

<img width="349" height="77" alt="image" src="https://github.com/user-attachments/assets/d35716f6-e032-406b-ba89-c791af22738a" />

↓

<img width="401" height="79" alt="image" src="https://github.com/user-attachments/assets/1220690f-7fd1-42a2-9c1b-890eebd456d2" />

---

## Realizar verificaciones directas e inversas con nslookup desde el servidor Comprueba que el servidor de correo es correcto.

Vale, ya tenemos nuestro servidor DNS configurado, pero, ¿funciona? 
Para ello vamos a hacer distintas comprobaciones. 
Primero al equipo **W7-03** 

<img width="525" height="178" alt="image" src="https://github.com/user-attachments/assets/33ada4e1-8497-4229-8750-54506fc21f65" />

Al equipo **aulapc01**

<img width="706" height="159" alt="image" src="https://github.com/user-attachments/assets/24a0a27d-2af9-4335-b86b-9b1d4e754758" />

Y probamos el servidor de correo.

<img width="494" height="96" alt="image" src="https://github.com/user-attachments/assets/50a35006-2e77-4e27-ad7b-a270580e9cd7" />

Podemos ver, que está todo correcto.

---

## Configurar el cliente Windows para que utilice este servidor DNS. 

Para ello, tenemos que seguir los siguientes pasos: 
Cambiar configuración **tcp/ip** 

<img width="413" height="272" alt="image" src="https://github.com/user-attachments/assets/b5c91ac8-e299-4740-9ad3-c39a6ce9a80e" />

Poner que el sufijo DNS del equipo es **sri-03.net**

<img width="463" height="121" alt="image" src="https://github.com/user-attachments/assets/671230d0-d93b-42ca-afec-496fdfbc1c00" />

---

## Con nslookup probar si conoce aulapc02. Justifícalo. 

Esto ocurre porque mi sistema está configurado para buscar automáticamente en el dominio DNS especificado cuando se proporciona un nombre de dominio no completamente calificado, pudiendo resolver nombres de dominio parciales gracias a la configuración de búsqueda de DNS en mi sistema.

<img width="467" height="110" alt="image" src="https://github.com/user-attachments/assets/550bcce8-3831-463e-bc49-7f259165bed6" />

---

## Con nslookup probar si conoce aulapc02.sri-XX.net . Justifícalo. 

Y si ahora hacemos un nslookup poniendo todo el nombre, obviamente que nos funcionará, si funciona poniendo el nombre de forma parcial, también funcionará si ponemos el nombre completo.

<img width="488" height="93" alt="image" src="https://github.com/user-attachments/assets/6d09b663-5825-4f6d-a262-1c2d66c4c76d" />

---

## Conseguir si es posible que ambos nombres funcionen siempre 

Todo depende de que el sufijo DNS tenga configurado mi nombre de dominio, en mi caso, sri-03.net.  
Como previamente lo he configurado, funciona de ambas formas

---

## Realizar verificaciones directas e inversas con nslookup desde el cliente (de los equipos característicos). 

Y para finalizar con el cliente Windows, vamos a comprobar que funciona todo a la perfección. 

Comprobación a **aulapc03**

<img width="436" height="185" alt="image" src="https://github.com/user-attachments/assets/d2f92dcc-c26d-4480-ab31-8ee6404848a6" />

Comprobación a **aulapc10**

<img width="580" height="168" alt="image" src="https://github.com/user-attachments/assets/045ede55-896b-4f42-9a26-4f7c33aad9e0" />

Comprobación a **ubcli-03** 

<img width="389" height="179" alt="image" src="https://github.com/user-attachments/assets/fbbccd33-5634-4abd-a284-93c3438e957a" />

Comprobación a **ubcli-04** 

<img width="435" height="176" alt="image" src="https://github.com/user-attachments/assets/126198a0-cb40-489f-a31e-34e536072bd0" />

---

## Configurar el cliente Linux poniendo la dirección del servidor DNS de Ubuntu. 

Ahora nos toca configurar el cliente Ubuntu. 
Primero, tenemos que cambiar la configuración **tcp/ip** del archivo **netplan**.

<img width="274" height="276" alt="image" src="https://github.com/user-attachments/assets/7a294676-c590-48ed-8210-0677a9b6651e" />

Seguidamente, en el archivo **/etc/resolv.conf** tenemos que poner la IP del servidor y decirle que busque en la zona **sri-03.net**

<img width="304" height="88" alt="image" src="https://github.com/user-attachments/assets/ee68934c-ba57-4634-9de9-f88cac418086" />

---

## Con nslookup probar si conoce aulapc02. Justifícalo 

Otra vez nos pasa lo mismo que antes, cuando no tendría que conocer a aulapc02, si lo  conoce. 
La explicación, aunque la misma que antes, es la siguiente: 

Esto ocurre porque mi sistema está configurado para buscar automáticamente en el  dominio DNS especificado cuando se proporciona un nombre de dominio no  completamente calificado, pudiendo resolver nombres de dominio parciales gracias a la  configuración de búsqueda de DNS en tu sistema.

<img width="525" height="126" alt="image" src="https://github.com/user-attachments/assets/7e9f620b-52bc-4891-9c6f-504003fbae81" />

---

## Con nslookup probar si conoce aulapc02.sri-XX.net . Justifícalo

Otra vez la misma situación, si ha funcionado con el nombre parcial, también lo hará con el nombre completo. 

<img width="777" height="161" alt="image" src="https://github.com/user-attachments/assets/d24a765e-fc5b-459c-b040-d0168980a963" />

---

## Conseguir si es posible que ambos nombres funcionen siempre.

Todo depende de que el sufijo DNS tenga configurado mi nombre de dominio, en mi caso, sri-03.net. Como previamente lo he configurado, funciona de ambas formas. 

---

## Presentar el contenido de todos los ficheros texto del DNS que se hayan modificado en la práctica, así como otros ficheros que influyen en su correcto funcionamiento.

**/etc/systemd/resolv.conf**

<img width="662" height="234" alt="image" src="https://github.com/user-attachments/assets/d2aaa4b5-50e3-41f0-9882-14e85868c31a" />

**/etc/bind/named.conf.local**

<img width="659" height="425" alt="image" src="https://github.com/user-attachments/assets/918849ac-8c9f-4fcd-8624-7c19ebb22d7b" />

**/etc/bind/db.sri-03.net**

<img width="566" height="675" alt="image" src="https://github.com/user-attachments/assets/cd08b5f8-7061-4c6d-9c50-c639cd2918a0" />

**/etc/bind/db.192.168.203**

<img width="570" height="467" alt="image" src="https://github.com/user-attachments/assets/e8ee62f7-d7a2-4b9a-830c-20d8b3e283a8" />

**/etc/netplan/00-instaler-config.yaml**

<img width="637" height="261" alt="image" src="https://github.com/user-attachments/assets/dfe908a9-5bff-4baf-b061-c693b7703481" />

---

## Ver si un cliente resuelve la dirección ib05.jcolonia.local. Configurar un reenviador a 192.168.32.13 y ver si resuelve aulapc02.sri-XX.net, www.yahoo.es y ib05.jcolonia.local.

Para finalizar con la práctica, vamos a comprobar, que nuestro cliente W7 puede resolver la dirección **ib05.jcolonia.local**. 
Vemos que así de primeras, pues no puede, esto de sebe a la falta de un reenviador.

<img width="664" height="75" alt="image" src="https://github.com/user-attachments/assets/dd635d4a-994b-43de-bbe1-68dbd141b832" />

Así, que vamos a crear uno. 
Vamos al fichero **/etc/bind/named.conf.options** 

<img width="509" height="31" alt="image" src="https://github.com/user-attachments/assets/158c2042-58e3-45c8-b31e-6d87c8a951d2" />

Y tendremos que añadir las 2 siguientes configuraciones: 
**forwarders {192.168.32.13;};** - Para decir cuál es el reenviador 
**dnssec-validation no;** - Desactiva la validación del DNS seguro (la cual me dio bastantes problemas)

<img width="664" height="370" alt="image" src="https://github.com/user-attachments/assets/797253c1-101c-40cc-b39a-25e4b297c05d" />

Reiniciamos el servicio

<img width="509" height="20" alt="image" src="https://github.com/user-attachments/assets/e7200bca-8ac5-442c-95ff-6d75f781b5cd" />

Y volvemos a probar con la dirección **ib05.jcolonia.local** teniendo un resultado exitoso.

<img width="496" height="105" alt="image" src="https://github.com/user-attachments/assets/d4dce86d-8531-4780-aa73-12485fcc1a58" />

Además, probaremos con www.yahoo.com 

<img width="433" height="150" alt="image" src="https://github.com/user-attachments/assets/c580086e-f788-4b97-88ef-f793e67c0abb" />

Y con **aulapc02.sri-03.net**

<img width="487" height="86" alt="image" src="https://github.com/user-attachments/assets/c9990df5-63e3-4ebb-a07c-64de5e4e8903" />

---

## Realizar gráfico con los ficheros del servidor DNS 

<img width="618" height="804" alt="image" src="https://github.com/user-attachments/assets/e92978af-f2d3-4fad-809f-10b4241a3221" />

### Fichero named.conf

<img width="726" height="184" alt="image" src="https://github.com/user-attachments/assets/458f661c-776c-4ff5-b1e2-9aa1799b7061" />

↓

<img width="483" height="302" alt="image" src="https://github.com/user-attachments/assets/e02f90a3-8608-4890-8329-8ce55405822f" />

↓

<img width="495" height="272" alt="image" src="https://github.com/user-attachments/assets/41fe37d6-62e9-4dec-a315-a3389331b166" />

---

## Fichero named.conf.local

<img width="684" height="380" alt="image" src="https://github.com/user-attachments/assets/5d9e7b88-7b91-412e-a51a-f9f723402f71" />

↓

<img width="495" height="259" alt="image" src="https://github.com/user-attachments/assets/a7432d8a-3f9d-42bc-8b96-3dad1d09d02b" />

↓

<img width="537" height="264" alt="image" src="https://github.com/user-attachments/assets/58f6dcfe-4c95-4af5-955a-8a348c443bb2" />







