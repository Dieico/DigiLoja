/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.compra;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author diego
 */
public class CompraDAO {

    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String JDBC_URL = "jdbc:postgresql://localhost:5432/DigiLoja";
    private static final String JDBC_USUARIO = "postgres";
    private static final String JDBC_SENHA = "FATEzero";

    public List<Compra> listarClientes() {
        List<Compra> resultado = new ArrayList<Compra>();
        try {
            Class.forName(JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery
        ("SELECT id, data, id_cliente FROM compra");
            while (resultSet.next()) {
                Compra compra = new Compra();
                compra.setId(resultSet.getInt("id"));
                compra.setData(resultSet.getTimestamp("data"));
                compra.setCliente(resultSet.getInt("id_cliente"));                
                resultado.add(compra);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            return new ArrayList<Compra>();
        }
        return resultado;
    }
    
    public boolean inserir( Timestamp data, int id ) {
        boolean resultado = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection connection = DriverManager.getConnection
        (JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement
        ("INSERT INTO compra (data, id) VALUES (?, ?)");
            preparedStatement.setTimestamp(1, data);
            preparedStatement.setInt(2, id);            
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }

}
