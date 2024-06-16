CREATE SCHEMA pair_prg_15junio;
USE pair_prg_15junio;

CREATE TABLE EMPLEADAS (
	id_empleada INT NOT NULL AUTO_INCREMENT,
    salario INT,
    nombre VARCHAR(20),
    apellidos VARCHAR(40),
    PRIMARY KEY (id_empleada)
);

CREATE TABLE personas (
	id INT NOT NULL,
    apellido VARCHAR(255),
    nombre VARCHAR(255),
    edad INT,
    CONSTRAINT `min_edad`
		CHECK (edad > 16),
    ciudad VARCHAR (255) DEFAULT 'Madrid'
    );

CREATE TABLE  empleadas_en_proyectos (
	id_empleada INT,
    id_proyecto INT NOT NULL,
    PRIMARY KEY (id_empleada,id_proyecto),
    FOREIGN KEY (id_empleada) REFERENCES empleadas(id_empleada) ON DELETE CASCADE
);

INSERT INTO empleadas (salario, nombre, apellidos)
VALUES (1800, "Belén", "Vargas Navarro"
);

INSERT INTO empleadas_en_proyectos (id_empleada,id_proyecto)
VALUES (1,1);

DELETE FROM empleadas
WHERE id_empleada = 1




    
    

    


