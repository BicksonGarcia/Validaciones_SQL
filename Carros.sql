#Alan Rene Lopez Lucas - IN5AM - 28/1/2022 - Calculo

Drop database if exists DBTarea1_2018459;
Create database DBTarea1_2018459;

Use DBTarea1_2018459;

Create table Vecinos(
	DPI bigint(13) not null,
    nombres varchar(50) not null,
    apellidos varchar(50) not null,
    domicilio varchar(150) not null,
    fechaNacimiento date not null,
    sexo char not null,
    primary key PK_DPI (DPI)
);

Create table Vehiculos(
	placa varchar(8) not null,
    marca varchar(20) not null,
    linea varchar(25) not null,
    modelo varchar(4) not null,
    color varchar(25) not null,
    VIN varchar(17) not null,
    DPI bigint not null,
    primary key PK_placa (placa),
    constraint FK_Vehiculos_Vecinos
		foreign key (DPI) references Vecinos(DPI)
);

-- ------------------- Agregar ----------------------
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('2015468879102', 'Juan Antonio', 'Gonzales Cabria', 'Zona 13, Colonia Perez 1C 11-30', '1996-01-16', 'M');
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('5847755212369', 'Irving Aspyn', 'Perez Lopez', 'Zona 12, Villa Angeles 13C 12-10', '1995-03-26', 'M');
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('2015542235884', 'Brooks Nickolaus', 'Oleski Corrado', 'Zona 14, Residencial  San Pablo 8-7', '1989-11-3', 'M');
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('2033658845998', 'Evelia Dina', 'Karff Gamblin', 'Zona 11, 20Av 11-15 Edificio 1', '1993-04-12', 'F');
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('1652825475963', 'Isbel Marcie', 'Barger Littlejohn', 'Zona 9, Colonia Tartaro 2', '1984-10-06', 'F');
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('1205258578878', 'Hilde Aretas', 'Shreve Gonzalez', 'Zona 1, Colonia Perez 1C 11-30', '1991-12-24', 'M');
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('3605588787548', 'Marcela Jimena', 'Boari Patton', 'Zona 3, Colonia Perez 1C 11-30', '1987-03-02', 'F');
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('3255412420222', 'Nance Marcus', 'Berkowitz Agostinelli', 'Zona 4, Colonia Perez 1C 11-30', '1988-07-22', 'M');
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('3665858754821', 'Sarah Marcela', 'Kelsch Stranberg', 'Zona 5, Colonia Perez 1C 11-30', '1999-05-27', 'F');
Insert into Vecinos(DPI, nombres, apellidos, domicilio, fechaNacimiento, sexo)
	values('2588955474585', 'Aaron Segismundo', 'Matta Aguilar', 'Zona 6, Colonia Perez 1C 11-30', '1998-02-15', 'M');
    
    
-- ------------------- Agregar ----------------------
    
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P123AT', 'BMW', 'BMW1Series', '2020', 'Celeste', '1HGBH41JXMNN10918', '2015468879102');
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P813HYN', 'BMW', 'BMW2 Series Gran Coupe', '2021', 'Celeste', '5YJSA1DG9DFP14705', '5847755212369');
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P364HQN', 'BMW', 'BMW 3 Series Sedan', '2021', 'Celeste', 'THMBB709WD114221', '2015542235884');
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P216FMV', 'BMW', 'BMW X1', '2019', 'Celeste', '1G1JD6SH9J4126861', '2033658845998');
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P518FGV', 'Audio', 'Q3', '2019', 'Blanco', '7J3ZZ56T783450000', '1652825475963');
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P516DJH', 'Audi', 'Q4 e-tron', '2019', 'Blanco', '3FADP4EJ9BM156937', '1205258578878');
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P666HDP', 'Audi', 'A4', '2020', 'Blanco', 'JT152EEA100302159', '3605588787548');
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P001BBB', 'Toyota', 'Yaris Hatchback', '2021', 'Negro', '4ZEDT1622C1200000', '3255412420222');
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P001SAT', 'Toyota', 'Yaris GR', '2021', 'Negro', '1GCHC29DX6E000001', '3665858754821');
Insert into Vehiculos (placa, marca, linea, modelo, color, VIN, DPI)
	values('P492GZC', 'Toyota', 'Corolla', '2022', 'Negro', 'WVGZZZ5NZJM131395', '2588955474585');

-- ------------------ Listar ----------------

select 	
	V.DPI,
	V.nombres,
	V.apellidos,
	V.fechaNacimiento,
	V.sexo
	from Vecinos V;
    
        
select 
	C.placa,
	C.marca,
	C.linea,
	C.modelo,
	C.color,
	C.VIN,
	C.DPI
	from Vehiculos C;
    
-- --------------------- REGISTRO MAYOR DE EDAD ---------------


Select 
	V.fechaNacimiento, 
    V.DPI, 
    V.nombres, 
    V.apellidos, 
    V.domicilio, 
    V.sexo
	from Vecinos V
		Where V.fechaNacimiento = (
			select MIN( fechaNacimiento ) from Vecinos V);

-- --------------------- REGISTRO MENOR DE EDAD ---------------

Select 
	V.fechaNacimiento, 
    V.DPI, 
    V.nombres, 
    V.apellidos, 
    V.domicilio, 
    V.sexo
	from Vecinos V
		where V.fechaNacimiento = (
			select MAX( fechaNacimiento ) from Vecinos V);


-- -------------- Vehiculos por cada Color ----------------
select Color, count(Placa) from Vehiculos group by Color;
select Color, count(Placa) from Vehiculos group by Color;

-- ---------------- Cantidad de registros por color rojo ------------------

select count(placa) 
	from Vehiculos;

-- ---------------- Cantidad de registros por entidad ------------------
select count(DPI) 
	from Vecinos;


    
    
    
    
    
    
    
    
    