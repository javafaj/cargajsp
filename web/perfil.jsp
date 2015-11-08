<%-- 
    Document   : mini_perfil
    Created on : 05/11/2015, 20:52:48
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/perfil.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<link href="css/estilos.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="css/jquery.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
     
      
      <script type="text/javascript" >
	$(document).ready(function() {
		$(".conta").click(function() {
			var X=$(this).attr('id');
			
			if(X==1) {
				$(".submenu").hide();
				$(this).attr('id', '0');	
				}
				
		else {
			$(".submenu").show();
			$(this).attr('id', '1');
		}
		});
		
		$(".submenu").mouseup(function() {
			return false
		});
		$(".conta").mouseup(function() {
			return false
		});
		
		$(document).mouseup(function() {
			$(".submenu").hide();
			$(".conta").attr('id', '');
		});
		
	});
	
</script>
<div class="dropdown">
	   <div class="deixabolinha"> 
                               </div> 
          
          	<a class="conta" ><span><div class="deixabolinha">
                            
                            <img src="css/icones/noia.jpg" alt="" width="90" height="90"/>
        </div> </span></a>
	<div class="submenu" style="display:none;">
	  <ul class="raiz">
             <div align="center"> 
                 <a><h7>Olá, Lucas</h7></h8></a>
            <li><a href="#" >Perfil</a></li>
	    <li><a href="#">Sair</a></li>
            
             </div>
	  </ul>
	</div>
</div>
        
    </body>
</html>
