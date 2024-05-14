package org.example.ORM.DAO;

import org.example.ORM.Database;
import org.example.ORM.DTO.Film;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FilmDAO {
    public int insertFilm(Film film, Connection connection) {
        String SQL = "INSERT INTO film (film_name, director, release_year, duration, description) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SQL)) {

            pstmt.setString(1, film.getFilm_name());
            pstmt.setString(2, film.getDirector());
            pstmt.setInt(3, film.getRelease_year());
            pstmt.setInt(4, film.getDuration());
            pstmt.setString(5, film.getDescription());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
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
