/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.dao;

import com.br.cargafacil.objetos.Cargas;
import com.br.cargafacil.util.ConnectionFactory;
import com.br.cargafacil.util.GetDate;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author pepag
 */


public class CargasJDBC  implements CargasDAO{
    
    Connection connection;
    public CargasJDBC(){
    
        connection = ConnectionFactory.getConnection();
    
    }

    @Override
    public void inserir(Cargas cargas) {       
         
        
        
        try {
        String SQL = "INSERT INTO CARGAS "
                   + "(SITCARGA,DATACARREGAMENTO,DATAAGENDAMENTO,RESTRIHORA," 
                   + "TIPCARREGAMENTO,QPRODUTOS,ESTIMAPRECO,TIPCARGA,RASTREAMENTO,"
                   + "TIPFRETE,CIDCARRE,CIDDESCAR,DONOCARGA,DATA_INSERT)\n" 
                   + "  VALUES('?','?','?','?','?',?,?,'?','?','?','?','?', ?, '?');";
                
            PreparedStatement pst = connection.prepareStatement(SQL);
            GetDate getdate = new GetDate();
            
            cargas.setInsert_date(getdate.getdate());
            
            
            pst.setString(1, cargas.getSitcarga());
            pst.setString(2, cargas.getDataagendamento());
            pst.setString(3, cargas.getDatacarregamento());
            pst.setString(4, cargas.getRestrihora());
            pst.setString(5, cargas.getTipcarregamento());
            pst.setInt(6, cargas.getQtdprodutos());
            pst.setInt(7, cargas.getEstimativapreco());
            pst.setString(8, cargas.getTipocarga());
            pst.setString(9, cargas.getRastreamento());
            pst.setString(10, cargas.getTipofrete());
            pst.setString(11, cargas.getCidcarregamento());
            pst.setString(12, cargas.getCiddescarga());
            pst.setInt(13, cargas.getDonocarga());
            pst.setDate(14, cargas.getInsert_date());
            
            pst.executeUpdate();
            pst.close();
            connection.close();
         
         
         
         
         
         
         
         
         
         } catch (SQLException ex) {
            Logger.getLogger(CargasJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
            
         
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    }

    @Override
    public void remover(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Cargas> Listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Cargas> buscar(Cargas cargas) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void editar(Cargas cargas) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
    
    
    
}
