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
public class ControllerLogicAlterarCarga implements ControllerLogic {

    @Override
    public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                   
               
        HttpSession session = request.getSession(true);
        Cargas cargas = new Cargas();
        Login login = new Login ();
        CargasDAO cargasdao = new DAOFactory().createCargasDAO();
     
        login = (Login) session.getAttribute("login");
         
        cargas.setDonocarga( Integer.parseInt(login.getId()));
        
        /**
         * Obtendo os valores do jsp e passando os parametros para o meu objeto
         * cargas
         */
        cargas.setIdcarga(Integer.parseInt(request.getParameter("idcarga")));
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
        cargasdao.editar(cargas);    
    
        request.getRequestDispatcher("Controller?page=ControllerLogicMinhasCargas").forward(request, response);
}
}
