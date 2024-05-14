package org.example.ORM.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FilmCategoriesDAO {
    public void insertFilmCategory(int filmId, int categoryId, Connection connection) {
        String SQL = "INSERT INTO Film_Categories (id_film, id_category_film) VALUES (?, ?)";

        try (PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setInt(1, filmId);
            pstmt.setInt(2, categoryId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.err.println("Failed to insert film_categories: " + e.getMessage());
        }
    }
}
