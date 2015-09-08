<%-- 
    Document   : index.jsp
    Created on : 04/09/2015, 19:23:03
    Author     : pepag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/positiontela.css"/>
        <title>Carga Facil</title>
    </head>
    <body>
          
                 
        <div id ="tudo">  
          
            <div id="topo">
                
                <jsp:include page="topo.jsp"/>
                <jsp:include page="menu.jsp"/>
               
            </div>
            
           
            <div id="conteudo-slide">
                <jsp:include page="login.jsp"/>
                <jsp:include page="slid.jsp"/>          
            </div>         
           
        </div>
            
            <div id="rodape">
                rodapé
           </div>
                      
         </div>
</body>
</html>
