/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *//*
package com.br.cargafacil.util;

import br.com.senacrs.dao.JDBCPessoaDao;
import br.com.senacrs.dao.PessoaDao;

/**
 *
 * @author pepag
 * 
 * Esta classe somente retorna objetos das classes JDBC  para as classes DAO
   caso seja necessario realizar a troca de tecnologia JDBC para hibernate , basta realizar a troca dos objetos desta classe e pronto não é necessario 
   * realizar a troca nas classes DAOS
 *//*
public class DAOFactory {
    public static PessoaDao createPessoaDAO(){
    
                return new JDBCPessoaDao();
    }
    
}
*/