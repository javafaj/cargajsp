<%-- 
    Document   : minhascargas
    Created on : 12/09/2015, 18:23:06
    Author     : pepag
--%>

<%@page import="com.br.cargafacil.util.DAOFactory"%>
<%@page import="com.br.cargafacil.dao.CargasDAO"%>
<%@page import="com.br.cargafacil.objetos.Cargas"%>
<%@page import="com.br.cargafacil.controllerlogic.ControllerLogicCargaListar"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <script>
    function target_popup(form) {
    window.open('', 'formpopup', 'width=900,height=600,scrollbars=yes,resizable=yes');
  form.target = 'formpopup';
  setTimeout(function(){form.reset();},2000);
}
    
    
    </script>
        
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/positiontela.css"/>
        <link rel="icon" href="css/icones/carro.ico" sizes="24x24"/>
        <link rel="stylesheet" type="text/css" href="css/cargas.css"/>

        <title>Todas as Cargas</title>
    </head>
    <body>
  
<div id ="tudo">  
              <jsp:include page="menu.jsp"/>            
              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
<div id="conteudo-include">
<%List<Cargas> cargas = (List <Cargas>)request.getAttribute("lcargas");
       for (Cargas carga : cargas){
%> 
<form name="detalhes<%=carga.getIdcarga()%>" action="/ProjectCargaFacil/Controller?page=ControllerLogicCargaExibir" method="POST"> 
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
       <input type="submit" value="Detalhes" name="detalhes" class="btn-detalhes" />
       </p>
</form>
<%
}
%>
<div id="rodape">
        
        <div align="center">
            <h5>&nbsp;</h5>         
            Coptyright © 2015 - Carga Fácil. Todos os direitos reservados.
         </div> 
       
</div>

</div>         
</div>           
</body>
</html>
