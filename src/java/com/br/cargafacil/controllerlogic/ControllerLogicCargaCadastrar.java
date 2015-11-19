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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author pepag
 */
public class ControllerLogicCargaCadastrar implements ControllerLogic {

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
    public void executar(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
    
        /**
         * Instanciando objetos :
         * Sessao corrente
         * Login para obter dados da sessao
         * Cagas para preencher os dados da carga digitados no jsp
         * CargasDAO para que realize a persistencia com o banco de dados 
         */
        HttpSession session = request.getSession(true);
        Cargas cargas = new Cargas();
        Login login = new Login ();
        CargasDAO cargasdao = new DAOFactory().createCargasDAO();
       /**
        * Obtendo o id do usuario logado para que possa estar
        * referenciando no banco de dados o usuario que inseriu a carga
        * e preenchendo o dono da carga
        */
        login = (Login) session.getAttribute("login");
        
        cargas.setDonocarga( Integer.parseInt(login.getId()));
        
        /**
         * Obtendo os valores do jsp e passando os parametros para o meu objeto
         * cargas
         */
        cargas.setSitcarga(request.getParameter("sitcarga"));
        cargas.setDatacarregamento(request.getParameter("datacarregamento"));
        cargas.setDataagendamento (request.getParameter("dataagendamento"));
        cargas.setRestrihora(request.getParameter("restrihora"));
        cargas.setTipcarregamento(request.getParameter("tipocarregamento"));
        cargas.setEstimativapreco(Integer.parseInt(request.getParameter("estimativapreco")));
        cargas.setRastreamento(request.getParameter("rastreamento"));
        cargas.setTipofrete(request.getParameter("tipofrete"));
        cargas.setCidcarregamento(request.getParameter("cidcarregamento"));
        cargas.setCiddescarga(request.getParameter("ciddescarga"));
        cargas.setQtdprodutos(Integer.parseInt(request.getParameter("qtdprodutos")));
        cargas.setTipocarga(request.getParameter("tipocarga"));
      
        /**
         * enviando para minha classe dao persistir no banco de dados
         */
        cargasdao.inserir(cargas);
        
        /**
         * redirecionando para pagina minhas cargas
         */
        request.getRequestDispatcher("minhascargas.jsp").forward(request, response);
        
        
        
        
   
        
        
        
      
    }
}