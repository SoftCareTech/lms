


<%-- 
    Document   : signin
    Created on : Sep 10, 2017, 4:58:17 AM
    Author     : user
--%>
<%
    
    session.setAttribute("username", "");
    session.setAttribute("password", "");;
      
    boolean log =true;
     boolean bol =true;
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if(request.getParameter("log")!=null&&request.getParameter("log")!=""){
        if(request.getParameter("log").contains("login")){
            log=true;
        }else{
            log=false;
        }
        
    }
   if(request.getParameter("submitN")!=null){
     log=false;  
   }
    
%>
<%@include file="packages.jsp" %>

<%@page import="com.lmsClasses.Client"%>

<!DOCTYPE html>
 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Livestock |Sign in</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    

       
          <h2 class="form-signin-heading" align="center">LIVESTOCK MANAGEMENT SYSTEM LOGIN</h2>
          
      <%
           
              if(log){  %>         
<%@include file="loginAcount.jsp" %>
<p></p>  <p></p>  <p></p>  <p></p>
<form method="post">
    <div style=" align-content:  center; align-self: center;
                  alignment-baseline:  alphabetic; z-index: -1; ">
    <input type="submit" name="log" value="Sign Up" style=" margin-left:47%;color: #fc3; align-self: center;" ></form>
          </div>    <%
      }else{  %>
         <%@include file="newAccount.jsp" %> 
         
        <p></p>  <p></p>  <p></p>  <p></p>
        <form method="post">
            <div style=" align-content:  center; align-self: center;
                  alignment-baseline:  alphabetic; z-index: -1;  "> 
                <input type="submit" name="log" value="login " style="margin-left:47%;color: #fc3; align-self: center;"></div>
        </form>
         <%
      }
      %>
     <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
  
</body> 
</html>

