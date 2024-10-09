

CREATE or UPDATE TABLE Usuarios (
id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(255) UNIQUE NOT NULL,
contraseña VARCHAR(255) NOT NULL CHECK (CHAR_LENGTH(contraseña) >= 8),
nombre VARCHAR(255) NOT NULL
);

create table Empleados (
id int primary key auto_increment,
usuarioid int not null,
salrio decimal(10,2) not null,
foreign key(usuaroid) references Usuarios(id)
	on delete cascade
	on update cascade
);