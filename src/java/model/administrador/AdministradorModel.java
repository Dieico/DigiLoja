/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.administrador;



/**
 *
 * @author diego
 */
public class AdministradorModel {
    
    public Administrador verificarSessao(String login, String senha) {
        AdministradorDAO dao = new AdministradorDAO();
        return dao.listaAdmins(login, senha);
    }
    
}
