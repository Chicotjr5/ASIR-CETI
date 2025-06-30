<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
<xs:element name="Recetario" type="tiporecetario"/>
<xs:complexType name="tiporecetario">
	<xs:sequence>
		<xs:element name="Autor" type="xs:string"/>
		<xs:element name="Receta" type="tiporeceta" maxOccurs="unbounded"/>
		<xs:element name="fecha" type="xs:string"/>
	</xs:sequence>
</xs:complexType>

<xs:complexType name="tiporeceta">
	<xs:sequence>
		<xs:element name="Nombre" type="xs:string"/>
		<xs:element name="Origen" type="xs:string"/>
		<xs:element name="Ingredientes" type="tipoingrediente"/>
		<xs:element name="Elaboracion" type="tipoelab"></xs:element>
		<xs:element name="Referencia"></xs:element>
	</xs:sequence>
	
		<xs:attribute name="tipo" type="xs:string" use="optional"></xs:attribute>
		<xs:attribute name="dificultad" use="optional">
			<xs:simpleType>
				<xs:restriction base="xs:string">
					<xs:enumeration value="fácil"/>
					<xs:enumeration value="Medio"/>
					<xs:enumeration value="Dificil"/>
				</xs:restriction>
			</xs:simpleType>
		</xs:attribute>
		<xs:attribute name="coste" use="optional">
			<xs:simpleType>
				<xs:restriction base="xs:string">
					<xs:enumeration value="Bajo"/>
					<xs:enumeration value="Medio"/>
					<xs:enumeration value="Alto"/>
				</xs:restriction>
			</xs:simpleType>
		</xs:attribute>

		<xs:attribute name="NivelCalorias" use="optional">
			<xs:simpleType>
				<xs:restriction base="xs:string">
					<xs:enumeration value="Bajo"/>
					<xs:enumeration value="Medio"/>
					<xs:enumeration value="Alto"/>
				</xs:restriction>
			</xs:simpleType>
		</xs:attribute>
</xs:complexType>

<xs:complexType name="tipoingrediente">
	<xs:sequence>
		<xs:element name="Ingrediente">
			<xs:complexType>
				<xs:sequence>
					<xs:element name="Nombre"></xs:element>
					<xs:element name="Cantidad"></xs:element>
				</xs:sequence>
				<xs:attribute name="medida" type="xs:string"/>				
			</xs:complexType>
		</xs:element>
	</xs:sequence>
</xs:complexType>

<xs:complexType name="tipoelab">
	<xs:sequence>
		<xs:element name="Paso" type="xs:string"/>
	</xs:sequence>
</xs:complexType>
	
</xs:schema>
