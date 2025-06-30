## A partir del código HTML proporcionado, añadir las reglas CSS necesarias para que la página resultante tenga el mismo aspecto que el de la siguiente imagen_

![image](https://github.com/user-attachments/assets/4c12c348-c703-4b8d-b4dd-ab72dc3b5b84)


```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/
DTD/xhtml1-strict.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title> Ejercicio de selectores</title>
	<style type="text/css">
	table, tr, td{border:1px solid black;}
	h1{color:teal;}
	h2{color:blue;}
	strong{color:red;}
	span.destacado{color:orange;}
	td>strong{color:orange;}
	th{color:orange;}
	a{color:orange;}
	th.especial{color:blue;}
	#especial{color:purple;}
	#adicional{color:green;}
	#adicional>p>a{color:olive;}
	
	</style>
	
</head>
<body>
	<h1 id="titulo">La programacion orientada a objetos</h1>
		<p> La programaci&oacute;n orientada a objetos expresa un programa como<strong> un conjunto de estos objetos</strong>, 
		que colaboran entre ellos para realizar tareas.
		 Esto permite hacer los programas y m&oacute;dulos<span class="destacado"> m&aacute;s f&aacute;ciles de escribir, mantener y reutilizar. </span>
		</p>

	<h2 id="subtitulo">Es decir</h2>
		<p>
		De esta forma, un objeto contiene toda la informaci&oacute;n que permite definirlo e identificarlo frente a otros objetos pertenecientes a otras clases e incluso frente a objetos de una misma clase, al poder tener valores bien diferenciados en sus atributos. 
		A su vez, los objetos disponen de mecanismos de interacci&oacute;n llamados  <a href="#"><em>m&eacute;todos</em>,  </a> que favorecen la comunicaci&oacute;n 
		entre ellos. Esta comunicaci&oacute;n favorece a su vez el cambio de estado en los propios objetos. Esta caracter&iacute;stica lleva a tratarlos como<span class="especial"> unidades indivisibles</span>, en las que no se separan ni deben separarse el estado y el comportamiento.
		</p>

		<table summary="Descripci&oacute;n de la tabla y su contenido">
			<caption>Conceptos fundamentales</caption>
			<thead>
				<tr>
					<th scope="col" class="especial">Concepto</th>
					<th scope="col" class="especial">Definici&oacute;n</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th scope="col">Concepto</th>
					<th scope="col">Definici&oacute;n</th>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td> Clase:</td>
					<td> definiciones de las propiedades y comportamiento de un tipo de <em>objeto</em> concreto</td>
				</tr>
				<tr>
					<td> Herencia </td>
					<td> Es la facilidad mediante la cual la clase D <strong>hereda</strong> en ella cada uno de los atributos y operaciones de C</td>

				</tr>
				<tr>
					<td> Objeto </td>
					<td> Instancia de una clase</td>
				</tr>
			</tbody>
		</table>
	<div id="adicional">
		<p><span>Encapsulamiento:</span> Significa reunir a todos los elementos que pueden considerarse pertenecientes a una misma entidad, 
		al mismo nivel de abstracci&oacute;n. Esto permite aumentar la cohesi&oacute;n de los componentes del sistema. Algunos autores confunden este concepto
		 con el principio de ocultaci&oacute;n, principalmente porque se suelen emplear conjuntamente. </p>
		<p>Cada objeto est&aacute; aislado del exterior, es un m&oacute;dulo natural, y cada tipo de objeto expone una interfaz a otros objetos que especifica 
		c&oacute;mo pueden interactuar con los objetos de la clase. <span id="especial">El aislamiento protege a las propiedades de un objeto contra
		 su modificaci&oacute;n </span>, por quien no tenga derecho a acceder a ellas, solamente los propios m&eacute;todos internos del objeto pueden acceder 
		 a su estado. Esto asegura que otros objetos no pueden cambiar el estado interno de un objeto de maneras inesperadas, eliminando efectos 
		 secundarios e interacciones inesperadas. Algunos<a href="#"> lenguajes</a>, relajan esto, permitiendo un acceso directo a los datos internos del objeto de una manera controlada y limitando el grado de abstracci&oacute;n. La aplicaci&oacute;n entera se reduce a un agregado o rompecabezas de objetos.</p>
	</div>
</body>
```
</html>




