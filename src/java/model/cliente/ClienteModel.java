/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.cliente;

/**
 *
 * @author leoomoreira
 */
public class ClienteModel {

    public Cliente verificarSessao(String login, String senha) {
        Cliente cliente = null;
              
        if (login != null && senha != null && login.equals(senha)) {
            cliente = new Cliente();
            cliente.setLogin(login);
            cliente.setSenha(senha);
        }
        
        return cliente;
    }
    
}
