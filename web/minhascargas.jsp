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
        <link rel="stylesheet" type="text/css" href="css/cargas.css"/>
        <link rel="icon" href="css/icones/carro.ico" sizes="24x24"/>
        <title>Minhas Cargas</title>
    </head>
    <body>
    <jsp:useBean id= "login"  class="com.br.cargafacil.objetos.Login" scope="session"/>
    <jsp:useBean id= "mcargas"  class="com.br.cargafacil.objetos.Cargas" scope="session"/>
         <div id ="tudo">  
              <jsp:include page="menu.jsp"/>            
                          <br>
              <br>
              <br>
              <br>
              <br>
              <br>
<%
    if(login.getId() != ""){
%>

 <div id="conteudo-include">             

 <% CargasDAO cargasdao = new DAOFactory().createCargasDAO();
       List<Cargas> cargas = (List <Cargas>)request.getAttribute("minhascargas");
       for (Cargas carga : cargas){%>
       <form name ="alterarcarga<%=carga.getIdcarga()%>" action="/ProjectCargaFacil/Controller?page=ControllerLogicCargaBuscaAlterar" method="POST">
           
       <p style="outline-style: none;" class="borda" >
           <input type="hidden" name="idcarga" value = "<%=carga.getIdcarga()%>"/>
           <label class="linha-1">Tipo Carga:</label>
           <a class="linha-1"><%=carga.getTipocarga()%></a>
           <br>
           <br>
           <label class="linha-2">Situação Carga:</label>
           <a class="linha-2"><%=carga.getSitcarga()%></a>
           <br>
           <br>
           <label class="linha-3">Tipo Frete:</label>
           <a class="linha-3"><%=carga.getTipofrete()%></a>
           <br>
           <br>
           <label class="linha-2-1">Data Carregamento:</label>
           <a class="linha-2-1"><%=carga.getDatacarregamento()%></a
           <br>
           <br>
           <label class="linha-2-2">Data Agendamento:</label>
           <a class="linha-2-2"><%=carga.getDataagendamento()%></a>
           <br>
           <br>
           <label class="linha-2-3">Qtd.Produtos:</label>
           <a class="linha-2-3"><%=carga.getQtdprodutos()%>  KG</a>
           <br>
           <br>
           <label class="linha-1-3">Lançado Por:</label>
           <a class="linha-1-3"><%=carga.getDononomefan()%></a>
          
       
       <br>
       <input type="submit" value="Alterar" name="alterar" class="btn-detalhes" />
       </p>
       </form>
       <br>
       <br>
<%  
  }
%>
<%
 } else{
    
    request.getRequestDispatcher("errospage/erro.jsp").forward(request, response);
    
    }
%>
 <div id="rodape">
            <div align="center">
            <h5>&nbsp;</h5>         
            Coptyright © 2015 - Carga Fácil. Todos os direitos reservados. </div> 
            <div align="center">
           </div>
           </div>
</div>
</div>         
          
    </body>
</html>
