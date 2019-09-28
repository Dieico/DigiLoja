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
    
    public boolean inserir( String descricao ){
        boolean resultado = false;
        
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("INSERT INTO CATEGORIA VALUES (?)");
            ps.setString(1, descricao);
            resultado = ( ps.executeUpdate() == 1 );
            ps.close();
            c.close();
        } catch ( Exception ex ) {
            resultado = false;
        }
        
        return resultado;
    }
}
