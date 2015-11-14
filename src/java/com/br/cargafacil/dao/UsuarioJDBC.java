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
import java.sql.ResultSet;

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
                                + "SENHA,CONFSENHA,CEL,CNPJ,TELEFONE,IE,CEP,EMAIL)"
                                + " VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
                
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
                    pst.setString(12,usuario.getEmail());
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
            }
   
    
   
    }

    @Override
    public void remover(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Usuario Listar(Usuario usuario) {
        Usuario usu = new Usuario();
        
        try {
            String SQL = "SELECT nomefan,rsocial,cidade,uf,senha,confsenha,cel,telefone,ie,cep,cnpj,email FROM USUARIO WHERE ID = "+usuario.getIdusu();
            
            PreparedStatement pst = connection.prepareStatement(SQL);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
               
                usuario.setNomefantasia(rs.getString("nomefan"));
                usuario.setRazaosocial(rs.getString("rsocial"));
                usuario.setCidade(rs.getString("cidade"));
                usuario.setUf(rs.getString("uf"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setConfsenha(rs.getString("confsenha"));
                usuario.setCel(rs.getInt("cel"));
                usuario.setTelefone(rs.getInt("telefone"));
                usuario.setIe(rs.getInt("ie"));                
                usuario.setCep(rs.getInt("cep"));                
                usuario.setCnpj(rs.getInt("cnpj"));
                usuario.setEmail(rs.getString("email"));
            }
            pst.close();
            connection.close();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return usuario;
    }

    @Override
    public List<Usuario> buscar(Usuario usuarios) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void editar(Usuario usuario) {
        
        String SQL = "UPDATE USUARIO SET NOMEFAN= ? , "+
                     "RSOCIAL= ? , CIDADE= ? ,UF= ?, "+
                     "SENHA= ? , CONFSENHA= ? , CEL= ? , "+
                     "TELEFONE= ? , IE= ? , CEP= ? ,CNPJ= ? ,"+
                     "EMAIL = ?"+
                     "WHERE id = "+usuario.getIdusu();
                
        try{
            
            PreparedStatement pst = connection.prepareStatement(SQL);
                    
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
                    pst.setString(12,usuario.getEmail());
            
                    pst.executeUpdate();
                    pst.close();
                    connection.close();   
            
        }catch(Exception ex){
            Logger.getLogger(UsuarioJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
