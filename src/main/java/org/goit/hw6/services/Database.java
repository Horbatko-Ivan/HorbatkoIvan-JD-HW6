package org.goit.hw6.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    private static final String URL = "jdbc:h2:C:\\Users\\Ivan\\IdeaProjects\\HorbatkoIvan-JD-HW6\\MyDB";
    private static final Database INSTANCE = new Database();
    private Connection connection;

    private Database() {
        try {
            Class.forName("org.h2.Driver");
            connection = DriverManager.getConnection(URL);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static Database getInstance() {
        return INSTANCE;
    }

    public Connection getConnection() {
        return connection;
    }
}
