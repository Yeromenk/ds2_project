package org.example.ORM.DAO;

import org.example.ORM.Database;
import org.example.ORM.DTO.Actor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ActorDAO {
    public int insertActor(Actor actor, Connection connection) {
        String SQL = "INSERT INTO actor (first_name, last_name, date_of_birth, nationality) VALUES (?, ?, ?, ?)";

        try (PreparedStatement pstmt = connection.prepareStatement(SQL, new String[]{"ID_ACTOR"})) {

            pstmt.setString(1, actor.getFirst_name());
            pstmt.setString(2, actor.getLast_name());
            pstmt.setInt(3,  actor.getDate_of_birth());
            pstmt.setString(4, actor.getNationality());

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
            System.err.println("Failed to insert actor: " + e.getMessage());
        }
        return -1;
    }
}
