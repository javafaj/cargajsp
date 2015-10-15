<%-- 
    Document   : newjsp
    Created on : 10/10/2015, 14:53:22
    Author     : pepag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste inicial JSP</title>
    </head>
    <body>

        <form name="formulario1" action="Conexao" method="POST">
        <label>Nome:</label><input type="text" name="nome" value="" size="150" />
        <input type="submit" value="Enviar" name="enviar" />
        </form>
          
        <%= 
                request.getAttribute("nomeCompleto")
        
        
        
        %>
        


    </body>
</html>
