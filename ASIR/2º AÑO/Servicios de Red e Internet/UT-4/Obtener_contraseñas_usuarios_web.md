## Con un sniffer, hallar la clave de los usuarios para autentificarse en /privado 

En esta práctica, vamos a capturar el tráfico entre la máquina cliente y el servidor, para poder vislumbrar las credenciales de autenticación de los usuarios. 
Lo primero que tenemos que hacer, es instalar el sniffer con el que vamos a capturar el tráfico. 

En este caso, **Wireshark**.


<img width="622" height="39" alt="image" src="https://github.com/user-attachments/assets/73db6119-cc35-4acd-be81-443d299326ef" />

Una vez instalado, lo iniciamos y empezamos a capturar el tráfico, filtrándolo por el **puerto 80**.


<img width="573" height="200" alt="image" src="https://github.com/user-attachments/assets/63ba1609-42c5-4464-839a-3d7dbf3cd767" />

Con el cliente, nos autenticaremos con el usuario **pedro/pedro1**.

Buscaremos el paquete que contiene las credenciales del usuario y las visualizamos.


<img width="848" height="474" alt="image" src="https://github.com/user-attachments/assets/5cd3e1ab-69a5-4b04-825f-a94b77235818" />

---

## Usar autentificación con digest en /privado2

Ahora, vamos a hacer lo mismo, pero esta vez, con digest. 
Con htpasswd, las contraseñas no viajan cifradas, en cambio, con digest sí. 
Para poder utilizarlo, tenemos que habilitar el módulo **auth_digest.load** y reiniciar el servidor. 


<img width="708" height="148" alt="image" src="https://github.com/user-attachments/assets/89029f20-7a69-4ebe-9425-96db2026a16d" />

Una vez habilitado, crearemos los usuarios y sus contraseñas con el siguiente comando. 


<img width="824" height="32" alt="image" src="https://github.com/user-attachments/assets/540414e1-25d5-4617-b199-9c6b1faf1031" />

Para que esta autenticación funcione, creaemos un archivo **.htpasswd** con las siguientes directivas:


<img width="518" height="176" alt="image" src="https://github.com/user-attachments/assets/c5be9d63-3b96-4fc7-9e0b-de1256ba1032" />

Y en el archivo de configuración del sitio, pondremos la directiva **AllowOverride**, para permitir el uso de estos archivos. 


<img width="326" height="62" alt="image" src="https://github.com/user-attachments/assets/c838dc6c-a21e-470b-b407-da5222717132" />

Reiniciaremos el servidor y nos autenticaremos en el sitio web.


<img width="489" height="279" alt="image" src="https://github.com/user-attachments/assets/e8cae33c-6092-4c5b-8562-ae87102aeab9" />

↓

<img width="560" height="92" alt="image" src="https://github.com/user-attachments/assets/37128c13-537a-41ca-a90a-d687e22a0f59" />

---

## Con un sniffer, intentar capturar la clave en /privado2

Si capturamos la conexión, veremos que la contraseña está cifrada y solo podemos ver el usuario del login. 
Como bien indica en la propia captura, se usa el algoritmo **md5** para cifrar la contraseña


<img width="573" height="471" alt="image" src="https://github.com/user-attachments/assets/41dff4d9-3fe9-4e2e-b145-884bafa55e0a" />

---

## ¿Por qué en digest y en Autn_Name usamos realm?

El parámetro "realm" en el comando htdigest define el espacio de protección para las credenciales de autenticación en el archivo de resumen.  
Cada "realm" representa una esfera de acceso con sus propias credenciales y usuarios autorizados. 

En la directiva AuthName de Apache, "realm" se utiliza para mostrar información descriptiva al usuario al solicitar credenciales. Proporciona contexto sobre la identidad o área protegida, ayudando a los usuarios a comprender el propósito de la autenticación  























































































