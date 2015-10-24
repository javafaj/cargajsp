/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.dao;

import com.br.cargafacil.objetos.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.br.cargafacil.util.ConnectionFactory;

/**
 *
 * @author pepag
 */
public class  UsuarioJDBC  implements UsuarioDAO {
    /**
     * Construtor que inicia uma conexão
     */
    Connection connection;
    public UsuarioJDBC(){
     connection = ConnectionFactory.getConnection();
    }
    
    /**
     * Passa como parametro  * @param usuario para realização 
     * da função de inserção dos dados no banco é utilizado o preparedstatement
     * para que o JAVA consiga realizar a coleta dos dados do obj * @param usuario
     * e persistir no banco.
     */

    @Override
    public void inserir(Usuario usuario) {
        
         try {
                String SQL = "INSERT INTO USUARIO (NOMEFAN,RSOCIAL,CIDADE,UF,"
                                + "SENHA,CONFSENHA,CEL,CNPJ,TELEFONE,IE,CEP)"
                                + " VALUES (?,?,?,?,?,?,?,?,?,?,?)";
                
                PreparedStatement pst = connection.prepareStatement(SQL);
                /**
                 * Coletando os dados e setando no preparedstatement passando os dados
                 * do obj usuario
                 */
                    pst.setString(1,usuario.getNomefantasia());
                    pst.setString(2,usuario.getRazaosocial());
                    pst.setString(3,usuario.getCidade());
                    pst.setString(4,usuario.getUf());
                    pst.setString(5,usuario.getSenha());
                    pst.setString(6,usuario.getConfsenha());
                    pst.setInt(7,usuario.getCel());
                    pst.setInt(8,usuario.getCnpj());
                    pst.setInt(9,usuario.getTelefone());
                    pst.setInt(10,usuario.getIe());
                    pst.setInt(11,usuario.getCep());                  
                    /**
                     * execute update para que ele retorne somente as linhas afetadas do banco
                     */
                    pst.executeUpdate();
                    /**
                     * fecha preparedstatement e conexão com o banco
                     */
                    pst.close();
                  connection.close();                  
                  /**
                   * Tratando excessões
                   */
            } catch (Exception ex) {
                Logger.getLogger(UsuarioJDBC.class.getName()).log(Level.SEVERE, null, ex);
                /**
                 *quando ocorrer erro esse throw passa para a classe que invocou o metodo inserir
                 */
                throw new RuntimeException("Erro ao inserir pessoa:",ex);
            }
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public void remover(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Usuario> Listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Usuario> buscar(Usuario usuarios) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void editar(Usuario usuarios) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
