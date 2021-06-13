\c postgres
DROP DATABASE peliculas

CREATE DATABASE peliculas
\c peliculas
CREATE TABLE peliculas(
    id SERIAL,
    peliculas VARCHAR8,
    año INT,
    director VARCHAR,
    PRIMARY KEY(id) 
);

CREATE TABLE reparto(
    id_peliculas INT,
    actor VARCHA,
    FOREIGN KEY(id_pelicuñas) REFERENCES peliculas(id)
);

-- cargar archivo


\copy peliculas FROM './peliculas.csv' csv header;

\copy reparto FROM './reparto.csv' csv header;