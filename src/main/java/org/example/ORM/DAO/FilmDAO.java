package org.example.ORM.DAO;


import org.example.ORM.DTO.Film;

import java.sql.*;

public class FilmDAO {
    public int insertFilm(Film film, Connection connection) {
        String SQL = "INSERT INTO film (film_name, director, release_year, duration, description) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement pstmt = connection.prepareStatement(SQL, new String[]{"ID_FILM"})) {

            pstmt.setString(1, film.getFilm_name());
            pstmt.setString(2, film.getDirector());
            pstmt.setInt(3, film.getRelease_year());
            pstmt.setInt(4, film.getDuration());
            pstmt.setString(5, film.getDescription());


            int affectedRows = pstmt.executeUpdate();

            if (affectedRows > 0) {
                try (ResultSet rs = pstmt.getGeneratedKeys()) {
                    if (rs.next()) {
                        return rs.getInt(1);
                    }
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Failed to insert film: " + e.getMessage());
        }
        return -1;
    }

    public int updateFilm(Film film, Connection connection) {
        String SQL_Select = "SELECT * FROM film WHERE ID_FILM = ?";
        String SQL_Update = "UPDATE film SET film_name = ?, director = ?, release_year = ?, duration = ?, description = ? WHERE ID_FILM = ?";

        try (PreparedStatement pstmt = connection.prepareStatement(SQL_Select)) {


            pstmt.setString(1, film.getFilm_name());
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                try (PreparedStatement pstmtUpdate = connection.prepareStatement(SQL_Update)) {
                    pstmtUpdate.setString(2, film.getDirector());
                    pstmtUpdate.setInt(3, film.getRelease_year());
                    pstmtUpdate.setInt(4, film.getDuration());
                    pstmtUpdate.setString(5, film.getDescription());
                    pstmtUpdate.setInt(6, film.getIdFilm());
                    pstmtUpdate.executeUpdate();
                    return rs.getInt("ID_FILM");
                }
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.err.println("Failed to update film: " + e.getMessage());
        }
        return -1;
    }
}
