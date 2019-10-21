/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.cliente;

import database.Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe que representa os acessos aos dados de clientes persistidas em um
 * banco de dados relacional
 */
public class ClienteDAO {

    /**
     * Método utilizado para listar todos os clientes registrados
     *
     * @return
     */
    public List<Cliente> listarClientes() {
        List<Cliente> resultado = new ArrayList<Cliente>();
        try {
            Connection connection = Database.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT id, nome, endereco, login, senha, email FROM cliente");
            while (resultSet.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(resultSet.getInt("id"));
                cliente.setNome(resultSet.getString("nome"));
                cliente.setSenha(resultSet.getString("endereco"));
                cliente.setLogin(resultSet.getString("login"));
                cliente.setSenha(resultSet.getString("senha"));
                cliente.setSenha(resultSet.getString("email"));
                resultado.add(cliente);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            return new ArrayList<Cliente>();
        }
        return resultado;
    }

    /**
     * Método utilizado para listar um cliente pelo id
     *
     * @param id
     * @return
     */
    public Cliente listarCliente(int id) {
        Cliente cliente = null;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareCall
        ("SELECT id, nome, endereco, login, senha, email FROM cliente WHERE id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                cliente = new Cliente();
                cliente.setId(resultSet.getInt("id"));
                cliente.setNome(resultSet.getString("nome"));
                cliente.setEndereco(resultSet.getString("endereco"));
                cliente.setLogin(resultSet.getString("login"));
                cliente.setSenha(resultSet.getString("senha"));
                cliente.setEmail(resultSet.getString("email"));
            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return null;
        }
        return cliente;
    }

    /**
     * Método utilizado para listar um cliente pelo login e senha
     *
     * @param login
     * @param senha
     * @return
     */
    public Cliente listarCliente(String login, String senha) {
        Cliente cliente = null;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareCall
        ("SELECT id, nome, endereco, login, senha, email FROM cliente WHERE login = ? AND senha = ?");
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, senha);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                cliente = new Cliente();
                cliente.setId(resultSet.getInt("id"));
                cliente.setNome(resultSet.getString("nome"));
                cliente.setSenha(resultSet.getString("senha"));
                cliente.setLogin(resultSet.getString("login"));
                cliente.setEndereco(resultSet.getString("endereco"));
                cliente.setEmail(resultSet.getString("email"));
            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return null;
        }
        return cliente;
    }

    /**
     * Método utilizado para inserir um novo cliente
     *
     * @param nome
     * @param endereco
     * @param login
     * @param senha
     * @param email
     * @return
     */
    public boolean inserir(String nome, String endereco, String login, String senha, String email) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
        ("INSERT INTO cliente (nome, endereco, login, senha, email) VALUES (?, ?, ?, ?, ?)");
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, endereco);
            preparedStatement.setString(3, login);
            preparedStatement.setString(4, senha);
            preparedStatement.setString(5, email);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }

    /**
     * Método utilizado para alterar um cliente já existente
     *
     * @param id
     * @param nome
     * @param endereco
     * @param login
     * @param senha
     * @param email
     * @return
     */
    public boolean alterar(int id, String nome, String endereco, String login, String senha, String email) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE cliente SET nome = ?, endereco = ?, login = ?, senha = ?, email = ? WHERE id = ?");
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, endereco);
            preparedStatement.setString(3, login);
            preparedStatement.setString(4, senha);
            preparedStatement.setString(5, email);
            preparedStatement.setInt(6, id);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }

    /**
     * Método para deletar um cliente já existente
     *
     * @param id
     * @return
     */
    public boolean deletar(int id) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
            ("DELETE FROM cliente WHERE id = ?");
            preparedStatement.setInt(1, id);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
    
    static public void main( String args[] ){
        ClienteDAO dao = new ClienteDAO();
//        ArrayList<Produto> lista = (ArrayList<Produto>) dao.listar("pal");
        System.out.println(dao.listarClientes());
//        for( Produto prod : lista )
//            System.out.println(prod.getNome());
    }

}


///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package model.cliente;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
///**
// *
// * @author diego
// */
//public class ClienteDao {
//
//    private static final String JDBC_DRIVER = "org.postgresql.Driver";
//    private static final String JDBC_URL = "jdbc:postgresql://localhost:5432/DigiLoja";
//    private static final String JDBC_USUARIO = "postgres";
//    private static final String JDBC_SENHA = "FATEzero";
//
//    public Cliente getCliente(int id) {
//        Cliente cliente = null;
//        try {
//            Class.forName(JDBC_DRIVER);
//            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
//            PreparedStatement ps = c.prepareStatement("SELECT * FROM cliente WHERE id = ?");
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                cliente = new Cliente();
//                cliente.setId(rs.getInt("id"));
//                cliente.setLogin(rs.getString("login"));
//                cliente.setSenha(rs.getString("senha"));
//                cliente.setEmail(rs.getString("email"));
//                cliente.setNome(rs.getString("nome"));
//                cliente.setEndereco(rs.getString("endereco"));
//            }
//            rs.close();
//            ps.close();
//            c.close();
//        } catch (Exception e) {
//        }
//        return cliente;
//
//    }
//    
//    public static void main(String[] args) {
//        ClienteDao d = new ClienteDao();
//        Cliente c = d.getCliente(1);
//        System.out.println(c.getNome());
//    };
//
//}
