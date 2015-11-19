/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.teste;
import com.br.cargafacil.util.GetDate;
import java.nio.channels.GatheringByteChannel;
import java.sql.Date;
import java.text.SimpleDateFormat;
/**
 *
 * @author pepag
 */
public class Teste {
    public static void main(String[] args) {
        
       // System.out.println(Calendar.getInstance().getTime());
     
        GetDate gd = new GetDate();       
        
        System.out.println(gd.getdate());
        
    }
}
