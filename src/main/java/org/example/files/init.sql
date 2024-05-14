-- Вставляем данные фильмов
begin
    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (1, 'The Matrix', 'Lana Wachowski', TO_DATE('1999-03-24', 'YYYY-MM-DD'), 136,
            'A computer hacker learns about the true nature of his reality.', TO_DATE('2022-11-15', 'YYYY-MM-DD'));
    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (2, 'Inception', 'Christopher Nolan', TO_DATE('2010-07-16', 'YYYY-MM-DD'), 148,
            'A thief who enters the dreams of others to steal their secrets.', TO_DATE('2022-10-20', 'YYYY-MM-DD'));
    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (3, 'Pulp Fiction', 'Quentin Tarantino', TO_DATE('1994-10-14', 'YYYY-MM-DD'), 154,
            'Various interconnected stories in the criminal underworld.', TO_DATE('2022-09-25', 'YYYY-MM-DD'));
    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (4, 'The Shawshank Redemption', 'Frank Darabont', TO_DATE('1994-09-23', 'YYYY-MM-DD'), 142,
            'Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.',
            TO_DATE('2022-08-30', 'YYYY-MM-DD'));
    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (5, 'The Dark Knight', 'Christopher Nolan', TO_DATE('2008-07-18', 'YYYY-MM-DD'), 152,
            'Batman faces off against the Joker.',
            TO_DATE('2022-07-05', 'YYYY-MM-DD'));
    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (6, 'Forrest Gump', 'Robert Zemeckis', TO_DATE('1994-07-06', 'YYYY-MM-DD'), 142,
            'The life story of a man with a low IQ who manages to achieve great success.',
            TO_DATE('2022-06-10', 'YYYY-MM-DD'));
    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (7, 'The Godfather', 'Francis Ford Coppola', TO_DATE('1972-03-15', 'YYYY-MM-DD'), 175,
            'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
            TO_DATE('2022-05-15', 'YYYY-MM-DD'));
    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (8, 'Gladiator', 'Ridley Scott', TO_DATE('2000-05-01', 'YYYY-MM-DD'), 155,
            'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.',
            TO_DATE('2022-04-20', 'YYYY-MM-DD'));

    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (9, 'Inglourious Basterds', 'Quentin Tarantino', TO_DATE('2009-08-20', 'YYYY-MM-DD'), 153,
            'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner''s vengeful plans for the same.',
            TO_DATE('2022-03-25', 'YYYY-MM-DD'));

    INSERT INTO FILM (id_film, film_name, director, release_year, duration, description, last_update)
    VALUES (10, 'The Lord of the Rings', 'Peter Jackson', TO_DATE('2001-12-19', 'YYYY-MM-DD'), 178,
            'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',
            TO_DATE('2022-02-28', 'YYYY-MM-DD'));


