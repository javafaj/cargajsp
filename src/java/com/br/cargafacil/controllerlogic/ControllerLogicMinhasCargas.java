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
import static java.lang.System.out;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author pepag
 */
public class ControllerLogicMinhasCargas implements ControllerLogic {

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
        
        HttpSession session = request.getSession(true);
        Login login = new Login();
        login = (Login) session.getAttribute("login");
        CargasDAO cargasdao = new DAOFactory().createCargasDAO();        
        List<Cargas> minhascargas = cargasdao.MinhasCargas(login);
           
        request.getSession().setAttribute("minhascargas", minhascargas);
        request.setAttribute("minhascargas", minhascargas);
        request.getRequestDispatcher("minhascargas.jsp").forward(request, response);
        
        
    }

}
