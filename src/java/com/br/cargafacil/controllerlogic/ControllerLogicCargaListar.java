/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.controllerlogic;

import com.br.cargafacil.dao.CargasDAO;
import com.br.cargafacil.objetos.Cargas;
import com.br.cargafacil.util.DAOFactory;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pepag
 */
public class ControllerLogicCargaListar implements ControllerLogic {

    @Override
    public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       CargasDAO cargasdao = new DAOFactory().createCargasDAO();
       List<Cargas> cargas = cargasdao.Listar();
       
       request.getSession().setAttribute("cargas", cargas);
       request.setAttribute("cargas", cargas);
       request.getRequestDispatcher("cargaslistar.jsp").forward(request, response);
    
    
    
    
    
    
    
    
    
    }

}
