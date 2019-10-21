/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.cliente;

/**
 *
 * @author diego
 */
public class ClienteModel {
    
    public Cliente showPerfil( int id ){
        ClienteDAO d = new ClienteDAO();
        Cliente c = d.listarCliente(id);
        return c;
    }
    
    public boolean inserir(String nome, String endereco, String email, String login, String senha) {
        ClienteDAO dao = new ClienteDAO();
        return dao.inserir(nome, endereco, login, senha, email);
    }
    
    public Cliente verificarSessao(String login, String senha) {
        ClienteDAO dao = new ClienteDAO();
        return dao.listarCliente(login, senha);
    }
    
    public boolean alterar (int id, String nome, String endereco, String login, String senha, String email){
        ClienteDAO dao = new ClienteDAO();
        return dao.alterar(id, nome, endereco, login, senha, email);
    }
    
}
