/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.produto;

import database.Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.categoria.Categoria;

/**
 *
 * @author diego
 */
public class ProdutoDAO {
    
    public List<Produto> listar( String nome, int paginaID ){
        List<Produto> resultado = new ArrayList<Produto>();
        try {
            Connection connection = Database.getConnection();
            
            PreparedStatement preparedStatement = connection.prepareCall("SELECT id, nome, descricao, foto, quantidade, preco FROM produto WHERE nome LIKE ? LIMIT 6 OFFSET 6 * ? - 6");
            preparedStatement.setString(1,"%" + nome + "%");
            preparedStatement.setInt(2, paginaID);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Produto cliente = new Produto();
                cliente.setId(resultSet.getInt("id"));
                cliente.setNome(resultSet.getString("nome"));
                cliente.setDescricao(resultSet.getString("descricao"));
                cliente.setFoto(resultSet.getString("foto"));
                cliente.setQuantidade(resultSet.getInt("quantidade"));
                cliente.setPreco(resultSet.getDouble("preco"));
                resultado.add(cliente);
            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            System.out.println(ex.toString());
            return new ArrayList<Produto>();
        }
        return resultado;
    }
    
    public List<Produto> listar(){
        List<Produto> resultado = new ArrayList<Produto>();
        try {
            Connection connection = Database.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT id, nome, descricao, foto, quantidade, preco FROM produto");
            while (resultSet.next()) {
                Produto cliente = new Produto();
                cliente.setId(resultSet.getInt("id"));
                cliente.setNome(resultSet.getString("nome"));
                cliente.setDescricao(resultSet.getString("descricao"));
                cliente.setFoto(resultSet.getString("foto"));
                cliente.setQuantidade(resultSet.getInt("quantidade"));
                cliente.setPreco(resultSet.getDouble("preco"));
                resultado.add(cliente);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            return new ArrayList<Produto>();
        }
        return resultado;
    }
    
    public boolean inserir(String nome, String foto, String descricao, double preco, int quantidade ) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
        ("INSERT INTO produto (nome, foto, descricao, preco, quantidade) VALUES (?, ?, ?, ?, ?)");
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, foto);            
            preparedStatement.setString(3, descricao);
            preparedStatement.setDouble(4, preco);
            preparedStatement.setInt(5, quantidade);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
    
    public boolean  alterar (int id, String nome, String foto, String descricao, double preco, int quantidade){
        boolean resultado =false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
        ("UPDATE produto SET nome=?, foto=?, descricao=?, preco=?, quantidade=? WHERE id = ?");
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, foto);
            preparedStatement.setString(3, descricao);
            preparedStatement.setDouble(4, preco);
            preparedStatement.setInt(5, quantidade);
            preparedStatement.setInt(6, id);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
    
    public boolean deletar(int id) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
        ("DELETE FROM produto WHERE id = ?");
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
        ProdutoDAO dao = new ProdutoDAO();
        System.out.println(dao.listar("pal", 1));
    }
}

