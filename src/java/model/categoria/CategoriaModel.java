/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.categoria;

import model.categoria.CategoriaDAO;
import model.categoria.Categoria;
import java.util.List;
import model.produto.Produto;

/**
 *
 * @author aluno
 */
public class CategoriaModel {

    public List<Categoria> listar() {
        CategoriaDAO categoriaDAO = new CategoriaDAO();
        return categoriaDAO.listar();
    }

    public boolean inserir(String descricao) {
        if (descricao != null && descricao.trim().length() > 0) {
            CategoriaDAO categoriaDAO = new CategoriaDAO();
            return categoriaDAO.inserir(descricao);
        } else {
            return false;
        }
    }

    public boolean alterar(int id, String descricao) {
        if (id > 0 && descricao != null && descricao.trim().length() > 0) {
            CategoriaDAO categoriaDAO = new CategoriaDAO();
            return categoriaDAO.alterar(id, descricao);
        } else {
            return false;
        }

    }

    public boolean deletar(int id) {
        if (id > 0) {
            CategoriaDAO categoriaDAO = new CategoriaDAO();
            return categoriaDAO.deletar(id);
        } else {
            return false;
        }
    }
    
    public List<Produto> listaProdutoDe(int categoria) {
           CategoriaDAO dao = new CategoriaDAO();
           return dao.ListaCategoriaDe(categoria);
    }

    public static void main(String[] args) {
        CategoriaModel d = new CategoriaModel();
        System.out.println(d.listar().get(0));
    }
;
}
