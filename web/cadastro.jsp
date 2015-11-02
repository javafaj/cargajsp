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
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <link rel="stylesheet" type="text/css" href="css/positiontela.css"/>
        <link rel="icon" href="css/icones/carro.ico" sizes="24x24"/>
        <link rel="stylesheet" type="text/css" href="css/cadastros.css"/>
        <title>Cadastre-se </title>
    </head>
    <body>
<form name="formcadastro" action="/ProjectCargaFacil/Controller?page=ControllerLogicUsuarioCadastrar" method="POST">      
<div id ="tudo">  
     <jsp:include page="menu.jsp"/>
            
<div id="conteudo-include">
    
    <div id="colunas">         
                    
        <div id="input-position_1">
            
              <label id="labelescrita_1">Nome Fantasia:</label>
              <input type="text" name="nomefantasia"class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">Razao Social:</label>
              <input type="text" name="razaosocial"class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">CNPJ:</label>
              <input type="text" name="cnpj" class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">CEP:</label>
              <input type="text" name="cep" class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">Cidade:</label>
              <input type="text" name="cidade"class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">UF:</label>
              <input type="text" name="uf"class="input-estilo_1" size="30"/>
              <br>
              <br>
              </div>

        <div id="input-position_2">

                <label id="labelescrita_1">IE:</label>
                <input type="text" name="ie"class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1">Telefone:</label>
                <input type="text" name="telefone" class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1">Celular:</label>
                <input type="text" name="celular" class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1">E-mail:</label>
                <input type="text" name="email" class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1"> Senha:</label>
                <input type="password" name="senha" class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1">Confirm.senha:</label>
                <input type="password" name="confsenha"class="input-estilo_1" size="30"/>

                  <br>
                  <br>

              </div>
        
        <div id="botoes-area">
            <input type="submit" value="Enviar" name="enviar" />
         </div>

</div>
</div>                          
</div>                        
                    
<div id="rodape">
<div align="center">
<h5>&nbsp;</h5>         
Coptyright © 2015 - Carga Fácil. Todos os direitos reservados. </div> 
<div align="center">
</div>
</div>
     
     
</form>
</body>
</html>
