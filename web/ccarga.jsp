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
                     <!----- 1  --> 
                     
                            <div id="input">
                            <a id="labelescrita_2">Situação da Carga: </a> 
                            <div id="divCenter">
                            <input type="text" name="" class="input-estilo"/> 
                            </div>
                            </div>  
                            
                     <h5>&nbsp;</h5>  
                     <!----- 2  -->
                            <div id="input">
                            <a id="labelescrita_2">Data Carregamento:</a>
                             <div id="divCenter">
                            <input type="text" name="dtcarr"class="input-estilo" />
                             </div>
                            </div>  
                     <h5>&nbsp;</h5>  
                     <!----- 3  --> 
                            <div id="input">
                            <a id="labelescrita_2">Data Agendamento: </a>
                             <div id="divCenter">
                            <input type="text" name="dtcarr"class="input-estilo" /> 
                             </div>
                            </div>    
                     <h5>&nbsp;</h5>  
                    <!----- 4  --> 
                            <div id="input">
                            <a id="labelescrita_2">Restrição Hora: </a>
                            <div id="divCenter">
                            <input type="text" name="dtcarr"class="input-estilo" />
                            </div>
                            </div>   
                    <h5>&nbsp;</h5>  
                    <!----- 5  --> 
                            <div id="input">
                            <a id="labelescrita_2">Peso Bruto: </a>
                            <div id="divCenter">
                            <input type="text" name="dtcarr"class="input-estilo" />
                            </div>
                            </div>     
                    <h5>&nbsp;</h5>  
                    <!----- 6  --> 
                            <div id="input">
                            <a id="labelescrita_2">Tipo Carregamento: </a>
                            <div id="divCenter">
                            <input type="text" name="dtcarr"class="input-estilo" /> 
                            </div>
                            </div>       
                    <h5>&nbsp;</h5>  
                    <!----- 7  --> 
                            <div id="input">
                            <a id="labelescrita_2">Qtd Produto:</a>
                            <div id="divCenter">
                            <input type="text" name="dtcarr"class="input-estilo" /> 
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
