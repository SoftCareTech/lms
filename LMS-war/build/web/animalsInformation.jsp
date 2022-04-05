<%-- 
    Document   : animalsInformation
    Created on : Jan 27, 2018, 8:49:42 PM
    Author     : GBENGE AONDOAKULA
--%>
<%

    response.setHeader("cache-control","no-cache");
    response.setHeader("cache-control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("pragma","no-cache");
%>
<%            if(session.getAttribute("username")!=null && session.getAttribute("username")!=""){
%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDate"%>
<%@include file="packages.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 

  
    
<!DOCTYPE html>
<html>
     <head>
         
<style>
 #fram{ float:right; position:relative;height: 300px; }
</style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Livestock Details|</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
  </head>
  <body  >
        
        <%@include  file="menu.jsp" %>
<% //String employeeid = session.getAttribute("appno").toString();
   //session.setAttribute("employeeid", new String(employeeid));
                String    ida  = session.getAttribute("id").toString();
                
                
                  
                    if(ida!=null && ida!=""){
                     session.setAttribute("id",ida);
                
                %>     
                <p>
                    
                   
               


<iframe src="addhousing.jsp?id=<%=ida%>" name="Add Method of Housing " width="100%" height= "50%" id="fram">   </iframe>
<iframe src="addfeeds.jsp?id=<%=ida%>" name="Add Feeding Instruction" width="100%" height= "50%" id="fram">   </iframe>
<%--<iframe src="addPrevention.jsp?id=<%=ida%>" name="Add Disease Prevention Instuction " width="100%" height= "50%" id="fram">   </iframe>--%>
<iframe src="addDisease.jsp?id=<%=ida%>" name="Add Disease cure Instuction " width="100%" height= "50%" id="fram">   </iframe>
<%  } else {%>
<p>
    error occurred
</p>
<% } %>
    <footer class="blog-footer">
      <p>Philip Project 2018</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="assets/js/vendor/popper.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

<% }else
{response.sendRedirect("login.jsp");
}
%>
