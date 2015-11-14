<%-- 
    Document   : menu
    Created on : 07/09/2015, 20:42:42
    Author     : pepag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" type="text/css" href="css/perfil.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/menucss.css"/>
        <link rel="stylesheet" type="text/css" href="css/icones/iconesmenu.css"/>
        <link rel="icon" href="css/icones/carro.ico" sizes="24x24"/>
    </head>
    <body>
        
   <jsp:useBean id="login"  class="com.br.cargafacil.objetos.Login" scope="session" />
        <div id="topo">
            <div id="menu">
            <div id="menu-decorate">
            </div>
                
            <div id="cssmenu">
                <ul>
                <li><a href="index.jsp"><img src="css/icones/cagashome.png" class="icones-32">Inicio</a></li>
                <li><a href="vcarga.jsp"><img src="css/icones/Cargas-32.png" class="icones-32">Verificar Cargas</a></li>
<% if(login.getId() == ""){

                            
%>
                <li><a href="cadastro_2.jsp"><img src="css/icones/Keyboard-32.png" class="icones-32">Cadastre-se</a></li>
<%                       }  
%>
<%
    if(login.getId() != ""){       
%>       
                <li><a href="ccarga.jsp"><img src="css/icones/Shipped-32.png" class="icones-32">Cadastre suas Cargas</a></li>
                <li><a href="minhascargas.jsp"><img src="css/icones/Handle With Care-32.png" class="icones-32">Minhas Cargas</a></li>
<%    
                           }
%> 
                <li><a href="informacao.jsp"><img src="css/icones/Info-32.png" class="icones-32">Quem Somos</a></li>
                </ul>    
                </div>
<%
    if(login.getId() != ""){       
%>       
        <jsp:include page="perfil.jsp"/>
<%    
                           }
%> 
            </div>
            </div>
</body>
</html>
