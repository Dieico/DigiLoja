/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.categoria;

import model.categoria.CategoriaDAO;
import model.categoria.Categoria;
import java.util.List;

/**
 *
 * @author aluno
 */
public class CategoriaNegocio {
    public List<Categoria> listar(){
        CategoriaDAO categoriaDAO = new CategoriaDAO();
        return categoriaDAO.listar();
    }
     
    public boolean inserir( int id, String descricao ) {
        if( id > 0 && descricao != null && descricao.trim().length() > 0 ) {
            CategoriaDAO categoriaDAO = new CategoriaDAO();
            return categoriaDAO.inserir( descricao );
        } else {
            return false;
        }
    }
}
