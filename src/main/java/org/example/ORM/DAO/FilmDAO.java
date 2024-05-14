package org.example.ORM.DAO;

import org.example.ORM.Database;
import org.example.ORM.DTO.Film;

import java.sql.*;

public class FilmDAO {
    public int insertFilm(Film film, Connection connection) {
        String SQL = "INSERT INTO film (film_name, director, release_year, duration, description) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS)) {

            pstmt.setString(1, film.getFilm_name());
            pstmt.setString(2, film.getDirector());
            pstmt.setInt(3,  film.getRelease_year());
            pstmt.setInt(4, film.getDuration());
            pstmt.setString(5, film.getDescription());
            pstmt.executeUpdate();

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
            System.err.println("Failed to insert pet: " + e.getMessage());
        }
        return -1;
    }


    public void updateFilm(Film film) {
        String SQL = "UPDATE film SET film_name = ?, director = ?, release_year = ?, duration = ?, description = ? WHERE ID_FILM = ?";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SQL)) {

            pstmt.setString(1, film.getFilm_name());
            pstmt.setString(2, film.getDirector());
            pstmt.setInt(3,  film.getRelease_year());
            pstmt.setInt(4, film.getDuration());
            pstmt.setString(5, film.getDescription());
            pstmt.setInt(6, film.getIdFilm());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
