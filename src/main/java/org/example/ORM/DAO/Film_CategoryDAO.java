package org.example.ORM.DAO;

import org.example.ORM.Database;
import org.example.ORM.DTO.Film_Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Film_CategoryDAO {
    public int insertFilm_Category(Film_Category film_category, Connection connection) {
        String SQL = "INSERT INTO film_category (name) VALUES (?)";

        try (PreparedStatement pstmt = connection.prepareStatement(SQL, new String[]{"ID_CATEGORY_FILM"})) {

            pstmt.setString(1, film_category.getName());

            int affectedRows = pstmt.executeUpdate();

            if (affectedRows > 0) {
                try (ResultSet rs = pstmt.getGeneratedKeys()) {
                    if (rs.next()) {
                        return rs.getInt(1);
                    }
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.err.println("Failed to insert category: " + e.getMessage());
        }
        return -1;
    }
}
