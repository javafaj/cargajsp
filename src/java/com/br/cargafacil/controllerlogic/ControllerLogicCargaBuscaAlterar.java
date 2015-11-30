/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.controllerlogic;

import com.br.cargafacil.dao.CargasDAO;
import com.br.cargafacil.objetos.Cargas;
import com.br.cargafacil.objetos.Login;
import com.br.cargafacil.util.DAOFactory;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author pepag
 */
public class ControllerLogicCargaBuscaAlterar implements ControllerLogic{

    @Override
    public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            Cargas cargas = new Cargas();
            Login login  = new Login();
            HttpSession session = request.getSession(true);
            CargasDAO cargasdao = new DAOFactory().createCargasDAO();
        
          login =  (Login) session.getAttribute("login");
          cargas.setIdcarga(Integer.parseInt(request.getParameter("idcarga")));
          
          cargasdao.buscaalterar(cargas);
          request.setAttribute("minhascargadetalhes", cargas);  
    
    
            request.getRequestDispatcher("alterarcarga.jsp").forward(request, response);
    
    }

}