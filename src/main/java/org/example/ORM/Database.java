package org.example.ORM;

import java.sql.*;

public class Database {
    private static Connection connection;
    private final String url = "jdbc:oracle:thin:@dbsys.cs.vsb.cz:1521:oracle";
    private final String user = "YER0013";
    private final String password = "gEqgR88kv91SSNQa";

    public Database() {
        try {
            connection = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to the database");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Failed to connect to the database");
        }
    }

    public static Connection getConnection() {
        return connection;
    }

}
