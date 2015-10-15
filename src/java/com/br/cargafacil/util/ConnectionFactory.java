/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author pepag
 */
public class ConnectionFactory {
    

public static Connection getConnection(){
    try {
        /*variavel do tipo conexao , essa variavel é responsavel por retornar uma conexao*/
        Connection connection = null;
        /*registrando o driver para conexao no banco e atribuindo os dados de conexao usuario + senha */
        Class.forName("org.mariadb.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/cargafacil";
        String user="cargalocal";
        String pass ="faj2013";
        /*retorno de conexao*/  
        return connection = DriverManager.getConnection(url,user,pass);
    /*tratativa de erros , caso a classe nao exista dentro do driver e se caso ocorrer algum erro de SQL*/
    } catch (ClassNotFoundException ex) {
        Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
        throw new RuntimeException("Erro Class not Found Exception ao abrir conexao" , ex);
    } catch (SQLException ex) {
        Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
        throw new RuntimeException("Erro SQL Exception ao abrir conexao" , ex);
    } 
       
}
        
        
    
  
}




