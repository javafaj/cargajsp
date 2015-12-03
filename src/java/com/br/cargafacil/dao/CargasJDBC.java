/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.dao;

import com.br.cargafacil.objetos.Cargas;
import com.br.cargafacil.objetos.Login;
import com.br.cargafacil.util.ConnectionFactory;
import com.br.cargafacil.util.GetDate;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
                   + "  VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
                
            PreparedStatement pst = connection.prepareStatement(SQL);
            GetDate getdate = new GetDate();
            
            cargas.setInsert_date(getdate.getdate());
            pst.setString(1, cargas.getSitcarga());
            pst.setString(2, cargas.getDatacarregamento());
            pst.setString(3, cargas.getDataagendamento());
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
        List<Cargas> todascargas = new ArrayList<Cargas>();
        
        try {
            String SQL = "SELECT * FROM CARGAS";
            PreparedStatement pst = connection.prepareStatement(SQL);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
            
                Cargas carga = new Cargas();
                carga.setIdcarga (rs.getInt("idcarga"));
                carga.setSitcarga(rs.getString("sitcarga"));
                carga.setDataagendamento(rs.getString("dataagendamento"));
                carga.setDatacarregamento(rs.getString("datacarregamento"));
                carga.setRestrihora(rs.getString("restrihora"));
                carga.setTipcarregamento(rs.getString("tipcarregamento"));
                carga.setQtdprodutos(rs.getInt("qprodutos"));
                carga.setRastreamento(rs.getString("rastreamento"));
                carga.setTipofrete(rs.getString("tipfrete"));
                carga.setTipocarga(rs.getString("tipcarga"));
                carga.setEstimativapreco(rs.getInt("estimapreco"));
                carga.setCidcarregamento(rs.getString("cidcarre"));
                carga.setCiddescarga(rs.getString("ciddescar"));
                carga.setDonocarga(rs.getInt("donocarga"));
                carga.setInsert_date(rs.getDate("data_insert"));
                todascargas.add(carga);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CargasJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return todascargas;
    }

    @Override
    public Cargas buscar(Cargas cargas) {
        
        try {
            String SQL = "SELECT USU.NOMEFAN,USU.CEL,USU.TELEFONE,USU.EMAIL,"+
                         "USU.CNPJ,CG.* "+
                         "FROM USUARIO USU,CARGAS CG "+
                         "WHERE CG.DONOCARGA = USU.ID "+
                         "AND CG.IDCARGA = "+cargas.getIdcarga();
            PreparedStatement pst = connection.prepareStatement(SQL);
            ResultSet rs = pst.executeQuery();
             
            while(rs.next()){
                
                cargas.setSitcarga(rs.getString("sitcarga"));
                cargas.setDataagendamento(rs.getString("dataagendamento"));
                cargas.setDatacarregamento(rs.getString("datacarregamento"));
                cargas.setRestrihora(rs.getString("restrihora"));
                cargas.setTipcarregamento(rs.getString("tipcarregamento"));
                cargas.setQtdprodutos(rs.getInt("qprodutos"));
                cargas.setRastreamento(rs.getString("rastreamento"));
                cargas.setTipofrete(rs.getString("tipfrete"));
                cargas.setTipocarga(rs.getString("tipcarga"));
                cargas.setEstimativapreco(rs.getInt("estimapreco"));
                cargas.setCidcarregamento(rs.getString("cidcarre"));
                cargas.setCiddescarga(rs.getString("ciddescar"));
                cargas.setDonocarga(rs.getInt("donocarga"));
                cargas.setInsert_date(rs.getDate("data_insert"));
                cargas.setDononomefan(rs.getString("nomefan"));
                cargas.setDonoemail(rs.getString("email"));
                cargas.setDonocel(rs.getInt("cel"));
                cargas.setDonotel(rs.getInt("telefone"));
                cargas.setDonocnpj(rs.getInt("cnpj"));
            
            }                
        
        }catch (SQLException ex) {
            Logger.getLogger(CargasJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cargas;
    }

    
    
    @Override
    public void editar(Cargas cargas) {
        
     try {
                    
            String SQL = "UPDATE cargas SET SITCARGA = ? , DATACARREGAMENTO = ? , DATAAGENDAMENTO = ? , "
                        + " RESTRIHORA = ? , TIPCARREGAMENTO = ? , QPRODUTOS = ? ,ESTIMAPRECO = ? ,"
                        + " TIPCARGA = ? ,RASTREAMENTO = ? , TIPFRETE = ? , CIDCARRE = ? , CIDDESCAR = ? ,"
                        + " DONOCARGA = ? , DATA_INSERT = ? WHERE IDCARGA = "+ cargas.getIdcarga();

            /*instanciando o preparedstatement*/
            PreparedStatement pst = connection.prepareStatement(SQL);
            /*COLETA DATA E HORA DA ALTERAÇÃO*/
            GetDate getdate = new GetDate();
            cargas.setInsert_date(getdate.getdate());

            /*passando dados para o pst para que o mesmo realize a persistencia no db*/
            pst.setString(1, cargas.getSitcarga());
            pst.setString(2, cargas.getDatacarregamento());
            pst.setString(3, cargas.getDataagendamento());
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
            
            /*executando o comando SQL no db , e logo apos encerrando a conexao*/
            pst.executeUpdate();
            pst.close();
            connection.close();
         } catch (SQLException ex) {
            Logger.getLogger(CargasJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }      
        
        
    }


    
    
    
    @Override
    public List<Cargas> MinhasCargas(Login login) {
        List<Cargas> minhascargas = new ArrayList<Cargas>();
        
        
        try {
            String SQL = "SELECT CG.* , USU.NOMEFAN FROM USUARIO USU , CARGAS CG"
                    +" WHERE USU.ID = CG.DONOCARGA"
                    +" AND CG.DONOCARGA = "+login.getId();
            PreparedStatement pst = connection.prepareStatement(SQL);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
            
                Cargas carga = new Cargas();
                carga.setIdcarga (rs.getInt("idcarga"));
                carga.setSitcarga(rs.getString("sitcarga"));
                carga.setDataagendamento(rs.getString("dataagendamento"));
                carga.setDatacarregamento(rs.getString("datacarregamento"));
                carga.setRestrihora(rs.getString("restrihora"));
                carga.setTipcarregamento(rs.getString("tipcarregamento"));
                carga.setQtdprodutos(rs.getInt("qprodutos"));
                carga.setRastreamento(rs.getString("rastreamento"));
                carga.setTipofrete(rs.getString("tipfrete"));
                carga.setTipocarga(rs.getString("tipcarga"));
                carga.setEstimativapreco(rs.getInt("estimapreco"));
                carga.setCidcarregamento(rs.getString("cidcarre"));
                carga.setCiddescarga(rs.getString("ciddescar"));
                carga.setDonocarga(rs.getInt("donocarga"));
                carga.setInsert_date(rs.getDate("data_insert"));
                carga.setDononomefan(rs.getString("nomefan"));
                minhascargas.add(carga);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(CargasJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return minhascargas;

    
    
        
    
    }

    @Override
    public Cargas buscaalterar(Cargas cargas) {
         try {
            String SQL = "SELECT * "+
                         "FROM CARGAS "+
                         "WHERE IDCARGA = "+cargas.getIdcarga();
            PreparedStatement pst = connection.prepareStatement(SQL);
            ResultSet rs = pst.executeQuery();
             
            while(rs.next()){
                
                
                cargas.setSitcarga(rs.getString("sitcarga"));
                cargas.setDataagendamento(rs.getString("dataagendamento"));
                cargas.setDatacarregamento(rs.getString("datacarregamento"));
                cargas.setRestrihora(rs.getString("restrihora"));
                cargas.setTipcarregamento(rs.getString("tipcarregamento"));
                cargas.setQtdprodutos(rs.getInt("qprodutos"));
                cargas.setRastreamento(rs.getString("rastreamento"));
                cargas.setTipofrete(rs.getString("tipfrete"));
                cargas.setTipocarga(rs.getString("tipcarga"));
                cargas.setEstimativapreco(rs.getInt("estimapreco"));
                cargas.setCidcarregamento(rs.getString("cidcarre"));
                cargas.setCiddescarga(rs.getString("ciddescar"));
                cargas.setDonocarga(rs.getInt("donocarga"));
                cargas.setInsert_date(rs.getDate("data_insert"));
                
            }                
        
        }catch (SQLException ex) {
            Logger.getLogger(CargasJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cargas;
    }
    
    
}
