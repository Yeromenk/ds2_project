create or replace procedure ConfirmButton(
    p_id_film int,
    p_film_name varchar(255),
    p_director varchar(255),
    p_release_year int,
    p_duration int,
    p_description varchar(255),
    p_first_name varchar(255),
    p_last_name varchar(255),
    p_category_name varchar(255),
    p_id_actor int,
    p_id_category_film int
) as
begin
    IF NOT EXISTS (SELECT 1 FROM Film WHERE id_film = p_id_film) THEN
        INSERT INTO Film (id_film, film_name, director, release_year, duration, description)
        VALUES (p_id_film, p_film_name, p_director, p_release_year, p_duration, p_description);
    ELSE
        UPDATE Film
        SET film_name = p_film_name,
            director     = p_director,
            release_year  = p_release_year,
            duration       = p_duration,
            description = p_description
        WHERE id_film = p_id_film;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM Actor WHERE first_name = p_first_name AND last_name = p_last_name) THEN
        INSERT INTO Actor (first_name, last_name) VALUES (p_first_name, p_last_name);
    END IF;

    IF NOT EXISTS (SELECT 1 FROM Film_Category WHERE name = p_category_name) THEN
        INSERT INTO Film_Category (name) VALUES (p_category_name);
    END IF;

    INSERT INTO Film_Actor (id_film, id_actor)
    SELECT p_id_film, p_id_actor
    FROM Actor
    WHERE first_name = p_first_name
      AND last_name = p_last_name;

    INSERT INTO FILM_CATEGORIES (id_film, id_category_film)
    SELECT p_id_film, p_id_category_film
    FROM Film_Category
    WHERE name = p_category_name;
end;