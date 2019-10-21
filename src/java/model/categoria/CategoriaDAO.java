/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.categoria;

import database.Database;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.categoria.Categoria;
import model.compra.Compra;
import model.produto.Produto;

/**
 *
 * @author aluno
 */
public class CategoriaDAO {

    public List<Categoria> listar() {
        List<Categoria> resultado = new ArrayList<Categoria>();

        try {
            Connection connection = Database.getConnection();
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM CATEGORIA");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Categoria categoria = new Categoria();
                categoria.setId(rs.getInt("id"));
                categoria.setDescricao(rs.getString("descricao"));
                resultado.add(categoria);
            }

            rs.close();
            ps.close();
            connection.close();
        } catch (Exception ex) {

        }

        return resultado;
    }
    
    public List<Produto> ListaCategoriaDe(int categoria) {
        List<Produto> resultado = new ArrayList<Produto>();
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareCall
        ("SELECT produto.descricao, produto.foto, produto.quantidade, produto.preco, produto.id, produto.nome, categoria_produto.id_categoria, categoria_produto.id_produto FROM produto, categoria_produto WHERE produto.id = categoria_produto.id_produto AND id_categoria=?");
            preparedStatement.setInt(1, categoria);
            ResultSet resultSet = preparedStatement.executeQuery();
            
            while (resultSet.next()) {
                
                Produto produto = new Produto();
                produto.setId(resultSet.getInt("id"));
                produto.setNome(resultSet.getString("nome"));
                produto.setDescricao(resultSet.getString("descricao"));
                produto.setFoto(resultSet.getString("foto"));
                produto.setQuantidade(resultSet.getInt("quantidade"));
                produto.setPreco(resultSet.getDouble("preco"));
                resultado.add(produto);
            }
            
            resultSet.close();
            preparedStatement.close();
            connection.close();
            
        } catch (Exception ex) {            
            return new ArrayList<Produto>();             
        }
        return resultado;
    }

    public boolean inserir(String descricao) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO categoria (descricao) VALUES (?)");
            preparedStatement.setString(1, descricao);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }

    public boolean alterar(int id, String descricao) {
        boolean resultado = false;
        try {
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE categoria SET descricao=? WHERE id = ?");
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
            Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM categoria WHERE id = ?");
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
