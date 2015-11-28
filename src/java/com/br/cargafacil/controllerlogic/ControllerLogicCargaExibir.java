/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.controllerlogic;

import com.br.cargafacil.objetos.Cargas;
import com.br.cargafacil.objetos.Login;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 *
 * @author pepag
 */
public class ControllerLogicCargaExibir implements ControllerLogic {

    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */ 
    
    
    @Override
    public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
            Cargas cargas = new Cargas();
            Login login  = new Login();
            HttpSession session = request.getSession(true);
        
          login =  (Login) session.getAttribute("login");
          cargas.setIdcarga(Integer.parseInt(request.getParameter("idcarga")));
          
            
          
          
          
          
      
            
            
            
        
    
    
    
    
    
    
    
    
    
    }

}
