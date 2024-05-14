package org.example.ORM.DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FilmActorDAO {
    public void insertFilmActor(int filmId, int actorId, Connection connection) {
        String SQL = "INSERT INTO Film_Actor (id_film, id_actor) VALUES (?, ?)";

        try (PreparedStatement pstmt = connection.prepareStatement(SQL)) {
            pstmt.setInt(1, filmId);
            pstmt.setInt(2, actorId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.err.println("Failed to insert film_actor: " + e.getMessage());
        }
    }
}
