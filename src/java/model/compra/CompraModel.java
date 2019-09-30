/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.compra;

import java.sql.Timestamp;
/**
 *
 * @author diego
 */
public class CompraModel {
    
    public boolean inserir(Timestamp data, int id_cliente){
        CompraDAO DAO = new CompraDAO();
        return DAO.inserir(data, id_cliente);
    }
    
    public static void main(String[] args) {
        CompraDAO DAO = new CompraDAO();
        DAO.inserir(null, 1);
        
    };
    
}
