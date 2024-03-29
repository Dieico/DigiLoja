/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.administrador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import database.Database;

/**
 *
 * @author diego
 */
public class AdministradorDAO {

    public Administrador listaAdmins(int id) {
        Administrador administrador = null;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareCall("SELECT id, nome, endereco, login, senha, email FROM administrador WHERE id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                administrador = new Administrador();
                administrador.setId(resultSet.getInt("id"));
                administrador.setNome(resultSet.getString("nome"));                
                administrador.setLogin(resultSet.getString("login"));
                administrador.setSenha(resultSet.getString("senha"));
                administrador.setEmail(resultSet.getString("email"));
            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return null;
        }
        return administrador;
    }

    /**
     * Método utilizado para listar um administrador pelo login e senha
     *
     * @param login
     * @param senha
     * @return
     */
    public Administrador listaAdmins(String login, String senha) {
        Administrador administrador = null;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareCall("SELECT id, nome, login, senha, email FROM administrador WHERE login = ? AND senha = ?");
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, senha);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                administrador = new Administrador();
                administrador.setId(resultSet.getInt("id"));
                administrador.setNome(resultSet.getString("nome"));                
                administrador.setLogin(resultSet.getString("login"));
                administrador.setSenha(resultSet.getString("senha"));
                administrador.setEmail(resultSet.getString("email"));
            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return null;
        }
        return administrador;
    }

    /**
     * Método utilizado para inserir um novo administrador
     *
     * @param nome
     * @param endereco
     * @param login
     * @param senha
     * @param email
     * @return
     */
    public boolean inserir(String nome, String login, String senha, String email) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO administrador (nome, login, senha, email) VALUES (?, ?, ?, ?)");
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, login);
            preparedStatement.setString(3, senha);
            preparedStatement.setString(4, email);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            System.out.println( ex.toString());
            return false;
        }
        return resultado;
    }

    /**
     * Método utilizado para alterar um administrador já existente
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
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE administrador SET nome = ?, endereco = ?, login = ?, senha = ?, email = ? WHERE id = ?");
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
     * Método para deletar um administrador já existente
     *
     * @param id
     * @return
     */
    public boolean deletar(int id) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM administrador WHERE id = ?");
            preparedStatement.setInt(1, id);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }

}
