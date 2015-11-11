/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.dao;

import com.br.cargafacil.objetos.Usuario;
import java.util.List;

/**
 *
 * @author pepag
 */
public interface UsuarioDAO {
    /*classe que implementa os metodos a serem executados no DAO*/
   public void inserir (Usuario usuario);
   public void remover (int id);
   public Usuario Listar(Usuario usuario);
   public List <Usuario> buscar (Usuario usuarios);
   public void editar (Usuario usuario);
   

    
}
