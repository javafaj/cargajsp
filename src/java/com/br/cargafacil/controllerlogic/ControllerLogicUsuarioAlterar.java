/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.cargafacil.controllerlogic;

import com.br.cargafacil.dao.UsuarioDAO;
import com.br.cargafacil.objetos.Usuario;
import com.br.cargafacil.util.DAOFactory;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.br.cargafacil.controllerlogic.ControllerLogicLogin;
import com.br.cargafacil.objetos.Login;
import javax.servlet.http.HttpSession;

/**
 *
 * @author pepag
 */
public class ControllerLogicUsuarioAlterar implements ControllerLogic{

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
            Usuario usuario = new Usuario();
            Login login = new Login();
                
                login = (Login) session.getAttribute("login");
                
                usuario.setIdusu(login.getId());
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
                
                usuariodao.editar(usuario);
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
