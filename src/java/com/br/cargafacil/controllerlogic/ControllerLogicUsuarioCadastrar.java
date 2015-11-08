/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.controllerlogic;

import com.br.cargafacil.dao.UsuarioDAO;
import com.br.cargafacil.objetos.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.br.cargafacil.util.DAOFactory;

/**
 *
 * @author pepag
 */
public class ControllerLogicUsuarioCadastrar implements ControllerLogic{

    @Override
    public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
         Usuario usuario = new Usuario();
                
                usuario.setNomefantasia(request.getParameter("nomefantasia"));
                usuario.setRazaosocial(request.getParameter("razaosocial"));
                usuario.setCidade(request.getParameter("cidade"));
                usuario.setUf(request.getParameter("uf"));
                usuario.setSenha(request.getParameter("senha"));
                usuario.setConfsenha(request.getParameter("confsenha"));
                usuario.setEmail(request.getParameter("email"));
                usuario.setCel(Integer.parseInt(request.getParameter("celular")));
                usuario.setTelefone (Integer.parseInt(request.getParameter("telefone")));
                usuario.setCnpj(Integer.parseInt(request.getParameter("cnpj")));
                usuario.setIe(Integer.parseInt(request.getParameter("ie")));
                usuario.setCep(Integer.parseInt(request.getParameter("cep")));
                UsuarioDAO usuariodao = DAOFactory.createUsuarioDAO();
                usuariodao.inserir(usuario);
    
                request.getRequestDispatcher("index.jsp").forward(request, response);
    }
    
}
