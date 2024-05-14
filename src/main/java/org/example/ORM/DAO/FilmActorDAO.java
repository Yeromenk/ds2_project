package org.example.ORM.DAO;

import org.example.ORM.DTO.Actor;
import org.example.ORM.DTO.Film;
import org.example.ORM.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FilmActorDAO {
    public void insertFilmActor(Film film, Actor actor) {
        String SQL = "INSERT INTO film_actor (ID_FILM, ID_ACTOR) select ?, ? from actor where FIRST_NAME = ? and LAST_NAME = ?";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SQL)) {

            pstmt.setInt(1, film.getIdFilm());
            pstmt.setInt(2, actor.getId_actor());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
