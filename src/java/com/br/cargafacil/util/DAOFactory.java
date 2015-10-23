


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.util;

import com.br.cargafacil.dao.UsuarioDAO;
import com.br.cargafacil.dao.UsuarioJDBC;
/**
 *
 * @author pepag
 * 
 * Esta classe somente retorna objetos das classes JDBC  para as classes DAO
   caso seja necessario realizar a troca de tecnologia JDBC para hibernate , basta realizar a troca dos objetos desta classe e pronto não é necessario 
   * realizar a troca nas classes DAOS
 */
public class DAOFactory {
    public static UsuarioDAO createUsuarioDAO(){
    
                return new UsuarioJDBC();
    }
    
}
