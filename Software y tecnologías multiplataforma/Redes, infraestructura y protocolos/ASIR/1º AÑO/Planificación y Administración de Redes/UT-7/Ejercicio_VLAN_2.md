## Crear con Packet Tracer la topología de redes virtuales que se muestra en la imagen. 

![image](https://github.com/user-attachments/assets/797aa0e7-440f-40b5-adc4-54ff17172614)

Una vez creada la topología de red, procedo a su configuración, que consiste en crear 2 VLAN.

**VLAN10**

![image](https://github.com/user-attachments/assets/cb9b4266-9c24-4ee1-bc6d-9e6863bde685)

**VLAN20**

![image](https://github.com/user-attachments/assets/828983b6-ae85-4192-80ba-9f9ac96ed804)

---

## Analiza la configuración IP que das a los interfaces F0/0 y F0/1 en el router 

Para que podamos tener comunicación entre ambas VLAN y permitir el enrutamiento entre ellas, tendremos que configurar los puertos del Router. 
Pero antes, habilitaremos un enlace troncal entre el switch y el router. 

![image](https://github.com/user-attachments/assets/30573747-bd38-4d9c-8de4-6e6b42bf697f)

Ahora, vamos con el router. 
Para la **VLAN 10** 

![image](https://github.com/user-attachments/assets/a5cf73f8-e776-4428-ac69-bd9297e246ed)

Configuramos un interface sin ip ni mascara, además de dejarlo encendido.

![image](https://github.com/user-attachments/assets/74d7997b-9a70-4895-a42d-a8034b03821a)

Configuramos un subinterfaz para el interface fa0/0 (VLAN 10) con un id VLAN de 10.


Para VLAN 30

![image](https://github.com/user-attachments/assets/ee8ab08e-9c85-473e-a6eb-5bb97ba4bbdb)

---

## Analizar la configuración IP que das al PC1 y PC3 

Le daremos a cada PC su IP correspondiente.


![image](https://github.com/user-attachments/assets/d715ef3b-8967-4fbc-9413-1c8c922c7412)

↓


![image](https://github.com/user-attachments/assets/fcd1f733-4eee-4ad1-8ba6-ebc7a300e16f)

---

## Comprueba que lo tienes bien configurado probando a mandar tráfico entre diferentes  VLANs  y viendo que hay comunicación

Para comprobar las IP de los interfaces y las VLAN: 

![image](https://github.com/user-attachments/assets/8466e554-a92c-4237-8e55-72c2f732cda8)

Para comprobar las rutas

![image](https://github.com/user-attachments/assets/aaa2f526-b23d-4c48-8a57-4803e384ebb5)

Para comprobar el enlace troncal entre el switch y el router.

![image](https://github.com/user-attachments/assets/e90e2fa8-9b9b-46fa-a41d-926eebb5f107)

Y por último, haremos una conexión desde el PC1 al PC3. 


![image](https://github.com/user-attachments/assets/95c09670-e64d-4e16-8345-e3a1fb4f36ae)

↓

![image](https://github.com/user-attachments/assets/f20f57b9-a5d6-4f6d-8082-6613f1e59482)
















































































