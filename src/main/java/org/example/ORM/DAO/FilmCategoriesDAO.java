package org.example.ORM.DAO;

import org.example.ORM.DTO.Film;
import org.example.ORM.DTO.Film_Category;
import org.example.ORM.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FilmCategoriesDAO {
    public void insertFilmCategory(Film film, Film_Category film_category) {
        String SQL = "INSERT INTO film_categories (ID_FILM, ID_CATEGORY_FILM) select ?, ? from FILM_CATEGORY where NAME = ?";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SQL)) {

            pstmt.setInt(1, film.getIdFilm());
            pstmt.setInt(2, film_category.getId_category_film());

            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
