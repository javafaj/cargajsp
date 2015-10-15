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
    
        
        <div id="login">
            <h1>Login</h1>
            <form name="login" action="Slogin" method="POST">
                <li>
                    <input type="text" value="usuario" onfocus="this.value = '';" onblur="if (this.value === '') {this.value = 'Usuário';}" > <a href="#" class=" icon user"></a>
                    </li>
                <li>
                    <input type="password" value="senha" onfocus="this.value = '';" onblur="if (this.value === '') {this.value = 'Senha';}"> <a href="#" class=" icon lock"></a>
                    </li>
                <div class ="loginesqueceu">
                    <input type="submit" onclick="myFunction()" value="Entrar" > </h4>
                    <h3><a href="#">Esqueceu sua Senha?</a></h3>
                    </div>
                </form>
            </div>
        </body>
    </html>