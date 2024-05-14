package org.example;

import org.example.ORM.DAO.ActorDAO;
import org.example.ORM.DAO.FilmDAO;
import org.example.ORM.DAO.Film_CategoryDAO;
import org.example.ORM.DTO.Actor;
import org.example.ORM.DTO.Film;
import org.example.ORM.DTO.Film_Category;
import org.example.ORM.Database;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Connection connection = null;
        Scanner scanner = new Scanner(System.in);

        try {
            Database database = new Database();
            connection = database.getConnection();
            connection.setAutoCommit(false);

            System.out.println("Enter Film name:");
            String filmName = scanner.nextLine();
            System.out.println("Enter Director:");
            String director = scanner.nextLine();
            System.out.println("Enter Release year:");
            int releaseYear = Integer.parseInt(scanner.nextLine());
            System.out.println("Enter Duration:");
            int duration = Integer.parseInt(scanner.nextLine());
            System.out.println("Enter Description:");
            String description = scanner.nextLine();


            FilmDAO filmDAO = new FilmDAO();
            int filmId = filmDAO.insertFilm(new Film(0, filmName, director, releaseYear, duration, description), connection);
            if (filmId == -1) {
                connection.rollback();
                throw new RuntimeException("Failed to insert film");
            }

            System.out.println("Enter Actor first name:");
            String firstName = scanner.nextLine();
            System.out.println("Enter Actor last name:");
            String lastName = scanner.nextLine();
            System.out.println("Enter Actor nationality:");
            String nationality = scanner.nextLine();

            ActorDAO actorDAO = new ActorDAO();
            int actorId = actorDAO.insertActor(new Actor(0, firstName, lastName, 0, nationality), connection);
            if (actorId == -1) {
                connection.rollback();
                throw new RuntimeException("Failed to insert actor");
            }

            System.out.println("Enter Category name:");
            String categoryName = scanner.nextLine();

            Film_CategoryDAO filmCategoryDAO = new Film_CategoryDAO();
            int categoryId = filmCategoryDAO.insertFilm_Category(new Film_Category(0, categoryName), connection);
            if (categoryId == -1) {
                connection.rollback();
                throw new RuntimeException("Failed to insert category");
            }

            connection.commit();
            System.out.println("Categories, film and actors inserted successfully");

        } catch (SQLException e) {
            System.out.println("Database operation failed: " + e.getMessage());
            try {
                connection.rollback();
            } catch (SQLException ex) {
                System.out.println("Failed to rollback transaction: " + ex.getMessage());
            }
        } catch (RuntimeException e) {
            System.out.println(e.getMessage());
            try {
                if (connection != null) connection.rollback();
            } catch (SQLException ex) {
                System.out.println("Failed to rollback transaction: " + ex.getMessage());
            }
        } finally {
            scanner.close();
            if (connection != null) {
                try {
                    connection.setAutoCommit(true);
                    connection.close();
                } catch (SQLException e) {
                    System.out.println("Failed to close the database connection: " + e.getMessage());
                }
            }
        }
    }
}