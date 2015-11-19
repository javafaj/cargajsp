/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.util;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author pepag
 */
public class GetDate {
 
   
 public Date getdate(){   
    
    
    Date data = new Date(System.currentTimeMillis());    
    SimpleDateFormat formatarDate = new SimpleDateFormat("dd/MM/yyyy"); 
    formatarDate.format(data);
    
    return data;
 }

 
    
    
}
