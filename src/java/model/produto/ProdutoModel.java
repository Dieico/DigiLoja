/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.produto;

/**
 *
 * @author diego
 */
public class ProdutoModel {
    
     public boolean inserir(String nome, String foto, String descricao, double preco, int quantidade) {
        if (descricao != null && descricao.trim().length() > 0) {
            ProdutoDAO DAO = new ProdutoDAO();
            return DAO.inserir(nome, foto, descricao, preco, quantidade);
        } else {
            return false;
        }
    }  
     
     public boolean alterar(int id, String nome, String foto, String descricao, double preco, int quantidade) {
        if (id > 0 && descricao != null && descricao.trim().length() > 0) {
            ProdutoDAO DAO = new ProdutoDAO();
            return DAO.alterar(id, nome, foto, descricao, preco, quantidade);
        } else {
            return false;
        }
    }
     
     public boolean deletar(int id){
        if (id > 0 ) {
            ProdutoDAO DAO = new ProdutoDAO();
            return DAO.deletar(id);
        } else {
            return false;
        }
    }
     
       public static void main(String[] args) {
        ProdutoDAO DAO = new ProdutoDAO();
        DAO.deletar(1);
    }
    
}
