## Monitor de rendimiento


Para acceder al monitor de rendimiento, vamos a **Administrador del servidor>Monitor de rendimiento** y visualizamos el siguiente contenido:

<img width="898" height="316" alt="image" src="https://github.com/user-attachments/assets/27d399a0-6472-4057-8a7d-54f0161d85bf" />

Lo primero que vamos a hacer, será eliminar los contadores activos. 
Vamos a **Herramientas de supervisión>Monitor de rendimiento>Ver>Personalizar**.

<img width="630" height="133" alt="image" src="https://github.com/user-attachments/assets/ca1fccfb-3ded-4ffe-904d-bafd866d5652" />

Y para eliminarlos, pulsamos sobre el icono de la cruz roja rotado 45º grados: 

<img width="316" height="90" alt="image" src="https://github.com/user-attachments/assets/79c83ad3-4bb4-4fe0-8487-5ab48f5d15e4" />



### Crea tu propio contador

Una vez eliminado, vamos a crear el nuestro propio. 
Le daremos al logo de la cruz roja, pero de color verde>Agregar contadores.

<img width="224" height="48" alt="image" src="https://github.com/user-attachments/assets/50c40a4a-6ff6-400d-bc2b-fa4a325b9cdd" />

Y añadiremos los siguientes contadores: 

- Transferencias de disco
- Total de B
- % de bytes confirmados
- % de tiempo de procesador

<img width="579" height="437" alt="image" src="https://github.com/user-attachments/assets/d45f3232-10e7-42ba-a108-3c301257855f" />

<img width="578" height="439" alt="image" src="https://github.com/user-attachments/assets/5aadff6e-78d2-4c5e-9517-c9d51219e8dc" />

Y aquí tenemos el resultado

<img width="557" height="268" alt="image" src="https://github.com/user-attachments/assets/3c2bc9cb-8300-458b-b459-d9e000e66983" />

Además, a estos contadores, podemos cambiarle las propiedades

<img width="400" height="437" alt="image" src="https://github.com/user-attachments/assets/e029412d-457a-4ab9-8974-6a9a020f54df" />

---

### Recopilador de datos 

Para crear un nuevo recopilador de datos, vamos a **Recopiladores de datos>Definidos por el usuario>Nuevo>Conjunto de recopiladores de datos**.

<img width="762" height="71" alt="image" src="https://github.com/user-attachments/assets/ef75120a-d0e9-43c0-915c-f0ffa78295c4" />

Le daremos el nombre de **timepopag.**

<img width="265" height="149" alt="image" src="https://github.com/user-attachments/assets/4c509229-57fc-4f7d-8105-8dcbb46966ef" />

Diremos que queremos crear un contador de rendimiento. 

<img width="307" height="203" alt="image" src="https://github.com/user-attachments/assets/ff69bd1b-4bfe-4bf7-99eb-6eb899dc59a2" />

Y añadiremos los siguientes contadores:

<img width="408" height="309" alt="image" src="https://github.com/user-attachments/assets/9f598eec-361e-4140-9ea0-05f3765400a2" />

Almacenaremos los datos en la siguiente ruta

<img width="504" height="114" alt="image" src="https://github.com/user-attachments/assets/5216dbe4-30e9-4d0f-ac47-3830446d9721" />

Y lo iniciaremos ahora mismo

<img width="330" height="192" alt="image" src="https://github.com/user-attachments/assets/4133ae4c-d41e-4c23-83f1-9fc5cfebf49c" />

Y finalizará al día siguiente, a las 7:30 
Calculamos el tiempo y son 21 horas de duración. 

<img width="504" height="176" alt="image" src="https://github.com/user-attachments/assets/e777358b-366b-47c0-b467-7bfbfc7675cf" />

Para probar su funcionamiento, vamos a buscar en C:\ todos los archivos que empiecen por la letra H y podemos ver que el recopilador funciona.

<img width="834" height="400" alt="image" src="https://github.com/user-attachments/assets/86d71f60-e867-4410-9357-93af4f155ab6" />

Ahora, añadiremos los siguientes contadores: 

<img width="577" height="230" alt="image" src="https://github.com/user-attachments/assets/7f46aac0-db28-467c-a650-5845a7dd578a" />

Cambiaremos el color de los recopiladores y los escalaremos, para que no se salgan del gráfico.

<img width="546" height="112" alt="image" src="https://github.com/user-attachments/assets/5a36fe96-15e3-484c-ac0a-ab58f938ccc1" />

El siguiente paso es volver a buscar archivos en el explorador de archivos para volver a darle actividad al sistema. 

<img width="359" height="110" alt="image" src="https://github.com/user-attachments/assets/0df60d49-2ad3-4415-9bed-8efb14a565f2" />

Y cambiaremos el gráfico a un histograma.

<img width="712" height="220" alt="image" src="https://github.com/user-attachments/assets/d5ccd2b5-2bc3-43aa-9df4-eff42959c112" />

Observamos el recopilador de datos en modo informe.

<img width="525" height="277" alt="image" src="https://github.com/user-attachments/assets/ded5a2af-b571-4f94-aff5-cbe263636d51" />

Ahora detenemos el recopilador. 

<img width="204" height="83" alt="image" src="https://github.com/user-attachments/assets/0104be66-24f6-450f-8ad8-740a4109f4c8" />

Y visualizamos el monitor de rendimiento del primer punto, el cual se encuentra en la siguiente ruta:

<img width="516" height="264" alt="image" src="https://github.com/user-attachments/assets/770f21ea-4921-4370-9526-b5ff51352c5a" />

↓

<img width="475" height="524" alt="image" src="https://github.com/user-attachments/assets/513227ab-00b8-431a-8d6a-1811e6ad7bcc" />












































































