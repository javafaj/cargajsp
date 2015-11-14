<%-- 
    Document   : login
    Created on : 12/09/2015, 14:22:01
    Author     : Gabriel Hofman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/positiontela.css"/>
        <link rel="stylesheet" type="text/css" href="css/logincss.css"/>
    </head>
    <body> 
        <%-- é importante utilizar o usebean para saber qual o objeto que vc esta tratando , pois senao não 
        tem o autocomplete da IDE--%>
      <form name="login" action="/ProjectCargaFacil/Controller?page=ControllerLogicLogin" method="POST">
        
        <div id="login">
            <h1>Login</h1>
          
                <li>
                    <input  tabindex="1" type="text" name="usuario" value="usuario" onfocus="this.value = '';" onblur="if (this.value === '') {this.value = 'Usuário';}" > <a href="#" class="icon user"></a>
                    </li>
                <li>
                    <input tabindex="2" type="password" name="senha" value="senha" onfocus="this.value = '';" onblur="if (this.value === '') {this.value = 'Senha';}"> <a href="#" class=" icon lock"></a>
                    </li>
                    
               <div class ="loginesqueceu">
                    <input tabindex="3" type="submit" value="Entrar" name="entrar" > </h4>
                    <!-- <h3><a href="#">Esqueceu sua Senha?</a></h3> -->
                    </div>
            
            </div>
              </form>
        </body>
    </html>