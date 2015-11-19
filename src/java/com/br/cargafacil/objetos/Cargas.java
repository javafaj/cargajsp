/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.objetos;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author pepag
 */
public class Cargas {
    
    /**
     * Atributos de cargas
     */
  private Integer idcarga;
  private String  sitcarga;
  private String  datacarregamento;
  private String  dataagendamento;
  private String  restrihora;
  private String  tipcarregamento;
  private Integer  estimativapreco;  
  private String  rastreamento;  
  private String  Tipofrete; 
  private String  cidcarregamento; 
  private String  ciddescarga;
  private Integer qtdprodutos;  
  private String  tipocarga;
  private Integer donocarga;
  private Date insert_date;

          
 
 public Cargas(){
 
 }

    /**
     * @return the idcarga
     */
    public Integer getIdcarga() {
        return idcarga;
    }

    /**
     * @param idcarga the idcarga to set
     */
    public void setIdcarga(Integer idcarga) {
        this.idcarga = idcarga;
    }

    /**
     * @return the sitcarga
     */
    public String getSitcarga() {
        return sitcarga;
    }

    /**
     * @param sitcarga the sitcarga to set
     */
    public void setSitcarga(String sitcarga) {
        this.sitcarga = sitcarga;
    }

    /**
     * @return the datacarregamento
     */
    public String getDatacarregamento() {
        return datacarregamento;
    }

    /**
     * @param datacarregamento the datacarregamento to set
     */
    public void setDatacarregamento(String datacarregamento) {
        this.datacarregamento = datacarregamento;
    }

    /**
     * @return the dataagendamento
     */
    public String getDataagendamento() {
        return dataagendamento;
    }

    /**
     * @param dataagendamento the dataagendamento to set
     */
    public void setDataagendamento(String dataagendamento) {
        this.dataagendamento = dataagendamento;
    }

    /**
     * @return the restrihora
     */
    public String getRestrihora() {
        return restrihora;
    }

    /**
     * @param restrihora the restrihora to set
     */
    public void setRestrihora(String restrihora) {
        this.restrihora = restrihora;
    }

    /**
     * @return the tipcarregamento
     */
    public String getTipcarregamento() {
        return tipcarregamento;
    }

    /**
     * @param tipcarregamento the tipcarregamento to set
     */
    public void setTipcarregamento(String tipcarregamento) {
        this.tipcarregamento = tipcarregamento;
    }

    /**
     * @return the estimativapreco
     */
    public Integer getEstimativapreco() {
        return estimativapreco;
    }

    /**
     * @param estimativapreco the estimativapreco to set
     */
    public void setEstimativapreco(Integer estimativapreco) {
        this.estimativapreco = estimativapreco;
    }

    /**
     * @return the rastreamento
     */
    public String getRastreamento() {
        return rastreamento;
    }

    /**
     * @param rastreamento the rastreamento to set
     */
    public void setRastreamento(String rastreamento) {
        this.rastreamento = rastreamento;
    }

    /**
     * @return the Tipofrete
     */
    public String getTipofrete() {
        return Tipofrete;
    }

    /**
     * @param Tipofrete the Tipofrete to set
     */
    public void setTipofrete(String Tipofrete) {
        this.Tipofrete = Tipofrete;
    }

    /**
     * @return the cidcarregamento
     */
    public String getCidcarregamento() {
        return cidcarregamento;
    }

    /**
     * @param cidcarregamento the cidcarregamento to set
     */
    public void setCidcarregamento(String cidcarregamento) {
        this.cidcarregamento = cidcarregamento;
    }

    /**
     * @return the ciddescarga
     */
    public String getCiddescarga() {
        return ciddescarga;
    }

    /**
     * @param ciddescarga the ciddescarga to set
     */
    public void setCiddescarga(String ciddescarga) {
        this.ciddescarga = ciddescarga;
    }



    /**
     * @return the tipocarga
     */
    public String getTipocarga() {
        return tipocarga;
    }

    /**
     * @param tipocarga the tipocarga to set
     */
    public void setTipocarga(String tipocarga) {
        this.tipocarga = tipocarga;
    }

    /**
     * @return the qtdprodutos
     */
    public Integer getQtdprodutos() {
        return qtdprodutos;
    }

    /**
     * @param qtdprodutos the qtdprodutos to set
     */
    public void setQtdprodutos(Integer qtdprodutos) {
        this.qtdprodutos = qtdprodutos;
    }

    /**
     * @return the donocarga
     */
    public Integer getDonocarga() {
        return donocarga;
    }

    /**
     * @param donocarga the donocarga to set
     */
    public void setDonocarga(Integer donocarga) {
        this.donocarga = donocarga;
    }

    /**
     * @return the insert_date
     */
    public Date getInsert_date() {
        return insert_date;
    }

    /**
     * @param insert_date the insert_date to set
     */
    public void setInsert_date(Date insert_date) {
        this.insert_date = insert_date;
    }

 
  
          
          
          
}
