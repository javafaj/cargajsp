/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.dao;

import com.br.cargafacil.objetos.Login;
import com.br.cargafacil.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author pepag
 */
public class LoginJDBC implements LoginDAO{
    
    
    Connection connection;
    public LoginJDBC(){
    connection = ConnectionFactory.getConnection();
    }

 

    @Override
    public String Entrada(Login login) {
        String id = "";
     try {
                String SQL = "SELECT ID,NOMEFAN,SENHA FROM USUARIO" +
                             " WHERE NOMEFAN ='"+login.getNome()+"' AND SENHA ='"+login.getSenha()+"'";
                PreparedStatement pst = connection.prepareStatement(SQL);
                /*Result Set aonde o pst armazena os valores do select para serem colocados em objetos*/
                ResultSet rs = pst.executeQuery();
                /*percorre o resultset sempre verificando se existem linhas e quantas linhas existem , sempre que existir ele vai para a proxima por
                isso existe o rs.next()*/
                
               while(rs.next()){
                    /*instanciando um novo objeto de pessoa para que o rs possa estar atribuindo os valores do banco para o objeto do programa*/
                    /*Pegando os valores de acordo com o tipo que esta dentro do banco , se for varchar coloque getstring , 
                    se for inteiro coloque getinteger e assim por diante , sempre colocar de acordo com a coluna no banco exemplo ("nome")*/
                    Login l = new Login();
                    l.setId(rs.getString("id"));
                    l.setNome(rs.getString("nomefan"));
                    l.setSenha(rs.getString("senha"));
                    
                     if(l.getNome().equals(login.getNome())
                    && l.getSenha().equals(login.getSenha())){
                         
                     login.setId(l.getId());                
                      id= login.getId();
                 } 
                }            
                
                                  
                 pst.close();
                 rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(LoginJDBC.class.getName()).log(Level.SEVERE, null, ex);
                throw new RuntimeException ("Problemas ao realizar a consulta do usuario : " ,ex);
                        }
        return id;
    
    
    }
}   

