/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.categoria.produto;

import model.categoria.Categoria;
import model.produto.Produto;

/**
 *
 * @author diego
 */
public class CategoriaProduto {
    private int IDCategoria;
    private int IDProduto;

    public CategoriaProduto() {
    }    

    public CategoriaProduto(Categoria categoria, Produto produto) {
        this.IDCategoria = categoria.getId();
        this.IDProduto = produto.getId();
    }    
}
