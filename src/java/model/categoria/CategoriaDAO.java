/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.categoria;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.categoria.Categoria;

/**
 *
 * @author aluno
 */
public class CategoriaDAO {
    
    private static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String JDBC_URL = "jdbc:postgresql://localhost:5432/DigiLoja";
    private static final String JDBC_USUARIO = "postgres";
    private static final String JDBC_SENHA = "FATEzero";
    
    public List<Categoria> listar(){
        List<Categoria> resultado  = new ArrayList<Categoria>();
        
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("SELECT * FROM CATEGORIA");
            ResultSet rs = ps.executeQuery();
            
            while( rs.next() ){
                Categoria categoria = new Categoria();
                categoria.setId( rs.getInt("id") );
                categoria.setDescricao( rs.getString("descricao") );
                resultado.add( categoria );
            }
            
            rs.close();
            ps.close();
            c.close();
        } catch ( Exception ex ) {
            
        }
        
        return resultado;
    }
    
    public boolean inserir(String descricao) {
        boolean resultado = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement
        ("INSERT INTO categoria (descricao) VALUES (?)");
            preparedStatement.setString(1, descricao);            
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
    
    public boolean  alterar (int id, String descricao){
        boolean resultado =false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement
        ("UPDATE categoria SET descricao=? WHERE id = ?");
            preparedStatement.setString(1, descricao);          
            preparedStatement.setInt(2, id);
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
        ("DELETE FROM categoria WHERE id = ?");
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
