/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author aluno
 */
public class Database {
    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String JDBC_URL = "jdbc:postgresql://localhost:5432/DigiLoja";
    private static final String JDBC_USUARIO = "postgres";
    private static final String JDBC_SENHA = "FATEzero";
    
    static public Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(Database.JDBC_DRIVER);
        return DriverManager.getConnection
        (Database.JDBC_URL, Database.JDBC_USUARIO, Database.JDBC_SENHA);
    }
}