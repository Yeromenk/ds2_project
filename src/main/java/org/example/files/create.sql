CREATE TABLE film_category
(
    id_category_film int           GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name             VARCHAR(40) NOT NULL
);

CREATE TABLE film
(
    id_film        int           GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    film_name      VARCHAR(50)   NOT NULL,
    director       VARCHAR(50)   NOT NULL,
    release_year   int          NOT NULL,
    duration       INTEGER       NOT NULL,
    description    VARCHAR(2000) NOT NULL
);

CREATE TABLE actor
(
    id_actor       int         GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name     VARCHAR(40) NOT NULL,
    last_name      VARCHAR(40) NOT NULL,
    date_of_birth  int        NOT NULL,
    nationality    VARCHAR(40) NOT NULL
);


CREATE TABLE Film_Actor
(
    id_film  INTEGER NOT NULL,
    id_actor INTEGER NOT NULL,
    PRIMARY KEY (id_film, id_actor),
    FOREIGN KEY (id_film) REFERENCES film (id_film),
    FOREIGN KEY (id_actor) REFERENCES actor (id_actor)
);

CREATE TABLE Film_Categories
(
    id_film            INTEGER NOT NULL,
    id_category_film INTEGER NOT NULL,
    PRIMARY KEY (id_film, id_category_film),
    FOREIGN KEY (id_film) REFERENCES film (id_film),
    FOREIGN KEY (id_category_film) REFERENCES film_category (id_category_film)
);

