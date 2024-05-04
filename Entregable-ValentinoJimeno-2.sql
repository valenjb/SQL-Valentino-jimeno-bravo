USE entregable;

INSERT INTO Usuarios (nombre, apellido, email, contrasena, categoria)
VALUES 
    ('Juan', 'Perez', 'juan@example.com', '123456', 'estudiante'),
    ('Maria', 'Gomez', 'maria@example.com', 'password', 'docente'),
    ('Carlos', 'Lopez', 'carlos@example.com', 'securepass', 'editor'),
    ('Laura', 'Martinez', 'laura@example.com', 'p@ssw0rd', 'administrador'),
    ('Pedro', 'Rodriguez', 'pedro@example.com', 'password1', 'estudiante'),
    ('Ana', 'Sanchez', 'ana@example.com', 'password2', 'docente'),
    ('Sofia', 'Diaz', 'sofia@example.com', 'password3', 'editor'),
    ('Luis', 'Gonzalez', 'luis@example.com', 'password4', 'administrador'),
    ('Marta', 'Ruiz', 'marta@example.com', 'password5', 'estudiante'),
    ('Diego', 'Hernandez', 'diego@example.com', 'password6', 'docente');

INSERT INTO Usuarios (nombre, apellido, email, contrasena, categoria)
VALUES 
	('Pablo', NULL, 'juan@example.com', '123452', 'estudiante'),
    ('Valentino', NULL, 'maria@example.com', 'pasrword', 'docente'),
    (Null, 'Lopez', 'carlos@example.com', 'securebass', 'editor'),
    (NULL, NULL, 'luis@example.com', 'pasaword4', 'administrador');
    
INSERT INTO Cursos (titulo, descripcion, imagen, fecha_inicio, fecha_fin, cupo_maximo)
VALUES 
    ('Curso de Programación en SQL', 'Aprende SQL desde cero', 'imagen_sql.jpg', '2024-01-01', '2024-02-01', 50),
    ('Curso de Python', 'Introducción a la programación en Python', 'imagen_python.jpg', '2024-02-01', '2024-03-01', 40),
    ('Curso de Diseño Web', 'Aprende a diseñar sitios web modernos', 'imagen_web.jpg', '2024-03-01', '2024-04-01', 30),
	('Curso de Machine Learning', 'Introducción al aprendizaje automático', 'imagen_ml.jpg', '2024-04-01', '2024-05-01', 20),
    ('Curso de Desarrollo de Aplicaciones Móviles', 'Desarrollo de aplicaciones para dispositivos móviles', 'imagen_app.jpg', '2024-05-01', '2024-06-01', 25);
    
INSERT INTO Unidades (curso_id, titulo, descripcion, fecha_inicio)
VALUES 
    (1, 'Unidad 1 - Introducción', 'Introducción a SQL', '2024-01-01'),
    (1, 'Unidad 2 - Consultas básicas', 'Consultas básicas en SQL', '2024-01-15'),
    (1, 'Unidad 3 - Consultas avanzadas', 'Consultas avanzadas en SQL', '2024-01-30'),
    (1, 'Unidad 4 - Procedimientos almacenados', 'Procedimientos almacenados en SQL', '2024-02-15'),
    (1, 'Unidad 5 - Transacciones', 'Transacciones en SQL', '2024-02-29'),
    (2, 'Unidad 1 - Fundamentos de Python', 'Introducción a Python', '2024-02-01'),
    (2, 'Unidad 2 - Estructuras de datos', 'Manejo de estructuras de datos en Python', '2024-02-15'),
    (2, 'Unidad 3 - Programación orientada a objetos', 'Conceptos de POO en Python', '2024-02-29'),
    (3, 'Unidad 1 - Fundamentos de Diseño Web', 'Conceptos básicos de diseño web', '2024-03-01'),
    (3, 'Unidad 2 - HTML y CSS', 'Desarrollo web con HTML y CSS', '2024-03-15'),
    (3, 'Unidad 3 - JavaScript', 'Introducción a JavaScript', '2024-03-30'),
    (3, 'Unidad 4 - Frameworks de desarrollo web', 'Uso de frameworks para desarrollo web', '2024-04-15'),
    (4, 'Unidad 1 - Introducción al Machine Learning', 'Conceptos básicos de Machine Learning', '2024-04-01'),
    (4, 'Unidad 2 - Algoritmos de Machine Learning', 'Algoritmos comunes en Machine Learning', '2024-04-15'),
    (4, 'Unidad 3 - Aplicaciones prácticas de Machine Learning', 'Aplicaciones prácticas en la vida real', '2024-04-30'),
    (5, 'Unidad 1 - Introducción al Desarrollo de Aplicaciones Móviles', 'Conceptos básicos de desarrollo móvil', '2024-05-01'),
    (5, 'Unidad 2 - Diseño de interfaces de usuario', 'Principios de diseño de UI/UX', '2024-05-15'),
    (5, 'Unidad 3 - Implementación de funcionalidades', 'Desarrollo de funcionalidades específicas', '2024-05-30');

