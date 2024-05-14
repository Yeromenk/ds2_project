package org.example.ORM.DAO;

import org.example.ORM.Database;
import org.example.ORM.DTO.Film_Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Film_CategoryDAO {
    public int insertFilm_Category(Film_Category film_category, Connection connection) {
        String SQL = "INSERT INTO film_category (name) VALUES (?)";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SQL)) {

            pstmt.setString(1, film_category.getName());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return -1;
    }
}
