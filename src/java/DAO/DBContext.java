package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Database context for managing database connection.
 */
public class DBContext {

    public static Connection connection;

    public DBContext() {
        try {
            String username = "sa";
            String password = "123";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Succulent";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, "JDBC Driver not found", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, "Failed to connect to database", ex);
        }
    }

    public static void main(String[] args) {
        if (connection != null) {
            System.out.println("Connected to database.");
        } else {
            System.out.println("Failed to connect to database.");
        }
    }
}
