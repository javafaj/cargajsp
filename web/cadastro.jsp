<%-- 
    Document   : cadastro
    Created on : 07/09/2015, 19:48:50
    Author     : pepag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/positiontela.css"/>
        <title>Cadastre-se </title>
    </head>
    <body>
         
       <div id ="tudo">  
            <jsp:include page="menu.jsp"/>
            
           
            <div id="conteudo-include">
                <div id="cadastro">
                    <div>
                      <label for="nome" class="label">Nome</label>
                      <input type="text" name="nome" id="nome" class="input" value="" size="10px" style="position: relative;top: 20px;" />
                    </div>
                    <input type="text" name="cpf" value="" size="10px" style="position: relative;top: 20px;" />
                </div>
            </div>         
           
        
            <div id="rodape">
                rodapé
           </div>
                      
         </div>
    </body>
</html>
