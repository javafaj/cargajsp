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
        <link rel="icon" href="css/icones/carro.ico" sizes="24x24"/>
        <link rel="stylesheet" type="text/css" href="css/cadastros.css"/>
        <title>Cadastre-se </title>
    </head>
    <body>
   <form>      
<div id ="tudo">  
     <jsp:include page="menu.jsp"/>
            
<div id="conteudo-include">
    
    <div id="colunas">         
              <label id="labelescrita_1">Nome Fantasia:</label>
              <input type="text" name="telefone"class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">Razao Social:</label>
              <input type="text" name="nomef"class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">CNPJ:</label>
              <input type="text" name="nomef"class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">CEP:</label>
              <input type="text" name="nomef"class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">Cidade:</label>
              <input type="text" name="nomef"class="input-estilo_1" size="30"/>
              <br>
              <br>
              <label id="labelescrita_1">UF:</label>
              <input type="text" name="nomef"class="input-estilo_1" size="30"/>
              <br>
              <br>
              </div>

        <div id="input-position_2">

                <label id="labelescrita_1">IE:</label>
                <input type="text" name="telefone"class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1">Telefone:</label>
                <input type="text" name="telefone"class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1">Celular:</label>
                <input type="text" name="telefone"class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1">E-mail:</label>
                <input type="text" name="nomef"class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1"> Senha:</label>
                <input type="password" name="nomef"class="input-estilo_1" size="30"/>

                  <br>
                  <br>

                <label id="labelescrita_1">Confirm.senha:</label>
                <input type="password" name="nomef"class="input-estilo_1" size="30"/>

                  <br>
                  <br>

              </div>
        
        <div id="botoes-area">
            <button class="botoes-estilo-cancelar">Cancelar</button>
            <button name="cadastrar" class="botoes-estilo-ok">Cadastrar</button>
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
