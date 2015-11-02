/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.objetos;

import java.io.Serializable;

/**
 *
 * @author pepag
 */
public class Login implements Serializable{
    
    
    
    /*Criando os atributos dos objetos para serem acessados por outras paginas*/
    
    
    private String nome,senha,id;

    
    /**
     * Construtor de inicialização
     */
    public Login() {
        id ="";
        nome ="";
        senha ="";
    }

    
    
    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the senha
     */
    public String getSenha() {
        return senha;
    }

    /**
     * @param senha the senha to set
     */
    public void setSenha(String senha) {
        this.senha = senha;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }
    
    
    
}
