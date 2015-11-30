/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.dao;

import com.br.cargafacil.objetos.Cargas;
import com.br.cargafacil.objetos.Login;
import java.util.List;

/**
 *
 * @author pepag
 */
public interface CargasDAO {
    
    
      /*classe que implementa os metodos a serem executados no DAO*/
   public void inserir (Cargas cargas);
   public void remover (int id);
   public List <Cargas> Listar();
   public List <Cargas> MinhasCargas(Login login);
   public Cargas buscar (Cargas cargas);
   public Cargas buscaalterar (Cargas cargas);
   public void editar (Cargas cargas);
    
   
    
    
}
