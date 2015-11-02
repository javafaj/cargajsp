    package <especificar o nome da package>;  
      
    import java.io.*;  
    import java.util.*;  
      
    import javax.servlet.ServletException;  
    import javax.servlet.http.*;  
      
    public class ListaServlet extends HttpServlet {  
      
        protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
                  
            Aluno aluno = null;  
                String nome = request.getParameter("nome");  
                String curso = request.getParameter("curso");  
               
                List lista = null;  
               
                try{  
                    AlunoDAO alunoDAO = new AlunoDAO();  
                        lista = alunoDAO.listaAlunos(null);  
                request.setAttribute("listaAlunos", lista);  
                response.sendRedirect("lista.jsp");       
                } catch(Exception e ){  
                    // Tratar a exceção    
                }    
            }  
          
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
                processRequest(request, response);  
            }  
           
            protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
                processRequest(request, response);  
            }  
    }  