/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.produto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.categoria.Categoria;

/**
 *
 * @author diego
 */
public class ProdutoDAO {
        
    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String JDBC_URL = "jdbc:postgresql://localhost:5432/DigiLoja";
    private static final String JDBC_USUARIO = "postgres";
    private static final String JDBC_SENHA = "FATEzero";
    
    public List<Produto> listar(){
        List<Produto> resultado  = new ArrayList<Produto>();
        
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("SELECT * FROM produto");
            ResultSet rs = ps.executeQuery();
            
            while( rs.next() ){
                Produto produto = new Produto();
                produto.setId( rs.getInt("id") );
                produto.setNome(rs.getString("nome"));
                produto.setNome(rs.getString("descricao"));
                produto.setFoto(rs.getString("foto"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setQuantidade(rs.getInt("quantidade"));
                resultado.add( produto );
            }            
            rs.close();
            ps.close();
            c.close();
        } catch ( Exception ex ) {
            
        }        
        return resultado;
    }
    
    public boolean inserir(String nome, String foto, String descricao, double preco, int quantidade ) {
        boolean resultado = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
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
            Class.forName(JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
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
            Class.forName(JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
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
    
    
}

