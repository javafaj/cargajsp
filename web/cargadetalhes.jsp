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

    <div id ="tudo">  
            <jsp:include page="menu.jsp"/>      
            <div id="conteudo-include">
               
                  <p style="outline-style: none;" class="borda-detalhescarga" >
                  <label class="linhad-1">Dono da Carga:</label>
                  <a class="linhad-1">${cargadetalhes.dononomefan}</a>
                  <br>
                  <br>
                  <label class="linhad-2">Email:</label>
                  <a class="linhad-2">${cargadetalhes.donoemail}</a>
                   <br>
                   <br>
                   <label class="linha-2">Celular:</label>
                   <a class="linha-2">${cargadetalhes.donocel}</a>
                   <br>
                   <br>
                   <label class="linha-2-1">Telefone:</label>
                   <a class="linha-2-1">${cargadetalhes.donotel}</a>
                   <br>
                   <br>
                   <label class="linhad-3">CNPJ:</label>
                   <a class="linhad-3">${cargadetalhes.donocnpj}</a>
                   </p>
                   <br>
                
                 <div id="colunas">         
                  <div id="input-position_1">           
              		<ul>
                            <li>
                            <label id="labelescrita_1"> Situação Carga:</label>
                            <input readonly="" readonly="" value="${cargadetalhes.sitcarga}" title="Situação Carga"  name="sitcarga" type="text" class="input-estilo_1"/>
                            </li>
                            <br>
                            <br>	

                            <li>  <label id="labelescrita_1">Data Carregamento:</label>                            
                                <input readonly="" value ="${cargadetalhes.datacarregamento}"title="Data Carregamento" type="text" name="datacarregamento" class="input-estilo_1"/>
                            </li>  
        
           
                                <br>
                                <br>	

                                <li>  <label id="labelescrita_1">Data Agendamento:</label>                            
                                    <input readonly="" value="${cargadetalhes.dataagendamento}" placeholder="DD/MM/AAAA" title="Data Agendamento" required="required" type="text" name="dataagendamento" class="input-estilo_1"/>
                                </li>  

                                <br>
                                <br>	

                                <li>  <label id="labelescrita_1">Horario de Restrição:</label>                            
                                    <input readonly="" value="${cargadetalhes.restrihora}" placeholder="HH:MM" title="Horario de Restrição" type="text" name="restrihora"  class="input-estilo_1"/>
                                </li> 

                                <br>
                                <br>	

                                <li>
                                  <label id="labelescrita_1">Tipo Carregamento:</label>                            
                                  <input readonly="" value="${cargadetalhes.tipcarregamento}" title="Tipo Carregamento"  name="tipocarregamento" type="text" class="input-estilo_1"/>
                                </li>
                                <br>
                                <br>

                                <li>  <label id="labelescrita_1">Estimativa de Preço: R$</label>                            
                                    <input readonly="" value="${cargadetalhes.estimativapreco}" placeholder="1000.000,30" title="Estimativa de Preço" type="text" name="estimativapreco"  class="input-estilo_1"/>
                                </li> 



                                 </ul>     
                                </div>  

                     <div id="input-position_1">           
                        <ul>

                             <li> 
                                 <label id="labelescrita_1">Rastreamento:</label>                            
                                <input readonly="" value="${cargadetalhes.rastreamento}" title="Rastreamento"  name="rastreamento" type="text" class="input-estilo_1"/>    
                             </li>  

                                <br>
                                <br>	

                                <li>  <label id="labelescrita_1">Tipo de Frete:</label>                            
                                <input readonly="" value="${cargadetalhes.tipofrete}" title="Tipo de Frete"  name="tipofrete" type="text" class="input-estilo_1"/>
                                </li>
                                
                                <br>
                                <br>	

                                <li>  <label id="labelescrita_1">Cidade Carregamento:</label>                            
                                    <input readonly="" value="${cargadetalhes.cidcarregamento}" placeholder="Exemplo: Amparo" title="Cidade Carregamento"  name="cidcarregamento" required="required"  type="text" class="input-estilo_1"/>
                                </li>  

                                <br>
                                <br>	

                                <li>  <label id="labelescrita_1">Cidade Descarga:</label>                             
                                    <input readonly="" value="${cargadetalhes.ciddescarga}" placeholder="Exemplo : Amparo"  title="Cidade Descarga" name="ciddescarga" required="required" type="text" class="input-estilo_1"/>
                                </li>                         

                                <br>
                                <br>

                                <li>  <label id="labelescrita_1">Qtd.Produtos:</label>                             
                                    <input readonly="" value="${cargadetalhes.qtdprodutos}"placeholder="1000000" title="Qtd.Produtos" name="qtdprodutos" type="text" required="required" class="input-estilo_1"/>
                                </li> 
                                <br>
                                <br>
                                  <li>  <label id="labelescrita_1">Tipo de Carga:</label>                            
                                   <input readonly="" value="${cargadetalhes.tipocarga}" title="Tipo de Carga"  name="tipocarga" type="text" class="input-estilo_1"/>
                                </li> 

                   </ul>       
                   </div>  
        </div>
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
