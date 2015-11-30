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
        <title>Cadastre-se </title>
    </head>
    
    <body>
      
<jsp:useBean id="usuario"  class="com.br.cargafacil.objetos.Usuario" scope="request"/>
<jsp:useBean id= "login"  class="com.br.cargafacil.objetos.Login" scope="session"/>        

 <%
    if(login.getId() != ""){
%>   

<div id ="tudo">  
     <jsp:include page="menu.jsp"/>
        
 <form name="formalterar" action="/ProjectCargaFacil/Controller?page=ControllerLogicUsuarioAlterar" method="POST"> 
     <div id="conteudo-include">

         <div id="colunas">         
              <div id="input-position_1">           
		<ul>
                                       
                        <li>  <label id="labelescrita_1">Nome Fantasia:</label>                            
                         <input value="${usuario.nomefantasia}"  placeholder="Exemplo: Agencia de cargas online LTDA" title="Razão Social" required="required" type="text" name="nomefantasia" class="input-estilo_1" pattern="[a-z\s]+$"  />
                    	</li>  
                               
			<br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Razão Social:</label>                            
                            <input  value="${usuario.razaosocial}" placeholder="Exemplo: Agencia de cargas online LTDA" title="Razão Social" required="required" type="text" name="razaosocial" class="input-estilo_1" pattern="[a-z\s]+$" />
                    	</li>  
        
           
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">CNPJ:</label>                            
                            <input value="${usuario.cnpj}" placeholder="Exemplo: 00.000.00/0000-00" title="CNPJ" pattern="[0-9]+$" required="required" type="text" name="cnpj" class="input-estilo_1"/>
                    	</li>  
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">CEP:</label>                            
                            <input value="${usuario.cep}" placeholder="Exemplo: 11005-204 " title="CEP" type="text" pattern="[0-9]+$"  required="required" name="cep"  class="input-estilo_1"/>
                    	</li> 
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Cidade:</label>                            
                        <input value="${usuario.cidade}" placeholder="Exemplo: São Paulo / SP " title="Cidade" pattern="[a-z\s]+$" type="text" required="required" name="cidade" class="input-estilo_1"/>
                    	</li> 
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">UF</label>                             
                            <input value="${usuario.uf}" placeholder="UF" title="UF" name="uf" type="text" pattern="[a-z\s]+$"  required="required" class="input-estilo_1"/>
                    	</li> 
                        
                        
                   </ul>       
                        </div>  
             
             <div id="input-position_1">           
		<ul>
                                       
                     <li>  <label id="labelescrita_1">IE:</label>                            
                         <input  value="${usuario.ie}" placeholder="Inscrição Estadual" title="IE" pattern="[0-9]+$"  name="ie" required="required" type="text" class="input-estilo_1"/>
                    	</li>  
                               
			<br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Telefone:</label>                            
                            <input value="${usuario.telefone}" placeholder="Exemplo: (DDD)0000-0000" title="Telefone"   required="required" name="telefone" type="text" class="input-estilo_1"/>
                    	</li>  
        
           
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Celular:</label>                            
                            <input value="${usuario.cel}" placeholder="Exemplo: (DDD)0000-0000" title="Celular"  name="celular" required="required"  type="text" class="input-estilo_1"/>
                    	</li>  
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">E-mail:</label>                             
                            <input value="${usuario.email}" placeholder="Exemplo: cargafacil@gmail.com"   pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="E-mail" name="email" required="required" type="text" class="input-estilo_1"/>
                    	</li>                         
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Senha:</label>                            
                         <input value="${usuario.senha}" placeholder="*****" title="Senha" name="senha" type="password" required="required" class="input-estilo_1"/>
                    	</li> 
                        
                        <br>
                        <br>	
                        
                        <li>  <label id="labelescrita_1">Confirma Senha:</label>                            
                            <input value="${usuario.confsenha}" placeholder="*****" title="Confirmar Senha" name="confsenha" required="required" type="password" class="input-estilo_1"/>
                    	</li>
                        
                        </ul>       
                        </div>  
      
</body>
        
            
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
</div>
<%
 } else{
    
    request.getRequestDispatcher("errospage/erro.jsp").forward(request, response);
    
    }
%>
</body>
</html>