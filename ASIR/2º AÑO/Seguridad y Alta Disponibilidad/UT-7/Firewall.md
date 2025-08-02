##  Poner la máquina debian en modo router si no lo está 

```bash
echo "1" > /proc/sys/net/ipv4/ip_forward  
```

<img width="617" height="151" alt="image" src="https://github.com/user-attachments/assets/9eefccb1-84cd-4e2c-8765-dd4afe70687c" />

---

## DMZ:-bitnami-Wordress: configurar la red: 

```bash
sudo ifconfig enp0s3 172.16.0.91 netmask 255.255.0.0 up 
sudo route add default gw 172.16.0.90 
```

<img width="886" height="86" alt="image" src="https://github.com/user-attachments/assets/2f598140-7337-4cd4-8870-eb771dc0f706" />

↓

<img width="607" height="460" alt="image" src="https://github.com/user-attachments/assets/dc4f604c-1afe-44c0-85c1-28409dab9ee2" />

---

## W7 Internet: Iniciar Wamp

<img width="323" height="547" alt="image" src="https://github.com/user-attachments/assets/bb7284da-7e1d-4964-85ae-cad7170f8dda" />

---

## Hacer ping  y realizar capturas de pantalla donde se vea el nombre de la máquina

### De DMZ a red Púbica

<img width="445" height="323" alt="image" src="https://github.com/user-attachments/assets/e943b9e4-1174-4422-9c1e-1d4dac2b1e67" />

### De DMZ a red Interna

<img width="659" height="209" alt="image" src="https://github.com/user-attachments/assets/55888be5-2bd1-4fee-8539-c432a852751e" />

### De DMZ a router

<img width="581" height="266" alt="image" src="https://github.com/user-attachments/assets/6aa6010d-40a8-4fc2-b27f-6a6d1c72e224" />

---

### De red interna a red pública

<img width="708" height="354" alt="image" src="https://github.com/user-attachments/assets/08c59e49-0344-4aa9-abfc-47854cc19196" />

###  De red interna a router

<img width="618" height="247" alt="image" src="https://github.com/user-attachments/assets/4f529f59-8f07-42d9-936e-53e67ef67f18" />

↓

<img width="573" height="233" alt="image" src="https://github.com/user-attachments/assets/f64af8ee-d76e-472b-8a85-3d958c3e65e9" />

### De red interna a DMZ

<img width="598" height="210" alt="image" src="https://github.com/user-attachments/assets/18bba434-4e1f-4fc5-8a55-587358b7100b" />

---

### Red Pública a Router

<img width="498" height="174" alt="image" src="https://github.com/user-attachments/assets/7900422a-9ba9-4828-afe2-9ab71d581569" />

### Red Pública a Equipo de red Privada

<img width="661" height="202" alt="image" src="https://github.com/user-attachments/assets/819d43db-155b-4422-898b-af573e489a95" />

###  Red Pública a DMZ

<img width="614" height="223" alt="image" src="https://github.com/user-attachments/assets/d415fa77-98f6-423d-8c2f-243ff32c59ed" />

---

## Comprobar y realizar capturas de pantalla donde se vea el nombre de la máquina

Entramos correctamente a wordpress desde internet. 

<img width="707" height="573" alt="image" src="https://github.com/user-attachments/assets/599cab3c-06cb-4a88-975b-60ce7d7a3786" />

---

## Comprobar y realizar capturas de pantalla donde se vea el nombre de la máquina

Desde DMZ puedo hacer ssh con el router 

<img width="707" height="479" alt="image" src="https://github.com/user-attachments/assets/53e24ca3-91cc-4389-8caa-25faa97d0c73" />

↓

<img width="708" height="247" alt="image" src="https://github.com/user-attachments/assets/289af3c0-797c-4f64-a304-16e4f60d616f" />

Pero no puedo acceder al router desde la red interna

<img width="707" height="428" alt="image" src="https://github.com/user-attachments/assets/89226767-46d0-4310-af18-da190b3f81a2" />

---

## Realizar un script para aplicar las reglas de cortafuegos adecuadas a la arquitectura, que son las siguientes

- Activar el reenvío de paquetes:
- Borrar tablas anteriores
- Política por defecto prohibir todo.
- Permitir tráfico ping hacia el cortafuegos desde la red interna y desde la DMZ.
- Permitir enmascaramiento o NAT a la red PÚBLICA
- De la red INTERNA a la PÚBLICA permitir el tráfico de petición y respuesta.
- Al cortafuegos sólo se permite el acceso de conexión remota segura SSH d.esde la máquina Windows 7 INTERNA.
- Desde la red INTERNA se podrá acceder al servicio Web y SSH de la DMZ.
- Desde la red PÚBLICA se podrá acceder sólo al servicio o página web del servidor de la DMZ.

<img width="695" height="309" alt="image" src="https://github.com/user-attachments/assets/242259f7-3a2e-4376-acef-19241b0c6952" />

---

## Realizar las pruebas necesarias para probar las reglas anteriormente descritas

<img width="706" height="664" alt="image" src="https://github.com/user-attachments/assets/afffe57d-d1a5-401f-b3cd-d7b2db891f2c" />

↓

<img width="707" height="325" alt="image" src="https://github.com/user-attachments/assets/1bd94df6-5224-4de5-b31c-ce599a9c6daa" />

### Desde internet lógicamente no se puede hacer ssh al router debian

<img width="706" height="598" alt="image" src="https://github.com/user-attachments/assets/91e1d59e-637a-457a-a9f4-6ed77dda31e7" />

---

## Muestra el resultado del comando iptables -L

<img width="704" height="263" alt="image" src="https://github.com/user-attachments/assets/2d0a3ba6-295c-4229-bf90-06c5a53dc783" />
























































































