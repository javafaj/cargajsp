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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/positiontela.css"/>
        <link rel="icon" href="css/icones/carro.ico" sizes="24x24"/>
        <link rel="stylesheet" type="text/css" href="css/cargas.css"/>
        <link rel="stylesheet" type="text/css" href="css/cadastros.css"/>
        <link rel="stylesheet" type="text/css" href="css/cadastro_2.css"/>
        <title>Detalhes da Carga</title>
    </head>
    <body>
    <jsp:useBean id="cargadetalhes" class="com.br.cargafacil.objetos.Cargas" scope="request" />
    <jsp:useBean id="login" class="com.br.cargafacil.objetos.Login" scope="session" /> 


    
        <div id ="tudo">  
            <jsp:include page="menu.jsp"/>      
                    <br>                       
          
<div id="conteudo-include">
                     
                 <div id="colunas">         
              <div id="input-position_1">           
		<ul>


                    <li>
                        <label id="labelescrita_1"> Situação Carga:</label>
                            <select name ="sitcarga" class="input-estilo_1" >
                            <option hidden="">${cargadetalhes.sitcarga}</option>
                            <option> Aguardando Negociação </option>
                            <option> Aguardando Confirmação de Entrega</option>
                            <option> Carregamento Concluido</option> --%>
                            </select>
                    </li>             
                                                   
			<br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Data Carregamento:</label>                            
                            <input value ="${cargadetalhes.datacarregamento} " placeholder="DD/MM/AAAA" title="Data Carregamento" required="required" type="text" name="datacarregamento" class="input-estilo_1"/>
                    	</li>  
        
           
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Data Agendamento:</label>                            
                            <input value="${cargadetalhes.dataagendamento}" placeholder="DD/MM/AAAA" title="Data Agendamento" required="required" type="text" name="dataagendamento" class="input-estilo_1"/>
                    	</li>  
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Horario de Restrição:</label>                            
                            <input value="${cargadetalhes.restrihora}" placeholder="HH:MM" title="Horario de Restrição" type="text" name="restrihora"  class="input-estilo_1"/>
                    	</li> 
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Tipo Carregamento:</label>                            
                             <select name ="tipocarregamento" class="input-estilo_1">
                                    <option hidden=""> ${cargadetalhes.tipcarregamento} </option>
                                    <option> Paletizado </option>
                                    <option> Batido</option>
                             </select>
                        </li> 
                        <br>
                        <br>
                        
                        <li>  <label id="labelescrita_1">Estimativa de Preço: R$</label>                            
                            <input value="${cargadetalhes.estimativapreco}" placeholder="1000.000,30" title="Estimativa de Preço" type="text" name="estimativapreco"  class="input-estilo_1"/>
                    	</li> 
                        
                        
                        
                         </ul>     
                        </div>  
                            
             <div id="input-position_1">           
		<ul>
                                       
                     <li>  <label id="labelescrita_1">Rastreamento:</label>                            
                        <select name ="rastreamento" class="input-estilo_1">
                            <option hidden=""> ${cargadetalhes.rastreamento}</option>
                            <option> Sim </option>
                            <option> Não </option>
                        </select>
                     </li>  
                               
			<br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Tipo de Frete:</label>                            
                          <select name ="tipofrete" class="input-estilo_1">
                                <option hidden=""> ${cargadetalhes.tipofrete} </option>
                                <option> FOB </option>
                                <option> CIF </option>
                          </select>
                        </li>  
        
           
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Cidade Carregamento:</label>                            
                            <input value="${cargadetalhes.cidcarregamento}" placeholder="Exemplo: Amparo" title="Cidade Carregamento"  name="cidcarregamento" required="required"  type="text" class="input-estilo_1"/>
                    	</li>  
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Cidade Descarga:</label>                             
                            <input value="${cargadetalhes.ciddescarga}" placeholder="Exemplo : Amparo"  title="Cidade Descarga" name="ciddescarga" required="required" type="text" class="input-estilo_1"/>
                    	</li>                         
                        
                        <br>
                        <br>
                        
                        <li>  <label id="labelescrita_1">Qtd.Produtos:</label>                             
                            <input value="${cargadetalhes.qtdprodutos}"placeholder="1000000" title="Qtd.Produtos" name="qtdprodutos" type="text" required="required" class="input-estilo_1"/>
                    	</li> 
                        <br>
                        <br>
                          <li>  <label id="labelescrita_1">Tipo de Carga:</label>                            
                          <select name ="tipocarga" class="input-estilo_1">
                              <option hidden=""> ${cargadetalhes.tipocarga} </option>
                            <option> Carga Viva </option>
                            <option> Alimenticia </option>
                            <option> Produtos em geral </option>
                            <option> Madeira </option>
                          </select>
                        </li> 
                           
                   </ul>       
                   </div>  
        </div>
        </div>


            <div id="rodape">
            <div align="center">
            <h5>&nbsp;</h5>         
            Coptyright © 2015 - Carga Fácil. Todos os direitos reservados.
            </div> 
            </div>

        </div>
</body>
</html>
