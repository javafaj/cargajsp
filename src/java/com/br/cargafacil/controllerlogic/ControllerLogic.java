/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.controllerlogic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 *
 * @author pepag
 */
public interface ControllerLogic {
    
    public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException;
    
    
}
