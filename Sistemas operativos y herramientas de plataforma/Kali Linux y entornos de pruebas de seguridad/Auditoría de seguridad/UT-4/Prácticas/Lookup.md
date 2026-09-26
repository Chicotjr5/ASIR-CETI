<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Acceder a página oculta](#acceder-a-página-oculta)
- [Ataque de fuerza bruta al login](#ataque-de-fuerza-bruta-al-login)
</details>

## Introducción

En esta práctica se va a realizar varios ataques a la máquina Lookup la cual es una máquina vulnerable de la página [tryhackme](wwwtryhackme.com )

No esta la máquina resuelta al 100%, solo la parte de acceso a la página de login y ha files.lookup.htm

A la máquina hay que acceder desde una VPN
---

### Acceder a página oculta

Esta máquina tiene una página de login donde se puede iniciar el ataque.
Para poder acceder a esta página hay que editar el archivo /etc/hosts y añadir la 
siguiente entrada: 

![1 1](https://github.com/user-attachments/assets/9bdcdf01-b895-4e2c-a9db-c986da412ec8)

Ahora puedo acceder a esta página:

![1 2](https://github.com/user-attachments/assets/37f3f04f-4a87-4637-b823-3d238eaa35bb)

---

### Ataque de fuerza bruta al login

Intento hacer el típico inicio de sesión con admin/admin.

![1 3](https://github.com/user-attachments/assets/0f545dc5-3d91-4dca-b7c5-0d43d156b267)

Entonces se nos muestra el siguiente mensaje de error:


![1 4](https://github.com/user-attachments/assets/93930c04-367e-43bf-ab3d-e62345cfd97a)


Nos habla de que la **contraseña es incorrecta**, pero **no nos dice nada sobre el usuario**, 
por lo que se puede pensar que **el usuario admin existe**. 

Con esta información inicio **Burpsuite** donde realizaré un ataque de fuerza bruta para 
intentar adivinar más usuarios.

Intercepto el paquete que manda las credenciales a la máquina.


![2 2](https://github.com/user-attachments/assets/5c5002e1-92aa-4af2-b88b-47c31f6aee1c)

Y lo mando al intruder:


![2 3](https://github.com/user-attachments/assets/9137fc86-6c57-46da-a4d3-5525a3e5f0f7)


Dentro del intruder selecciono el campo username al cual le lanzo el ataque. 
Se probarán + de 10000 usuarios: 


![2 4](https://github.com/user-attachments/assets/3cd0e216-915b-4ee5-8000-a68c4ddb60ca)

Al acabar el ataque veo una cosa interesante. 
El usuario admin y jose tienen casi los mismos valores, por lo que seguramente el usuario jose también exista: 


![2 5](https://github.com/user-attachments/assets/6f723053-d844-4e72-82d4-98aed935e383)


Pruebo iniciar sesión con el usuario jose y vuelvo a recibir el mismo mensaje que con 
admin, por lo que jose existe.


![2 6](https://github.com/user-attachments/assets/90fcaecb-754e-4409-96f3-6a6e2729cc28)

Así que ahora solo queda adivinar la contraseña, por lo que haré otro ataque de fuerza 
bruta de la misma forma que hice anteriormente. 


![2 7](https://github.com/user-attachments/assets/a90ee670-226e-45fa-97b6-21b80138e7ab)


De todas las contraseñas que se han probado, **password123** es la que tiene valores 
más diferentes que el resto, así que voy a aprobar a iniciar sesión con 
**jose/password123**.


![2 8](https://github.com/user-attachments/assets/b6727eee-93db-4f7b-941a-5c424d75ceee)

Al hacerlo, me sale un error del burpsuite y se puede ver que la url ha cambiado, 
siendo ahora **files.lookup.thm**. 


![2 9](https://github.com/user-attachments/assets/e2b972e3-7a6e-4140-be41-171ec873c53b)


Para solucionar este error modifico de nuevo el archivo **/etc/hosts** para que la IP 
coincida con esta nueva url: 


![3 1](https://github.com/user-attachments/assets/4a865199-e6e2-435e-b9f0-03b894a052b1)


Y efectivamente, puedo acceder: 


![3 2](https://github.com/user-attachments/assets/4e7f2046-2578-4183-9652-bc4ac9bccc60)




















