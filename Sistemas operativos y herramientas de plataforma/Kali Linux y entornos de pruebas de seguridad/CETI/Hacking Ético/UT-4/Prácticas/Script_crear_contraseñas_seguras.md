<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Script](#script)
- [Mejora del script](#mejora-del-script)
  
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

Básicamente lo que hace es cargar la librería **System.web** usando Add-Type -AssemblyName System.Web permitiéndole acceder a la clase System.Web.Security.Membership.
Además especifica que la contraseña sea de 10 caracteres y con mínimo 3 alfanuméricos.

Su ejecución:

![1 1](https://github.com/user-attachments/assets/eea6fb42-82a1-4e36-aeff-2d39eda1efce)

---

### Mejora del script

Con un poco de ayuda he creado el siguiente script, el cual crea 10 contraseñas con 12 caracteres e implementando 4caracteres alfanuméricos, guardando esas contraseñas en un archivo llamado contraseñas.txt:

```bash
$Assembly = Add-Type -AssemblyName System.Web
$archivo = "contraseÃ±as.txt"
 
# Borrar el archivo si ya existe
if (Test-Path $archivo) { Remove-Item $archivo }
 
# Generar y guardar contraseÃ±as
for ($i = 1; $i -le 10; $i++) {
    $password = [System.Web.Security.Membership]::GeneratePassword(12,4)
    Add-Content -Path $archivo -Value $password
}
 
Write-Output "Se han generado 10 contraseÃ±as y guardado en $archivo"

```

Su ejecución:

![1 3](https://github.com/user-attachments/assets/6241c1ac-ef82-4ad5-b182-0108d69d0e95)









