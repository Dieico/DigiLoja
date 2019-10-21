/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.compra;

import java.sql.Date;
import java.sql.Timestamp;
import model.cliente.Cliente;

/**
 *
 * @author diego
 */
public class Compra {
    private int id;
    private Timestamp data;
    private int cliente;
    
     public Compra() {
    }

    public Compra(int id, Timestamp data, int cliente) {
        this.id = id;
        this.data = data;
        this.cliente =  cliente;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Timestamp getData() {
        return data;
    }

    public void setData(Timestamp data) {
        this.data = data;
    }

    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }
    
}
