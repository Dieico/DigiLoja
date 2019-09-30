/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.compra.produto;

import model.compra.Compra;
import model.produto.Produto;

/**
 *
 * @author diego
 */
public class CompraProduto {
    private int IDCompra;
    private int IDProduto;

    public CompraProduto() {
    }

    public CompraProduto(Compra compra, Produto produto) {
        this.IDCompra = compra.getId();
        this.IDProduto = produto.getId();
    }
    
    
    
}
