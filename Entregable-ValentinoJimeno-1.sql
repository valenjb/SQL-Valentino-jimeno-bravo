USE entregable;

CREATE TABLE Usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    contrasena VARCHAR(100),
    categoria ENUM('estudiante', 'docente', 'editor', 'administrador')
);


CREATE TABLE Cursos (
    curso_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    descripcion TEXT,
    imagen VARCHAR(255),
    fecha_inicio DATE,
    fecha_fin DATE,
    cupo_maximo INT
);


CREATE TABLE Unidades (
    unidad_id INT AUTO_INCREMENT PRIMARY KEY,
    curso_id INT,
    titulo VARCHAR(100),
    descripcion TEXT,
    fecha_inicio DATE,
    FOREIGN KEY (curso_id) REFERENCES Cursos(curso_id)
);

CREATE TABLE Usuarios_Cursos (
    usuario_id INT,
    curso_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(curso_id),
    PRIMARY KEY (usuario_id, curso_id)
);

CREATE TABLE Clases (
    clase_id INT AUTO_INCREMENT PRIMARY KEY,
    unidad_id INT,
    titulo VARCHAR(100),
    descripcion TEXT,
    fecha_inicio DATE,
    visibilidad BOOLEAN,
    FOREIGN KEY (unidad_id) REFERENCES Unidades(unidad_id)
);

CREATE TABLE Bloques (
    bloque_id INT AUTO_INCREMENT PRIMARY KEY,
    clase_id INT,
    titulo VARCHAR(100),
    tipo ENUM('texto', 'video', 'presentacion', 'PDF', 'archivo'),
    contenido TEXT,
    visibilidad BOOLEAN,
    FOREIGN KEY (clase_id) REFERENCES Clases(clase_id)
);