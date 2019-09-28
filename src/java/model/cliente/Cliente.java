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
public class Cliente {
    private String login;
    private String senha;
    private String nome;
    private String email;
    private String endereco;//
    private int id;

    public Cliente() {
    }
    
    

    public Cliente(String login, String senha, String nome, String email, String endereco, int id) {
        this.login = login;
        this.senha = senha;
        this.nome = nome;
        this.email = email;
        this.endereco = endereco;
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
}
    
    
