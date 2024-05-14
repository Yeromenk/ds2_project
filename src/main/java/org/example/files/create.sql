CREATE TABLE film_category
(
    id_category_film int         not null primary key,
    name             VARCHAR(40) NOT NULL
);

CREATE TABLE film
(
    id_film        int           not null primary key,
    film_name      VARCHAR(50)   NOT NULL,
    director       VARCHAR(50)   NOT NULL,
    release_year   DATE          NOT NULL,
    duration       INTEGER       NOT NULL,
    description    VARCHAR(2000) NOT NULL,
    last_update    DATE          NOT NULL
);

CREATE TABLE actor
(
    id_actor       int         not null primary key,
    first_name     VARCHAR(40) NOT NULL,
    last_name      VARCHAR(40) NOT NULL,
    date_of_birth  DATE        NOT NULL,
    nationality    VARCHAR(40) NOT NULL
);

CREATE TABLE subscription
(
    id_subscription int         not null primary key,
    type            VARCHAR(40) NOT NULL,
    price           NUMBER(19,2)       NOT NULL,
    valid_from      DATE        NOT NULL,
    valid_to        DATE        NOT NULL
);

CREATE TABLE client
(
    id_client             int         not null primary key,
    first_name          VARCHAR(40) NOT NULL,
    last_name           VARCHAR(40) NOT NULL,
    email               VARCHAR(40) NOT NULL,
    password            VARCHAR(20) NOT NULL,
    phone_number        VARCHAR(20) NOT NULL,
    country             VARCHAR(40) NOT NULL,
    city                VARCHAR(40),
    street              VARCHAR(40),
    postal_code         VARCHAR(12),
    last_login          DATE        NOT NULL,
    id_subscription     INTEGER     NOT NULL,
    FOREIGN KEY (id_subscription) REFERENCES subscription (id_subscription)
);

CREATE TABLE film_rating
(
    rating             INTEGER       NOT NULL,
    comments            VARCHAR(1000) NOT NULL,
    rating_time        DATE          NOT NULL,
    id_film            INTEGER       NOT NULL,
    id_client               INTEGER       NOT NULL,
    FOREIGN KEY (id_film) REFERENCES film (id_film),
    FOREIGN KEY (id_client   ) REFERENCES client (id_client   )
);

CREATE TABLE Film_Actor
(
    id_film  INTEGER NOT NULL,
    id_actor INTEGER NOT NULL,
    PRIMARY KEY (id_film, id_actor),
    FOREIGN KEY (id_film) REFERENCES film (id_film),
    FOREIGN KEY (id_actor) REFERENCES actor (id_actor)
);



CREATE TABLE manager
(
    id_manager int         not null primary key,
    first_name VARCHAR(40) NOT NULL,
    last_name  VARCHAR(40) NOT NULL,
    login      VARCHAR(40) NOT NULL,
    password   VARCHAR(40) NOT NULL,
    email      VARCHAR(40) NOT NULL,
    id_film    INTEGER     NOT NULL,
    FOREIGN KEY (id_film) REFERENCES film (id_film)
);


CREATE TABLE Film_Categories
(
    id_film            INTEGER NOT NULL,
    id_category_film INTEGER NOT NULL,
    PRIMARY KEY (id_film, id_category_film),
    FOREIGN KEY (id_film) REFERENCES film (id_film),
    FOREIGN KEY (id_category_film) REFERENCES film_category (id_category_film)
);