--predplatne
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (1, 'Basic', 10.99, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'));
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (2, 'Premium', 19.99, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'));
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (3, 'VIP', 29.99, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'));
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (4, 'Basic', 10.99, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-01-31', 'YYYY-MM-DD'));
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (5, 'Premium', 19.99, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-01-31', 'YYYY-MM-DD'));
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (6, 'VIP', 29.99, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-01-31', 'YYYY-MM-DD'));
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (7, 'Basic', 10.99, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-02-28', 'YYYY-MM-DD'));
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (8, 'Premium', 19.99, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-02-28', 'YYYY-MM-DD'));
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (9, 'VIP', 29.99, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-02-28', 'YYYY-MM-DD'));
    INSERT INTO subscription (id_subscription, type, price, valid_from, valid_to)
    VALUES (10, 'Basic', 10.99, TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2023-03-31', 'YYYY-MM-DD'));


--uzivatel
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (1, 'John', 'Doe', 'john@example.com', 'password1', '1234567890', 'USA', 'New York', 'Broadway St', '10001',
            TO_DATE('2022-01-15', 'YYYY-MM-DD'), 1);
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (2, 'Alice', 'Smith', 'alice@example.com', 'password2', '9876543210', 'UK', 'London', 'Oxford St',
            'SW1A 1AA',
            TO_DATE('2022-02-20', 'YYYY-MM-DD'), 2);
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (3, 'Bob', 'Johnson', 'bob@example.com', 'password3', '5555555555', 'Canada', 'Toronto', 'Queen St',
            'M5H 2N2',
            TO_DATE('2022-03-25', 'YYYY-MM-DD'), 3);
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (4, 'Emily', 'Wilson', 'emily@example.com', 'password4', '1111111111', 'Australia', 'Sydney', 'George St',
            '2000',
            TO_DATE('2022-04-30', 'YYYY-MM-DD'), 1);
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (5, 'Michael', 'Brown', 'michael@example.com', 'password5', '2222222222', 'Germany', 'Berlin',
            'Friedrichstrasse',
            '10117', TO_DATE('2022-05-15', 'YYYY-MM-DD'), 2);
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (6, 'Sophia', 'Davis', 'sophia@example.com', 'password6', '3333333333', 'France', 'Paris', 'Champs-Élysées',
            '75008', TO_DATE('2022-06-20', 'YYYY-MM-DD'), 3);
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (7, 'William', 'Martinez', 'william@example.com', 'password7', '4444444444', 'Spain', 'Madrid', 'Gran Vía',
            '28013', TO_DATE('2022-07-25', 'YYYY-MM-DD'), 1);
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (8, 'Olivia', 'Lee', 'olivia@example.com', 'password8', '6666666666', 'Italy', 'Rome', 'Via del Corso',
            '00186',
            TO_DATE('2022-08-30', 'YYYY-MM-DD'), 2);
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (9, 'James', 'Garcia', 'james@example.com', 'password9', '7777777777', 'Japan', 'Tokyo', 'Shibuya',
            '150-0002',
            TO_DATE('2022-09-05', 'YYYY-MM-DD'), 3);
    INSERT INTO client (id_client, first_name, last_name, email, password, phone_number, country, city, street,
                        postal_code,
                        last_login, id_subscription)
    VALUES (10, 'Linda', 'Rodriguez', 'linda@example.com', 'password10', '9999999999', 'Brazil', 'Sao Paulo',
            'Avenida Paulista', '01311-000', TO_DATE('2022-10-10', 'YYYY-MM-DD'), 1);


-- Вставляем данные оценок фильмов
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (5, 'Great movie!', TO_DATE('2022-01-15', 'YYYY-MM-DD'), 1, 1);
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (4, 'Enjoyed it!', TO_DATE('2022-02-20', 'YYYY-MM-DD'), 2, 2);
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (4, 'Well done!', TO_DATE('2022-03-25', 'YYYY-MM-DD'), 3, 3);
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (5, 'Fantastic!', TO_DATE('2022-04-30', 'YYYY-MM-DD'), 4, 4);
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (3, 'Not bad.', TO_DATE('2022-05-15', 'YYYY-MM-DD'), 5, 5);
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (5, 'Amazing!', TO_DATE('2022-06-20', 'YYYY-MM-DD'), 6, 6);
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (4, 'Good one.', TO_DATE('2022-07-25', 'YYYY-MM-DD'), 7, 7);
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (5, 'Excellent!', TO_DATE('2022-08-30', 'YYYY-MM-DD'), 8, 8);
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (4, 'Impressive.', TO_DATE('2022-09-05', 'YYYY-MM-DD'), 9, 9);
    INSERT INTO film_rating (rating, comments, rating_time, id_film, id_client)
    VALUES (3, 'Could be better.', TO_DATE('2022-10-10', 'YYYY-MM-DD'), 10, 10);


--actor
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (1, 'Keanu', 'Reeves', to_Date('1964-09-02', 'YYYY-MM-DD'), 'Canadian');
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (2, 'Leonardo', 'DiCaprio', to_date('1974-11-11', 'YYYY-MM-DD'), 'American');
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (3, 'Samuel', 'L. Jackson', to_date('1948-12-21', 'YYYY-MM-DD'), 'American');
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (4, 'Morgan', 'Freeman', to_date('1937-06-01', 'YYYY-MM-DD'), 'American');
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (5, 'Tom', 'Hanks', to_date('1956-07-09', 'YYYY-MM-DD'), 'American');
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (6, 'Al', 'Pacino', to_date('1940-04-25', 'YYYY-MM-DD'), 'American');
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (7, 'Quentin', 'Tarantino', to_date('1963-03-27', 'YYYY-MM-DD'), 'American');
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (8, 'Christopher', 'Nolan', to_date('1970-07-30', 'YYYY-MM-DD'), 'British');
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (9, 'Martin', 'Scorsese', to_date('1942-11-17', 'YYYY-MM-DD'), 'American');
    INSERT INTO actor (id_actor, first_name, last_name, date_of_birth, nationality)
    VALUES (10, 'Peter', 'Jackson', to_date('1961-10-31', 'YYYY-MM-DD'), 'New Zealander');


--manazer
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (1, 'John', 'Doe', 'john_doe', 'password1', 'john.doe@example.com', 1);
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (2, 'Alice', 'Smith', 'alice_smith', 'password2', 'alice.smith@example.com', 2);
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (3, 'Bob', 'Johnson', 'bob_johnson', 'password3', 'bob.johnson@example.com', 3);
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (4, 'Eva', 'Brown', 'eva_brown', 'password4', 'eva.brown@example.com', 4);
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (5, 'Michael', 'Clark', 'michael_clark', 'password5', 'michael.clark@example.com', 5);
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (6, 'Olivia', 'White', 'olivia_white', 'password6', 'olivia.white@example.com', 6);
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (7, 'David', 'Martinez', 'david_martinez', 'password7', 'david.martinez@example.com', 7);
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (8, 'Sophia', 'Lee', 'sophia_lee', 'password8', 'sophia.lee@example.com', 8);
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (9, 'Daniel', 'Wilson', 'daniel_wilson', 'password9', 'daniel.wilson@example.com', 9);
    INSERT INTO manager (id_manager, first_name, last_name, login, password, email, id_film)
    VALUES (10, 'Emma', 'Taylor', 'emma_taylor', 'password10', 'emma.taylor@example.com', 10);

--film_category
    INSERT INTO film_category (id_category_film, name)
    VALUES (1, 'Action');
    INSERT INTO film_category (id_category_film, name)
    VALUES (2, 'Drama');
    INSERT INTO film_category (id_category_film, name)
    VALUES (3, 'Comedy');
    INSERT INTO film_category (id_category_film, name)
    VALUES (4, 'Sci-Fi');
    INSERT INTO film_category (id_category_film, name)
    VALUES (5, 'Horror');
    INSERT INTO film_category (id_category_film, name)
    VALUES (6, 'Adventure');
    INSERT INTO film_category (id_category_film, name)
    VALUES (7, 'Romance');
    INSERT INTO film_category (id_category_film, name)
    VALUES (8, 'Thriller');
    INSERT INTO film_category (id_category_film, name)
    VALUES (9, 'Animation');
    INSERT INTO film_category (id_category_film, name)
    VALUES (10, 'Fantasy');


--Film_actor
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (1, 1);
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (2, 2);
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (3, 3);
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (4, 4);
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (5, 5);
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (6, 6);
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (7, 7);
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (8, 8);
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (9, 9);
    INSERT INTO Film_actor (id_film, id_actor)
    VALUES (10, 10);


--Film_Categories
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (1, 1);
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (2, 2);
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (3, 3);
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (4, 4);
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (5, 5);
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (6, 6);
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (7, 7);
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (8, 8);
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (9, 9);
    INSERT INTO Film_Categories (id_film, id_category_film)
    VALUES (10, 10);
    commit;
end ;

select *
from film;
select *
from subscription;
select *
from client;
select *
from film_rating;
select *
from actor;
select *
from manager;
select *
from film_category;
select *
from Film_actor;
select *
from Film_Categories;


