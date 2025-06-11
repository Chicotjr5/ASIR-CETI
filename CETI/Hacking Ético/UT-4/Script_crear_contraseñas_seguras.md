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

 ```bash 
$Assembly = Add-Type -AssemblyName System.Web [System.Web.Security.Membership]::GeneratePassword (10,3)
```
