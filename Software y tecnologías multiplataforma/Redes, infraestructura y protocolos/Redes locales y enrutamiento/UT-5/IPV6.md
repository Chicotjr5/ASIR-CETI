## Enunciado

Genera el siguiente diseño lógico de red

![image](https://github.com/user-attachments/assets/15151dfa-e5d6-4b86-81f9-b962f5da2a4a)

A partir de él y con los datos que se te muestran realiza las siguientes asignaciones de direcciones IPv6 globales

- Asignación estática a las interfaces del router y de los PCs y mostrar resultados de la asignación mediante comandos y entorno PKT (pasando el puntero por el equipo), tanto en el router como en los PCs. Guarda el fichero como asig-estatica.
- Asignación estática con EUI-64 y mostrar resultados de la asignación mediante comandos y entorno PKT, tanto en el router como en los PCs. Guarda el fichero como asig-estatica-EUI64
- Asignación dinámica sin estado con EUI-64 y mostrar resultados de la asignación mediante comandos, tanto en el router como en los PCs. Guarda el fichero como asigdinamicasin DHCP

---

## Asignación estática

Primero, asignaremos estáticamente una IPV6  a los equipos. 
PC:

![image](https://github.com/user-attachments/assets/4d03ec01-2a1d-42f6-9f5e-48ab6e053c87)

Y para configurar los interfaces del router, usaremos los comandos: 

```bash
ipv6 unicast-routing # Habilita IPV6 de forma global en el dispositivo
enable ipv6 # Habilita el procesado  y envio de paquetes IPV6  
ipv6 address # Añade una dirección IPv6 a la interfaz 
```

Ahora veremos como se ha quedado la configuración de cada dispositivo.

![image](https://github.com/user-attachments/assets/30c1eba9-c746-40c8-8613-cf2907c7ee3e)

↓

![image](https://github.com/user-attachments/assets/098325c7-5212-4677-baf4-f61664d2f503)

**Router**

![image](https://github.com/user-attachments/assets/948d8f25-9386-475f-83c4-d70556abc631)

↓

![image](https://github.com/user-attachments/assets/7732020b-f264-4f64-a7e2-fabf6c884d1d)

**PC0**

![image](https://github.com/user-attachments/assets/970133f8-0cac-43ca-9bb0-d4ad0ee8aa6e)

**PC1**

![image](https://github.com/user-attachments/assets/ae292b42-bcc5-4c2c-b25c-a403edfc84f6)

---

## Asignación estática con Eui-64

Ahora, vamos a la configuración IP de los PC y les asignamos una IPv6 **Auto-Config** para que el router se la asigne. 
Pero antes de eso, configuramos los interfaces del router.

![image](https://github.com/user-attachments/assets/8e43bfed-309f-49ea-9269-b78297cc73f4)

Y vemos que a los PC se les asigno una IPv6. 

![image](https://github.com/user-attachments/assets/f934341a-3758-4956-a308-dac3fb0c5dd1)

↓

![image](https://github.com/user-attachments/assets/142527a2-6287-4123-9e8a-eace3feafc65)

Y ahora veremos los resultados

**Router**

![image](https://github.com/user-attachments/assets/eb05d44b-9aee-4b5d-8567-08f438f5c93e)

↓

![image](https://github.com/user-attachments/assets/2cceea7a-1bff-406c-bc88-ecc7c58eaea8)

**PC0**

![image](https://github.com/user-attachments/assets/ec087be4-4925-44e5-962f-d5ee58fde189)

**PC1**

![image](https://github.com/user-attachments/assets/807e2efd-a5f1-49f4-9392-faa678c22c9a)


## Asignación dinámica sin estado con EUI-64

Ahora, vamos a hacer que los equipos manden un mensaje al router, para que este les asigne una dirección IPv6. 
Para empezar, tenemos que dejar configurar las interfaces del router. 

![image](https://github.com/user-attachments/assets/46489555-707e-498a-b844-267c5c6803e3)

Los equipos los dejamos en **Auto-Config**.

![image](https://github.com/user-attachments/assets/872a3088-3675-4bd0-93f5-5dd859094868)

↓

![image](https://github.com/user-attachments/assets/482de2ba-8ba6-4dcd-b4fd-15cbe46c92db)

Esto hará que se mande un paquete NDP y el router responderá indicando el prefijo global de la red, ID de subred, la longitud del prefijo y la IP del Gateway por defecto. 

![image](https://github.com/user-attachments/assets/1b16a3b9-e12b-478c-8cb5-dec2f32344ef)

Si ahora vamos a la configuración de los equipos, veremos como el router les ha asignado un IPv6 y una Gateway. 

**PC0**

![image](https://github.com/user-attachments/assets/595b1491-af9a-49cd-afb8-65665ded352f)

**PC1**

![image](https://github.com/user-attachments/assets/f78483d7-3543-431c-85fd-ddd5fce26070)

**Router**

![image](https://github.com/user-attachments/assets/72722124-902e-41bf-960f-fd3288ecca25)

↓

![image](https://github.com/user-attachments/assets/3ed1183a-9f63-493b-8166-a73d7998b9ca)
