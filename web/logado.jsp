<%-- 
    Document   : logado
    Created on : 29/10/2015, 00:04:57
    Author     : pepag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="login"  class="com.br.cargafacil.objetos.Login" scope="request"/>
    <form name="logado" action="/ProjectCargaFacil/Controller?page=ControllerLogicLogin" method="GET">
                    <li>
                        <input type="text" name="session" value="${login.id}">
                    </li>
    </form>
                    
                    
    </body>
</html>
