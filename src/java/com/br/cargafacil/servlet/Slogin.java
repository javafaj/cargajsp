/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.br.cargafacil.objetos.Login;
import javax.servlet.http.HttpSession;
/**
 *
 * @author pepag
 */
public class Slogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
        /*realiza a instancia de um novo objeto do tipo login*/
        Login l = new Login();
        /*recebe os valores do JSP e seta nos atributos do abjeto login*/
        l.setNome(request.getParameter("usuario"));
        l.setSenha(request.getParameter("senha"));
        
        /*setando o objeto inteiro em um atributo*/
        request.setAttribute("login", l);
        
        /**
         * Apos coletar os dados ele realiza o dispacher para a pagina outra pagina , index com menu logado / pagina inicial
         * 
         */
        /*
        request.getRequestDispatcher("index2.jsp").forward(request, response);*/
        
      
        
        
        
        
  }      
      
        

        
        
        
        
        
        
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


  
        /*/*criando uma sessao*/
        /*HttpSession sessao = request.getSession();
        
        /*setando atribuito dentro da sessao
        
        sessao.setAttribute("usuario", l);
        */
        