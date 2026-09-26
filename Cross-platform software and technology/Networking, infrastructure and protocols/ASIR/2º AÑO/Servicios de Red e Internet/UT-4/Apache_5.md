## Generación de los certificados. 

Ahora, vamos a crear un sitio web seguro, que use el protocolo HTTPS. 

Lo primero, será crar los certificados de seguridad, para que el servidor pueda mostrar su autenticidad, aunque en nuestro caso, la autoridad certificadora no será de confianza (pues nosotros hemos creado los certificados) pero eso lo dejaremos para más adelante. 
Crearemos un directorio donde guardaremos de forma temporal los certificados. 

<img width="497" height="57" alt="image" src="https://github.com/user-attachments/assets/381397c5-0874-472e-a2b8-243e6bc94ce5" />

Y crearemos los certificados.

<img width="602" height="357" alt="image" src="https://github.com/user-attachments/assets/37e729fd-ee78-450b-acdb-369a92a97c62" />

Una vez creados, podemos verlos en el directorio

<img width="414" height="39" alt="image" src="https://github.com/user-attachments/assets/7a6b2c72-59be-46ee-862d-5d972b8da2d5" />

Y si vemos el contenido de los archivos, se vería así:

<img width="444" height="392" alt="image" src="https://github.com/user-attachments/assets/89283056-9db9-407d-9397-67e0a83c2e8a" />

↓

<img width="458" height="367" alt="image" src="https://github.com/user-attachments/assets/101b33ad-1c47-4d3e-ae10-a78cc0503655" />

**servidor.key** es la clave privada y **servidor.crt** es el certificado. 
Después de haber generado ambas claves, las copiaremos al directorio **/etc/ssl/private**. 

<img width="663" height="17" alt="image" src="https://github.com/user-attachments/assets/acb06662-423c-487e-94e8-28aeb7545330" />

---

## Habilitar módulo ssl

Para que nuestro sitio seguro funcione, tenemos que activar el módulo ssl, con el comando 

```bash
a2enmod ssl.
```

Y luego, reiniciar el servicio.

<img width="741" height="194" alt="image" src="https://github.com/user-attachments/assets/be641bb5-50b0-47d9-b067-3898abc2fc58" />

---

## Preparar el site y una página 

Lo siguiente que haremos, será crear un nuevo directorio **/var/www/wwws** con un archivo **index.html** que será lo que veremos cuando accedamos al servidor.

<img width="630" height="196" alt="image" src="https://github.com/user-attachments/assets/4df07fb7-023c-4176-83ab-7adcc4667ccc" />

---

## Configurar fichero de configuración

Una vez tenemos todo listo, solo falta configurar el fichero **/etc/apache2/sites-available/000.default.ssl**

En este archivo, configuraremos las directivas **SSLCertificateFile** y **SSLCertificateKeyFile** donde especificaremos la ruta hacia el certificado y la clave privada.

Además de especificar el directorio con los ficheros de la página.

<img width="643" height="224" alt="image" src="https://github.com/user-attachments/assets/06fe53d8-8620-4a9e-af9e-f135909eebd8" />

---

## Activar el host virtual 

Para activar el host seguro, tenemos que usar el siguiente comando:

```bash
a2ensite default-ssl.conf
```

<img width="754" height="90" alt="image" src="https://github.com/user-attachments/assets/941705c4-5de4-4a30-9bb3-cd7f66753e99" />

---

## Acceder desde el navegador

Ahora, si accedemos por primera vez desde un navegador web, nos saldrá un mensaje de que el sitio no es seguro, puesto el navegador no tiene el certificado. 

<img width="665" height="482" alt="image" src="https://github.com/user-attachments/assets/3cd323c5-82ee-4cc8-b141-545564e9d745" />

Para poder ver la página, tenemos que aceptar el certificado.

<img width="666" height="315" alt="image" src="https://github.com/user-attachments/assets/5673ab53-e226-4bd9-b208-9177949b6f0d" />

↓

<img width="556" height="582" alt="image" src="https://github.com/user-attachments/assets/cba1d0da-03e3-4dd7-ba85-9e1cb07261ad" />

Si aceptamos el certificado, podemos ver la página web.

<img width="463" height="145" alt="image" src="https://github.com/user-attachments/assets/839cf530-c221-4d1e-8141-b0e3a940d15c" />












































































