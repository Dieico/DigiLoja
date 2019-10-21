/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.compra;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

/**
 *
 * @author diego
 */
public class CompraModel {

    public boolean inserir(int id_cliente) {
        CompraDAO DAO = new CompraDAO();
        return DAO.inserir(id_cliente);
    }

    public List<Compra> listaCompraDe(int id) {
        CompraDAO DAO = new CompraDAO();
        return  DAO.ListaComprasDE(id);
    }
    
    public static void main(String[] args) {
        CompraModel d = new CompraModel();
        System.out.println(d.listaCompraDe(1).get(0).getCliente());
    }
    
}
