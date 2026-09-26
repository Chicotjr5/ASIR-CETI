## ThunderBird 

### Instalación de ThunderBird 

En esta práctica, vamos a enviar un correo cifrado, mediante ThunderBird. 
Así que el primero paso, es descargar **ThunderBird** desde su [página oficial](https://www.thunderbird.net/es-ES/). 

<img width="552" height="141" alt="image" src="https://github.com/user-attachments/assets/dd1a5a91-50ad-4ff8-bb4d-8442fb19568f" />

Una vez descargado, lo instalamos.

<img width="396" height="309" alt="image" src="https://github.com/user-attachments/assets/2bfa1237-3e03-4984-818c-a001d571e7b8" />

---

### Configuración de ThunderBird

Una vez instalado, lo iniciamos y lo primero que haremos será configurar la cuenta de correo que usaremos.

<img width="330" height="266" alt="image" src="https://github.com/user-attachments/assets/8a658269-ac15-48fd-8e25-1cba54cd47bb" />

Al poner nuestro correo, el mismo programa reconoce la cuenta de correo. 

<img width="402" height="285" alt="image" src="https://github.com/user-attachments/assets/9589a9ed-83c3-467f-aaca-e25ded235f7c" />

Y descargará todos nuestros correos.

<img width="508" height="292" alt="image" src="https://github.com/user-attachments/assets/bba4eb4e-2176-4950-bf5c-76212270f59f" />

---

## Claves 

### Creación de claves

Una vez instalado, vamos a generar nuestras claves públicas y privada. 

Vamos a **Configuración de la cuenta>Cifrado de extremo a extremo>Añadir clave** 

<img width="631" height="251" alt="image" src="https://github.com/user-attachments/assets/5c5203d6-47c3-40d4-8b36-0517cb0a0755" />

Se nos ofrece la opción de importar una clave o crear una nueva, ósea que podríamos usar las claves que hicimos en la práctica del cifrado híbrido, pero vamos a crear un nuevo par de claves.

<img width="431" height="213" alt="image" src="https://github.com/user-attachments/assets/de94915b-47a0-40c2-8319-7bfca3cc2e8e" />

Al crear la clave, solo nos permite establecer una fecha de caducidad, el tipo de clave y su tamaño en B. 

<img width="383" height="301" alt="image" src="https://github.com/user-attachments/assets/68e83e79-a501-46c9-87bf-d1d7b6124b63" />

### Ver propiedades de la clave. 

Una vez creada la clave, podemos ver sus propiedades

<img width="641" height="216" alt="image" src="https://github.com/user-attachments/assets/655212c0-b000-4f20-bb25-2ae56da4a76c" />

Vemos que esta clave, contiene una clave pública y una privada. 
Tambien podemos ver su **ID**, su **Huella Digital**, su **fecha de creación** y **expiración**. 
Además, podemos tratar esta clave como nuestra clave personal o no.

<img width="644" height="285" alt="image" src="https://github.com/user-attachments/assets/ed501658-94e2-4a88-903c-8ee6ced23e78" />

---

### Compartir clave pública

Una vez he generado mi clave, tendré que compartirla para que otros usuarios puedan mandarme mensajes cifrados.

Tenemos 2 formas:

- Publicarla en un espacio público
- Mandarla por correo a aquellas personas que quiera que tengas mi clave.

Primero vamos a probar de la primera forma: 

Es tan fácil como darle al botón **Publicar**.

<img width="646" height="93" alt="image" src="https://github.com/user-attachments/assets/8e6d9495-ead1-4bcb-a25d-6f989a670456" />

Esto hará que la clave se mande a un sitio web, donde otros usuarios a partir de conocer mi correo, podrán descargarla.

<img width="430" height="133" alt="image" src="https://github.com/user-attachments/assets/b7364dff-79f1-4bdd-9af6-22fab8a3868e" />

Antes de que se suba, este sitio web nos mandará un correo, para que verifiquemos nuestra identidad. 

<img width="667" height="425" alt="image" src="https://github.com/user-attachments/assets/27c92576-cc8c-48f8-813d-b92faf630b29" />

Al confirmar nuestra identidad, se nos abrirá una pestaña en nuestro navegador,  indicando que la clave ya está publicada

<img width="618" height="175" alt="image" src="https://github.com/user-attachments/assets/921e6799-0f1e-4a55-adee-6857d55fc628" />

De hecho, si nos metemos al sitio web y la buscamos, la encontraremos y podremos descargarla, para posteriormente importarla y utilizarla. 

<img width="617" height="247" alt="image" src="https://github.com/user-attachments/assets/44a991e3-1cc5-43de-8c86-094f4d493630" />

Otra forma de hacerlo es compartir la clave mandando un correo al usuario a quien se la quiero dar.

Vamos a las **propiedades de la clave>clic derecho sobre la clave>Enviar clave por correo electrónico** esto nos generará un correo con un fichero adjunto el cual es la clave pública.

<img width="311" height="25" alt="image" src="https://github.com/user-attachments/assets/7c0bbe88-0690-4147-8257-efeeeed8cbfc" />

↓

<img width="345" height="355" alt="image" src="https://github.com/user-attachments/assets/b1446e72-7f66-4c90-9110-209f1309ae5e" />

Enviamos el correo y el usuario a quien se lo mandamos, lo recibe e importa la clave pública.

<img width="371" height="139" alt="image" src="https://github.com/user-attachments/assets/391ec269-dc8d-415f-8c0f-ec1ad4f0782b" />

↓

<img width="442" height="205" alt="image" src="https://github.com/user-attachments/assets/5322dace-f72e-494a-9bc8-1c96a48a845f" />

El usuario hará lo mismo con su clave, nos la mandará a través de correo y nosotros la importaremos.

Al importarla, nos sale una pantalla donde se nos pregunta si aceptamos esta clave para verificar y cifrar firmas digitales. 

<img width="551" height="435" alt="image" src="https://github.com/user-attachments/assets/1ffe5c8a-6cdf-454b-9df4-2546d090109d" />

Obviamente, respondemos que si y nos sale otro mensaje diciendo que la clave se ha importado con éxito.

<img width="431" height="350" alt="image" src="https://github.com/user-attachments/assets/d9a502cc-e699-46f6-bf9d-7be22985cb64" />

Y ya tenemos ambos, la clave pública del otro, así que ya podemos mandarnos mensajes cifrados. 

<img width="663" height="148" alt="image" src="https://github.com/user-attachments/assets/d1e4b741-2135-42a0-8bd1-d02ff83411eb" />

↓

<img width="663" height="172" alt="image" src="https://github.com/user-attachments/assets/06c2dc84-9a47-4015-b4cf-e9751624df81" />

---

## Mandar mensaje cifrado.

Para terminar, vamos a comprobar que todo esto que acabamos de hacer, funciona. 
Mandaremos un correo, el cual esta cifrado. 
Si la importación de claves ha funcionado, el remitente podrá ver el mensaje y la imagen mandada. 

<img width="560" height="363" alt="image" src="https://github.com/user-attachments/assets/e334b831-a453-4f06-82a9-22219da041c0" />

Lo mandamos y efectivamente, el remitente puede ver el mensaje. 
Además, a la derecha nos salen 2 iconos, que nos dicen que este mensaje está cifrado. 

<img width="388" height="500" alt="image" src="https://github.com/user-attachments/assets/993c8a04-acd4-4701-8060-54da0593d2df" />
