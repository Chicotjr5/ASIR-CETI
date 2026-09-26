### Estando situado directamente en C:\ muévete a tu directorio personal utilizando una ruta absoluta 

Usaremos el comando **Set-Location** junto con la ruta del directorio al que queremos ir.

![image](https://github.com/user-attachments/assets/893c1dfe-05bc-4fbe-b4be-1e6f9416fa59)

---

### Realiza una tabla en la que escribas las correspondencias de las órdenes del cmd que hemos estudiado y el cmdlet de Powershell equivalente. 

| ALIAS   | CMDLET         |
| ------- | -------------- |
| CD      | Set-Location   |
| ECHO    | Write-Output   |
| DEL     | Remove-Item    |
| CP      | Copy-Item      |
| MD      | Mkdir          |
| MOVE    | Move-Item      |
| DIR     | Get-Childitem  |
| TYPE    | Get-Content    |
| RD      | Remove-Item    |
| CLS     | Clear-Host     |
| SET     | Set-Variable   |
| MOUNT   | New-PSDrive    |
| MAN     | Help           |
| COMPARE | Compare-Object |

---

### Actualiza la ayuda local para que podamos obtener información completa y actualizada acerca de los cmdlets. 

Usaremos el comando:
```bash
Update-Help
```
Esto hay que hacerlo en modo Administrador, porque si no, muchos paquetes no se instalarán.

![image](https://github.com/user-attachments/assets/50b9fd16-408a-4c72-9da9-3a5ee9dd29a8)

---

### Crea una variable de powershell que tenga como nombre tu nombre de pila y como valor tu apellido. Haz que se muestre el contenido de la variable


Para crear una variable, tenemos que poner el signo $ antes del nombre de la variable, para agregarle un valor pondremos = y entre comillas el contenido. 

Para mostrar el contenido, solo tenemos que poner le nombre de la variable.

![image](https://github.com/user-attachments/assets/3b5e9853-81fa-4c15-96de-1cbaf18b181c)

---

### Haz que se muestre una lista de todos los cmdlets de powershell en pantalla. 

Pondremos el comando Get-Command y le diremos que el tipo de comando que queremos que nos saque, sean los Cmdlet. 

![image](https://github.com/user-attachments/assets/1d40d195-900a-4bad-9e80-853b4e6c5c12)

---

### Muestra la ayuda del cmdlet Get-ChildItem

Para mostrar la ayuda de un cmdlet, pondremos el comando Get-Help y el cmdlet del cual queremos sacar más información.

![image](https://github.com/user-attachments/assets/c383b02e-acb0-44bc-967c-11256c61033e)

Si con esta ayuda no nos es suficiente, podemos decirle al Get-Help que nos saque más ayuda con:

- Detailed
  - Ayuda más detallada
- Example
  - Ayuda con ejemplos
- Full
  - Ayuda más detallada de cada parámetro

---

### Muestra la fecha actual en formato dd/MM/YYYY 

Para mostrar la fecha, usamos el cmdlet **Get-Date**, pero este nos saca la fecha en un formato que no queremos. 

Para decirle el tipo de formato, usamos la opción **-Format “dd/MM/yyyy”** para que nos lo ponga en ese formato. 

![image](https://github.com/user-attachments/assets/2ea345aa-3681-4aef-8413-2bf239d0f49b)

---

### Crea un alias que se llame listado para el cmdlet Get-ChildItem

Para establecer un alias a un cmdlet, usaremos el cmdlet **New-Alias**, con la opción **-Name** especificaremos el nombre del alias y con la opción **-Value** el cmdlet al cual quiere hacerse referencia.

![image](https://github.com/user-attachments/assets/5ba851c7-c6d0-4a73-8f2a-d018a4ec9581)

---

### Crea, dentro de TU directorio personal, la siguiente estructura de directorios, con una sola orden

Usaremos el cmdlet **New-Item**, la ruta de cada carpeta separada por una coma y le diremos con la opción -ItemType que estamos creando directorios.

![image](https://github.com/user-attachments/assets/3a39db6a-24ac-403e-b595-20e0a82fa9fb)

---

### Crea un archivo de texto dentro del directorio Poe llamado The Raven.txt. El contenido del archivo debe ser la frase Never More Muestra el contenido del archivo 

Para crear un nuevo archivo y darle un contenido, usaremos el cmdlet **Add-Content**, con la opción -Path le diremos la ruta del archivo y con la opción -Value le diremos el contenido que le añadiremos a ese archivo. 

Y para mostrar su contenido, usaremos el cmdlet Get-Content y con la opción Path le diremos la ruta del archivo.

![image](https://github.com/user-attachments/assets/49c190e0-9efa-4419-820c-8bf80abbc6ce)

---

### Obtén un listado de todos los archivos con extensión jpg dentro de tu carpeta de usuario, tanto directamente como en algún subdirectorio

Usaremos el cmdlet **Get-ChildItem** y como ya estamos en la carpeta usuarios, no hace falta especificarle un path, solo pondremos la extensión del archivo y la opción **–recurse** para que se meta en los subdirectorios. 

![image](https://github.com/user-attachments/assets/aeae65e0-4806-4e24-aa17-166a13f3de1d)

---

### Obtén un listado del contenido del directorio de tu carpeta de documentos (sólo del directorio, no subdirectorios), ordenado por fecha y hora de última modificación, quedando primero los más recientes. 

Usaremos el cmdlet **Get-ChildItem**, con la opción **-path** le diremos la carpeta donde queremos que busque y haremos una tubería a un **Sort-Object** para que nos ordene los elementos por su fecha y hora de última modificación de forma descendiente (para que nos saque los más nuevos primero) 

![image](https://github.com/user-attachments/assets/5be30031-a66e-4dc2-b1fa-35fa14a4f611)

---

### Copia el archivo The Raven al directorio Sherlock Holmes, cambiándole el nombre por The Hound of the Baskervilles.txt

Usaremos el cmdlet **Copy-Item** y tan solo tenemos que especificar la ruta del archivo a copiar y la ruta de la ubicación donde lo copiaremos y desde esta ruta le podemos indicar ya su nuevo nombre. 

![image](https://github.com/user-attachments/assets/6ab0b3c2-e8c5-4cbc-904b-0f42527ce732)

---

### Cambia el nombre del archivo The Raven.txt por The Pit and the Pendulum.txt.

Usaremos el cmdlet **Rename-Item**, con la opción **-Path** le diremos el fichero al que le queremos cambiar el nombre y con la opción **-NewName** le indicamos el nuevo nombre que queremos que tenga.

![image](https://github.com/user-attachments/assets/cb024c89-99dc-46a3-b29b-9f8d6488e5a5)

----

### Mueve la carpeta otros directamente bajo pruebas 

Usamos el cmdlet **Move-Item** para mover un directorio a otro lugar. 

Con la opción **-Path** indicaremos el directorio que vamos a mover y con la opción **-Destination** su nuevo lugar.

![image](https://github.com/user-attachments/assets/54d810c4-0618-41d5-b3aa-133fc230d152)

---

### Elimina el directorio Poe junto con todo su contenido. Debes especificar las opciones necesarias para ello sin que aparezca un cuadro de diálogo preguntándolo

Usaremos el cmdlet Remove-Item, le pasamos la ruta del directorio a eliminar. 

![image](https://github.com/user-attachments/assets/9132c503-529b-4320-9e40-e5fb1d19c754)

---

### Utiliza un cmdlet que devuelva verdadero o falso, indicando si un fichero existe o no. Pruébalo para los dos casos (que el fichero exista y que no exista) 

Usaremos el cmdlet **Test-Path** y indicaremos la ruta del archivo, del cual queremos comprobar si existe o no.

![image](https://github.com/user-attachments/assets/61557ad2-db21-48c0-99fa-0c9cfb097144)

---

### Saca por pantalla las propiedades (sólo propiedades normales, no el resto de miembros del objeto) de los objetos devueltos por el cmdlet Get-ChildItem 

Pondremos el cmdlet **Get-ChildItem**, haremos una tubería a un getmember y le diremos que nos saque solo las propiedades de archivos y directorios.

![image](https://github.com/user-attachments/assets/854e92e7-96fb-488c-a3fb-b44f595c2b50)

---

### Obtén un listado del contenido del directorio de tus documentos (sólo del directorio, no subdirectorios), de forma que sólo aparezcan aquellos archivos cuyo tamaño sea mayor de 512 bytes.

Usaremos el cmdlet **Get-ChildItem**, le decimos la carpeta donde queremos que mire, y le diremos que saque por pantalla aquellos archivos que tengan un tamaño mayor a 512B con la opción **-ge**.

![image](https://github.com/user-attachments/assets/d73aabc0-ff38-4721-8da3-cae268a26987)

---

### Similarmente al ejercicio anterior, muestra ahora los archivos de tamaño menor o igual a 512 bytes y, además, que aparezcan ordenados por tamaño 

Pondremos el mismo comando de antes, pero ahora, en vez de poner la opción -ge (Greatest) pondremos -le (Least) para que nos seleccione los ficheros con menos de 512B de tamaño.

![image](https://github.com/user-attachments/assets/8a9d7860-77ec-4df2-bd35-a6248986c1c0)





























