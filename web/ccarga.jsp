<%-- 
    Document   : ccarga
    Created on : 07/09/2015, 14:04:14
    Author     : pepag
    Pagina para cadastro de carga
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/positiontela.css"/>
        <link rel="stylesheet" type="text/css" href="css/cadastros.css"/>
        <link rel="icon" href="css/icones/carro.ico" sizes="24x24"/>
        <title>Cadastro de Cargas</title>
    </head>
    <body>
         <div id ="tudo">  
             <jsp:include page="menulogado.jsp"/>            
             <div id="conteudo-include">
                <div id="cadastro">
                    
                         <div id="inputmenu">
                             <div id="labelescrita_2">
                                 <label for="dtcarr">Situação Carga:</label>
                             </div>
                             <input id="dtcarr" type="text" name="dtcarr"class="input-estilo" /> 
                         
                         <div id="input">
                                <div id="labelescrita_2">
                                    <label>Data Carregamento:</label>
                                </div>
                             
                             <input type="text" name="dtag" class="input-estilo"/> 
                             <div id="input">
                                <div id="labelescrita_2">
                                    <label>Data Agendamento:</label>
                                </div>
                             
                                <input type="text" name="rsthora" class="input-estilo"/> 
                               <div id="input">
                                <div id="labelescrita_2">
                                    <label>Restrição Hora:</label>
                                </div>
                             
                                <input type="text" name="pesobruto" class="input-estilo"/> 
                             
                            </div>
                                 <div id="input">
                                <div id="labelescrita_2">
                                    <label>PesoBruto:</label>
                                </div>
                             
                                     <input type="text" name="tipcarr" class="input-estilo"/>
                                  <div id="input">
                                <div id="labelescrita_2">
                                    <label> Tipo Carregamento:</label>
                                </div>
                             
                                      <input type="text" name="qtd" class="input-estilo"/>
                                <div id="input">
                                     <div id="labelescrita_2">
                                    <label>Qtd Produto:</label>
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
                       
                      
                        
                      
                        
                        
                </div>              
            </div>         
           
        
            <div id="rodape">
           </div>
                      
         </div>
        
    </body>
</html>
