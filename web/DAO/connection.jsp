<%--
    Document   : connection
    Created on : 03/10/2015
    Author     : Pedro Pagotto
a biblioteca importante é a java.sql.* pois ela importa todas as que são necessarias para
utilização de banco de dados na aplicação

usuario de acesso interno localhost 
user:cargalocal
senha:faj2013
usuario de acesso externo 
user: carga
senha: faj2013
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
/*delcarando uma variavel do tipo connection para conexao com banco de dados */    
   Connection con;  
/*declarando uma variavel do tipo statement para que possa estar executando instruções SQL
 tambem pode ser usar o preparedstatement ( é mais usado para passar objetos com instrução SQL)*/
   Statement stm;  
/*para toda conexão é necessario colocar o try+catch para controlar as exceções e erros sempre que 
   utilza banco de dados é bom utilizar o metodo try catch*/   
   try {  
  /*Driver para conexao com o banco é o cara que faz a interface entre java e bd*/
      Class.forName("org.mariadb.jdbc.Driver");  
      /*parametro de conexão para iniciar uma conexao*/
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cargafacil","cargalocal","faj2013");  
      stm = con.createStatement();   
      out.println("<center>"+"<br><br>"+"Conexão efetuada com sucesso"+"</center>");  
   } catch (Exception e) {  
       out.println("<center>"+"Não foi possível conectar ao banco erros apresentados :"+
                   "<br><br>"+ e.getMessage()+"</center>");  
   }  
%>