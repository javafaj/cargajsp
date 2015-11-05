/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.controllerlogic;

import com.br.cargafacil.dao.LoginDAO;
import com.br.cargafacil.objetos.Login;
import com.br.cargafacil.util.DAOFactory;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pepag
 */
public class ControllerLogicLogin implements ControllerLogic {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

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
    public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Login login = new Login();
        login.setNome(request.getParameter("usuario"));
        login.setSenha(request.getParameter("senha"));
        LoginDAO logindao = DAOFactory.createLoginDAO();
        logindao.Entrada(login);
        /*via sessao consegue funcionar , JSP ->SERVLET -> JDBC -> BD -> JDBC->VALIDAÇÃO -> JDBC SETANDO SOMENTE O NUMERO DO ID E RETORNANDO PARA O
        -> SERVLET -> SETANDO O NUMERO DE ID NA SESSAO - > REDIRECIONANDO PARA PAGINA DE LOGADO EXIBINDO EM UM INPUT O NUMERO DO ID DO USER
        ** NAO FUNCIONOU DIRETO SEM PASSAR PELA SESSAO PERGUNTAR AO CALDERONI*/
        //setando valor O LOGIN NA SESSAO
        
        
        request.getSession().setAttribute("login", login);
        request.setAttribute("login", login);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
        
    }

