<%-- 
    Document   : minhascargas
    Created on : 12/09/2015, 18:23:06
    Author     : pepag
--%>



<%@page import="com.br.cargafacil.util.DAOFactory"%>
<%@page import="com.br.cargafacil.objetos.Cargas"%>
<%@page import="java.util.List"%>
<%@page import="com.br.cargafacil.dao.CargasDAO"%>
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
        <jsp:useBean id= "mcargas"  class="com.br.cargafacil.objetos.Cargas" scope="session"/>
         <div id ="tudo">  
              <jsp:include page="menu.jsp"/>            
                          <br>
              <br>
              <br>
              <br>
              <br>
              <br>
<div id="conteudo-include">
               

 <% CargasDAO cargasdao = new DAOFactory().createCargasDAO();
       List<Cargas> cargas = (List <Cargas>)request.getAttribute("minhascargas");
       for (Cargas carga : cargas){%>
       <div> 
       
       <a><%=carga.getTipocarga()%></a>
       <a><%=carga.getSitcarga()%></a>
       <a><%=carga.getTipofrete()%></a>
       <a><%=carga.getDatacarregamento()%></a>
       <a><%=carga.getDataagendamento()%></a>
       <a><%=carga.getQtdprodutos()%>  KG</a>
       <a><%=carga.getCidcarregamento()%></a>
       <a><%=carga.getCiddescarga()%></a>
       <a><%=carga.getRastreamento()%></a>
       <a><%=carga.getRestrihora()%></a>
       <a><%=carga.getInsert_date()%></a>
       <a>R$<%=carga.getEstimativapreco()%></a>
       <br>
       <br>
  
<%  
  }
%>      



</div>
       
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
