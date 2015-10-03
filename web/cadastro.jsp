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
         
       <div id ="tudo">  
            <jsp:include page="menu.jsp"/>
            
             <div id="conteudo-include">
                <div id="cadastro">
                    
                         <div id="inputmenu">
                             <div id="labelescrita_2">
                                    <label>Nome Fantasia:</label>
                             </div>
                             <input type="text" name="dtcarr"class="input-estilo" /> 
                         
                         <div id="input">
                                <div id="labelescrita_2">
                                    <label>Telefone:</label>
                                </div>
                             
                             <input type="text" name="dtag" class="input-estilo"/> 
                             <div id="input">
                                <div id="labelescrita_2">
                                    <label>Celular:</label>
                                </div>
                             
                                <input type="text" name="rsthora" class="input-estilo"/> 
                               <div id="input">
                                <div id="labelescrita_2">
                                    <label>E-mail:</label>
                                </div>
                             
                                <input type="text" name="pesobruto" class="input-estilo"/> 
                             
                            </div>
                                 <div id="input">
                                <div id="labelescrita_2">
                                    <label>Razao Social:</label>
                                </div>
                             
                                     <input type="text" name="tipcarr" class="input-estilo"/>
                                  <div id="input">
                                <div id="labelescrita_2">
                                    <label> Tipo Carregamento:</label>
                                </div>
                             
                                      <input type="text" name="qtd" class="input-estilo"/>
                                <div id="input">
                                     <div id="labelescrita_2">
                                    <label>CNPJ:</label>
                                </div>
                             
                                    <input type="text" class="input-estilo"/>
                                    
                                </div>
                             
                        
                        </div>
                        </div>
                        </div> 
                        </div>
                        </div>
                        </div>
                        </div>
           
        
            <div id="rodape">
           </div>
                      
         </div>
    </body>
</html>
