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
        <link rel="icon" href="css/icones/carro.ico" sizes="24x24"/>
        <title>Carga Facil
        </title>
    </head>
    <body>
                 
        <div id ="tudo">  
          <jsp:include page="menu.jsp"/>
           <h5>&nbsp;</h5>
           <h5>&nbsp;</h5>
            <div id="conteudo-slide">
                <jsp:include page="login.jsp"/>
                <jsp:include page="slid.jsp"/>          
            </div>         
            
          
           <div id="rodape">
             <div align="center">
            <h5>&nbsp;</h5>
            <h5>&nbsp;</h5>
           
           
             Coptyright © 2015 - Carga Fácil. Todos os direitos reservados. </div> <h5 align="center">&nbsp;</h5>
            <div align="center">
               
           </div>     
        </div>    
            
</body>
</html>
