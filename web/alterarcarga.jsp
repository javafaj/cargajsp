<%-- 
    Document   : cadastro_2
    Created on : 22/10/2015, 20:44:05
    Author     : lucas
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
        <link rel="stylesheet" type="text/css" href="css/cadastro_2.css"/>
        <title>Alterar Carga </title>
</head>

<body>
 <jsp:useBean id="minhascargadetalhes"  class="com.br.cargafacil.objetos.Cargas" scope="request"/>
 <form name="formcadastro" action="/ProjectCargaFacil/Controller?page=ControllerLogicCargaAlterar" method="POST">
<div id ="tudo">  
    <jsp:include page="menu.jsp"/>
            
<div id="conteudo-include">
                     
                 <div id="colunas">         
              <div id="input-position_1">           
		<ul>


                    <li>
                        <label id="labelescrita_1"> Situação Carga:</label>
                            <select name ="sitcarga" class="input-estilo_1" >
                            <option hidden="">${minhascargadetalhes.sitcarga}</option>
                            <option> Aguardando Negociação </option>
                            <option> Aguardando Confirmação de Entrega</option>
                            <option> Carregamento Concluido</option>
                            </select>
                    </li>             
                                                   
			<br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Data Carregamento:</label>                            
                            <input value ="${minhascargadetalhes.datacarregamento} " placeholder="DD/MM/AAAA" title="Data Carregamento" required="required" type="text" name="datacarregamento" class="input-estilo_1"/>
                    	</li>  
        
           
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Data Agendamento:</label>                            
                            <input value="${minhascargadetalhes.dataagendamento}" placeholder="DD/MM/AAAA" title="Data Agendamento" required="required" type="text" name="dataagendamento" class="input-estilo_1"/>
                    	</li>  
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Horario de Restrição:</label>                            
                            <input value="${minhascargadetalhes.restrihora}" placeholder="HH:MM" title="Horario de Restrição" type="text" name="restrihora"  class="input-estilo_1"/>
                    	</li> 
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Tipo Carregamento:</label>                            
                             <select name ="tipocarregamento" class="input-estilo_1">
                                    <option hidden=""> ${minhascargadetalhes.tipcarregamento} </option>
                                    <option> Paletizado </option>
                                    <option> Batido</option>
                             </select>
                        </li> 
                        <br>
                        <br>
                        
                        <li>  <label id="labelescrita_1">Estimativa de Preço: R$</label>                            
                            <input value="${minhascargadetalhes.estimativapreco}" placeholder="1000.000,30" title="Estimativa de Preço" type="text" name="estimativapreco"  class="input-estilo_1"/>
                    	</li> 
                        
                        
                        
                         </ul>     
                        </div>  
                            
             <div id="input-position_1">           
		<ul>
                                       
                     <li>  <label id="labelescrita_1">Rastreamento:</label>                            
                        <select name ="rastreamento" class="input-estilo_1">
                            <option hidden=""> ${minhascargadetalhes.rastreamento}</option>
                            <option> Sim </option>
                            <option> Não </option>
                        </select>
                     </li>  
                               
			<br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Tipo de Frete:</label>                            
                          <select name ="tipofrete" class="input-estilo_1">
                                <option hidden=""> ${minhascargadetalhes.tipofrete} </option>
                                <option> FOB </option>
                                <option> CIF </option>
                          </select>
                        </li>  
        
           
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Cidade Carregamento:</label>                            
                            <input value="${minhascargadetalhes.cidcarregamento}" placeholder="Exemplo: Amparo" title="Cidade Carregamento"  name="cidcarregamento" required="required"  type="text" class="input-estilo_1"/>
                    	</li>  
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Cidade Descarga:</label>                             
                            <input value="${minhascargadetalhes.ciddescarga}" placeholder="Exemplo : Amparo"  title="Cidade Descarga" name="ciddescarga" required="required" type="text" class="input-estilo_1"/>
                    	</li>                         
                        
                        <br>
                        <br>
                        
                        <li>  <label id="labelescrita_1">Qtd.Produtos:</label>                             
                            <input value="${minhascargadetalhes.qtdprodutos}"placeholder="1000000" title="Qtd.Produtos" name="qtdprodutos" type="text" required="required" class="input-estilo_1"/>
                    	</li> 
                        <br>
                        <br>
                          <li>  <label id="labelescrita_1">Tipo de Carga:</label>                            
                          <select name ="tipocarga" class="input-estilo_1">
                              <option hidden=""> ${minhascargadetalhes.tipocarga} </option>
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
</div>

     
     <div id="botoes-area">       
     <h5>&nbsp;</h5>
        <div align="center">                      
        <div class="content">  
    <input type="submit" name="enviar" value="Alterar" class="botao01" ></input> 
    
     <h5>&nbsp;</h5>
        </div>
        </div>
     </div>
     
        <div id="botoes-area">       
     <h5>&nbsp;</h5>
        <div align="center">                      
        <div class="content"> 
            
            <input TYPE="reset" name="cancelar" VALUE="Limpar Campos" class="botao01"></input>
     <h5>&nbsp;</h5>
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