CREATE TABLE usuarios (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Tabla de películas
CREATE TABLE peliculas (
    pelicula_id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    descripcion TEXT,
    anio_lanzamiento INT
);

-- Tabla de calificaciones
CREATE TABLE calificaciones (
    calificacion_id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuarios(usuario_id) ON DELETE CASCADE,
    pelicula_id INT REFERENCES peliculas(pelicula_id) ON DELETE CASCADE,
    calificacion INT CHECK (calificacion BETWEEN 1 AND 5)
);