INSERT INTO Usuarios_Cursos (usuario_id, curso_id)
VALUES 
    (1, 1), (2, 1), (3, 1), (4, 1),
    (5, 2), (6, 2), (7, 2), (8, 2),
    (1, 4), (2, 4), (3, 4), (4, 4),
    (5, 5), (6, 5), (7, 5), (8, 5),
    (9, 3), (10, 3);
    
INSERT INTO Usuarios_Cursos (usuario_id, curso_id)
VALUES 
     -- Usuario 1: Asociado a 4 cursos
     (1, 2), (1, 3),
    -- Usuario 2: Asociado a 4 cursos
    (2, 2), (2, 3), 
    -- Usuario 3: Asociado a 4 cursos
    (3, 2), (3, 3), (3, 5),
    -- Usuario 4: Asociado a 3 cursos
    (4, 2), (4, 3),
    -- Usuario 5: Asociado a 3 cursos
    (5, 3), (5, 4);

INSERT INTO Clases (unidad_id, titulo, descripcion, fecha_inicio, visibilidad)
VALUES 
    -- Unidad 1 de SQL
    (1, 'Clase 1 - Introducción a SQL', 'Introducción a SQL', '2024-01-01', true),
    (1, 'Clase 2 - Consultas básicas', 'Consultas básicas en SQL', '2024-01-08', true),
    (1, 'Clase 3 - Joins', 'Uso de Joins en SQL', '2024-01-15', true),
    -- Unidad 2 de SQL
    (2, 'Clase 1 - Subconsultas', 'Uso de subconsultas en SQL', '2024-01-15', true),
    (2, 'Clase 2 - Funciones de agregación', 'Funciones de agregación en SQL', '2024-01-22', true),
    (2, 'Clase 3 - Procedimientos almacenados', 'Creación y uso de procedimientos almacenados', '2024-01-29', true),
    -- Unidad 3 de SQL
    (3, 'Clase 1 - Transacciones', 'Gestión de transacciones en SQL', '2024-01-30', true),
    (3, 'Clase 2 - Disparadores', 'Uso de disparadores en SQL', '2024-02-05', true),
    (3, 'Clase 3 - Optimización de consultas', 'Optimización de consultas SQL', '2024-02-12', true),
    -- Unidad 1 de Python
    (4, 'Clase 1 - Introducción a Python', 'Conceptos básicos de Python', '2024-02-01', true),
    (4, 'Clase 2 - Variables y tipos de datos', 'Variables y tipos de datos en Python', '2024-02-08', true),
    (4, 'Clase 3 - Estructuras de control', 'Estructuras de control en Python', '2024-02-15', true),
    -- Unidad 2 de Python
    (5, 'Clase 1 - Listas', 'Uso de listas en Python', '2024-02-15', true),
    (5, 'Clase 2 - Tuplas y diccionarios', 'Uso de tuplas y diccionarios en Python', '2024-02-22', true),
    (5, 'Clase 3 - Funciones', 'Definición y uso de funciones en Python', '2024-02-29', true),
    -- Unidad 1 de Diseño Web
    (9, 'Clase 1 - Introducción a HTML', 'Fundamentos de HTML', '2024-03-01', true),
    (9, 'Clase 2 - Introducción a CSS', 'Fundamentos de CSS', '2024-03-08', true),
    (9, 'Clase 3 - Diseño responsivo', 'Diseño web responsivo', '2024-03-15', true);

INSERT INTO Bloques (clase_id, titulo, tipo, contenido, visibilidad)
VALUES 
    -- Clases de SQL
    (1, 'Introducción a SQL', 'texto', 'En esta clase aprenderás los fundamentos de SQL.', true),
    (1, 'Video Introducción', 'video', 'https://www.youtube.com/watch?v=abcd123', true),
    (1, 'Presentación Introducción', 'presentacion', 'slides_introduccion.pdf', true),
    -- Clases de Python
    (4, 'Variables y tipos de datos', 'texto', 'En esta clase aprenderás sobre variables y tipos de datos en Python.', true),
    (4, 'Video Variables y tipos de datos', 'video', 'https://www.youtube.com/watch?v=efgh456', true),
    (4, 'PDF Variables y tipos de datos', 'pdf', 'variables_tipos_datos.pdf', true),
    -- Clases de Diseño Web
    (9, 'HTML básico', 'texto', 'En esta clase aprenderás los fundamentos de HTML.', true),
    (9, 'Video HTML básico', 'video', 'https://www.youtube.com/watch?v=ijkl789', true),
    (9, 'PDF HTML básico', 'pdf', 'html_basico.pdf', true);
