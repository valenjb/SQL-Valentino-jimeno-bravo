USE entregable;

-- 5 cursos con más unidades:
SELECT c.titulo, COUNT(u.unidad_id) AS num_unidades
FROM Cursos c
INNER JOIN Unidades u ON c.curso_id = u.curso_id
GROUP BY c.curso_id
ORDER BY num_unidades DESC
LIMIT 5;

-- media de unidades por curso:
SELECT c.titulo, AVG(num_unidades) AS media_unidades
FROM Cursos c
INNER JOIN (
    SELECT curso_id, COUNT(unidad_id) AS num_unidades
    FROM Unidades
    GROUP BY curso_id
) AS subquery ON c.curso_id = subquery.curso_id
GROUP BY c.titulo;

-- usuarios asociados a más de 3 cursos:
SELECT u.nombre, u.apellido
FROM Usuarios u
INNER JOIN Usuarios_Cursos uc ON u.usuario_id = uc.usuario_id
GROUP BY u.usuario_id
HAVING COUNT(uc.curso_id) > 3
ORDER BY u.nombre ASC;

-- 10 primeras clases q empiezan después de una fecha:
SELECT *
FROM Clases
WHERE fecha_inicio > '2023-03-01'
ORDER BY fecha_inicio ASC
LIMIT 10;

-- número de bloques por tipo para una clase específica:
SELECT tipo, COUNT(bloque_id) AS num_bloques
FROM Bloques
WHERE clase_id = 1 -- Cambia el ID de la clase según tu necesidad
GROUP BY tipo;

-- nombre y el apellido de los usuarios, cambiando null por vacio:
SELECT IFNULL(nombre, ''), IFNULL(apellido, '')
FROM Usuarios;

-- 3 cursos con la mayor cantidad de usuarios:
SELECT c.titulo, COUNT(uc.usuario_id) AS num_usuarios
FROM Cursos c
INNER JOIN Usuarios_Cursos uc ON c.curso_id = uc.curso_id
GROUP BY c.curso_id
ORDER BY num_usuarios DESC
LIMIT 3;

-- promedio de clases por unidad para cada curso:
SELECT c.titulo, AVG(num_clases) AS promedio_clases_por_unidad
FROM Cursos c
INNER JOIN (
    SELECT u.curso_id, COUNT(c.clase_id) AS num_clases
    FROM Unidades u
    INNER JOIN Clases c ON u.unidad_id = c.unidad_id
    GROUP BY u.curso_id
) AS subquery ON c.curso_id = subquery.curso_id
GROUP BY c.titulo;

-- usuarios con más de 2 cursos que comienzan después de una fecha:
SELECT u.nombre, u.apellido
FROM Usuarios u
INNER JOIN Usuarios_Cursos uc ON u.usuario_id = uc.usuario_id
INNER JOIN Cursos c ON uc.curso_id = c.curso_id
WHERE c.fecha_inicio > '2023-03-01' 
GROUP BY u.usuario_id
HAVING COUNT(uc.curso_id) > 2
ORDER BY u.nombre ASC;

-- 5 últimas unidades que comienzan después de una fecha:
SELECT *
FROM Unidades
WHERE fecha_inicio > '2023-03-01' -- Cambia la fecha según tu necesidad
ORDER BY fecha_inicio DESC
LIMIT 5;

-- número de usuarios por categoría para un curso específico:
SELECT u.categoria, COUNT(uc.usuario_id) AS num_usuarios
FROM Usuarios_Cursos uc
INNER JOIN Usuarios u ON uc.usuario_id = u.usuario_id
WHERE uc.curso_id = 1 -- Cambia el ID del curso según tu necesidad
GROUP BY u.categoria;
