<%-- 
    Document   : minhascargas
    Created on : 12/09/2015, 18:23:06
    Author     : pepag
--%>

<%@page import="com.br.cargafacil.util.DAOFactory"%>
<%@page import="com.br.cargafacil.dao.CargasDAO"%>
<%@page import="com.br.cargafacil.objetos.Cargas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/positiontela.css"/>
        <link rel="icon" href="css/icones/carro.ico" sizes="24x24"/>
        <title>Minhas Cargas</title>
    </head>
    <body>
<jsp:useBean id="cargas_2"  class="com.br.cargafacil.objetos.Cargas" scope="request"/>
 
        <div id ="tudo">  
              <jsp:include page="menu.jsp"/>            
              <br>
              <br>
              <br>
              <br>
<div id="conteudo-include">
               
<%   CargasDAO cargasdao = new DAOFactory().createCargasDAO();
       List<Cargas> cargas = cargasdao.Listar();
       for (Cargas carga : cargas){%>
      
       <%=carga.getIdcarga()%> || <a><%=carga.getSitcarga()%></a>
       <br>
       <a><%=carga.getTipocarga()%></a>
       
       
       <br>
       <br>
       
  
<%  
  }
%>
                
                
                
                
                
</div>         
           
            <div id="rodape">
            <div align="center">
            <h5>&nbsp;</h5>         
           
            Coptyright © 2015 - Carga Fácil. Todos os direitos reservados. </div> 
            <div align="center">
               
           </div>
           </div>
                         
         </div>
        
    </body>
</html>
