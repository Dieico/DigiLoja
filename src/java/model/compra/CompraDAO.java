/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.compra;

import database.Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import model.cliente.Cliente;

/**
 *
 * @author diego
 */
public class CompraDAO {

    public List<Compra> listaCompras() {
        List<Compra> resultado = new ArrayList<Compra>();
        try {
            Connection connection = Database.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT id, data, id_cliente FROM compra");
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

    public List<Compra> ListaComprasDE(int id_cliente) {
        List<Compra> resultado = new ArrayList<Compra>();
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareCall
        ("SELECT id_cliente, id, data FROM compra WHERE id_cliente =?");
            preparedStatement.setInt(1, id_cliente);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Compra compra = new Compra();
                compra.setId(resultSet.getInt("id"));
                compra.setData(resultSet.getTimestamp("data"));
                compra.setCliente(resultSet.getInt("id_cliente")); 
                resultado.add(compra);
            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {            
            return new ArrayList<Compra>();             
        }
        return resultado;
    }

    public boolean inserir( int id_cliente ) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO compra (data, id_cliente) VALUES (current_timestamp, ?)");
            preparedStatement.setInt(1, id_cliente);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            System.out.println(ex.toString());
            return false;
        }
        return resultado;
    }
    
    public static void main(String[] args) {
        CompraDAO dao = new CompraDAO();
        System.out.println(dao.ListaComprasDE(1));
    }
    
}
