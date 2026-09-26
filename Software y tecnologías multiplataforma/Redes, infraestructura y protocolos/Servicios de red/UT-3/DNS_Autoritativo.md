## Busca en la página web de [IANA](http://www.iana.org/domains/root/db) información sobre las entidades que hacen de registro para los siguientes dominios: 

<img width="594" height="196" alt="image" src="https://github.com/user-attachments/assets/deb4a864-c992-4b7b-a9bd-b8eb498dc599" />

---

## Busca en la web del registro correspondiente, información sobre el usuario registrante y sobre el registrador de los dominios: juandecolonia.es, google.com


Para poder llegar a estos datos, tenemos que ir a la web del registrador correspondiente, en este caso, https://www.dominios.es/es 
Una vez en la página, buscamos el dominio juandecolonia.es, lo que nos llevará a esta [página](https://nic.es/sgnd/dominio/publicBuscarDominios.action?tDominio.nombreDominio=juandecolonia.es&flag=activado), donde podemos ver los dominios disponibles 

<img width="593" height="252" alt="image" src="https://github.com/user-attachments/assets/9099f188-fd14-48bd-8c11-16faaecbb456" />

 Si damos a **Ver Datos** en la página, tendremos que completar un captcha para acceder a los datos.
 
<img width="593" height="156" alt="image" src="https://github.com/user-attachments/assets/e8c39e2b-6e8a-4890-b893-71e10623a14d" />

Al completar el captcha, nos saldrá una página con los datos que estamos buscando. 

<img width="556" height="556" alt="image" src="https://github.com/user-attachments/assets/20d32ccc-737b-4e50-a1d5-5755c5bc44e5" />

Para ver los datos de Google, tenemos qur ir a la página http://www.verisigninc.com/ que es el registrador del dominio. 
Dentro de la página, vamos a **Herramientas de dominio>Whois**

<img width="455" height="239" alt="image" src="https://github.com/user-attachments/assets/66b64fe7-6b41-4c95-984d-475f7c43904a" />

Nos llevará a una página, donde podemos buscar muchos otros dominios, a parte de los .com. Ponemos el dominio google.com y nos salen los siguientes datos

<img width="426" height="554" alt="image" src="https://github.com/user-attachments/assets/7368eaa8-b3f0-4c82-8551-dc82400a095c" />

---

## Obtener la información que devuelven de DNS con www.google.com con las tres herramientas: nslookup, dig, host

Con el comando 
```bash
host
```
solo podemos ver los nombres de dominio de los DNS 


<img width="583" height="118" alt="image" src="https://github.com/user-attachments/assets/bd743a25-09af-4843-9849-ae214d4a3e6a" />

Con 

```bash
nslookup
````
podemos ver información sobre si es una respuesta autoritativa o no, además del servidor DNS utilizado, el dominio consultado y los servidores de nombres para el dominio

<img width="604" height="220" alt="image" src="https://github.com/user-attachments/assets/05dbfd0f-05f2-40ea-932e-435d20677dc0" />

Con el comando 

```
dig
```

podemos ver que sale algo más de información que con los otros comandos como el tiempo que ha tardado en hacer la consulta, el servidor al que ha preguntado, cuando y el tamaño del mensaje, a parte de los nombres DNS de Google.

<img width="515" height="336" alt="image" src="https://github.com/user-attachments/assets/a86c2c9e-31ca-4321-931d-5cab5ae7979b" />

---

## Usando dig obtener la secuencia que se sigue para resolver la dirección www.google.com.  Prueba también a hacerlo desde el Dig on-line: http://www.kloth.net/services/dig.php

En la página http://www.kloth.net/services/dig.php veremos lo siguiente:

<img width="562" height="646" alt="image" src="https://github.com/user-attachments/assets/7fa277e7-1d74-4f67-bc88-f9e4ec01dce0" />

Vemos que se nos ha generado el siguiente comando:

```bash
dig @8.8.8.8 www.google.com A +trace 
```

Si este comando lo ponemos en un terminal de Linux, saldrá lo siguiente

<img width="649" height="678" alt="image" src="https://github.com/user-attachments/assets/cc8f66dd-496d-4fe2-9493-f149123f32db" />

Vemos que sacan la misma información, pero la consulta de Linux ha tardado más y los servidores donde ha preguntado son distintos. 

---

## Averiguar con alguna herramienta DNS la dirección del servidor de aytoburgos.es y la de sus servidores DNS autoritativos

Para ver la dirección del servidor **aytoburgos.es** usaremos el comando 

```bash
nslookup aytoburgos.es
```

<img width="419" height="120" alt="image" src="https://github.com/user-attachments/assets/c9016f77-d6c4-4e4e-a340-86bce1cfe34a" />

Y para ver los servidores autoritativos, usaremos el siguiente comando: 

```bash
nslookup –type=ns aytoburgos.es
```

<img width="497" height="169" alt="image" src="https://github.com/user-attachments/assets/6011389a-c908-4c3c-89cb-279fb2bf5da2" />

Para poder ver la dirección del servidor de aytoburgos.es, podríamos hacerlo de 2 formas. 
Mandando un ping, por lo que nos sacaría la dirección a donde está mandando el ping 
O con **nslookup**.

La diferencia, es que si el equipo no está encendido, **ping** no podrá mandar los paquetes al equipo, puesto está apagado. 
En cambio, con **nslookup**, no mandamos paquetes al equipo, si no que buscamos en un registro la dirección del equipo, por lo que es más efectivo y útil 

























































