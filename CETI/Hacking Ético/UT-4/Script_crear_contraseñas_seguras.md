<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
  
</details>

---

## Introducción

En esta práctica se va a ver un script que nos permite generar contraseñas seguras de manera automatica.

---

### Script

Este script crea 10 contraseñas seguras:

<pre lang="markdown"> ```powershell # Cargar el ensamblado necesario Add-Type -AssemblyName System.Web # Generar una contraseña aleatoria de 10 caracteres, con 3 caracteres no alfanuméricos $Password = [System.Web.Security.Membership]::GeneratePassword(10,3) # Mostrar la contraseña generada Write-Output $Password ``` </pre>
