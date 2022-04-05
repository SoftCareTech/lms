<%-- 
    Document   : createApplication
    Created on : Jan 19, 2018, 10:40:07 AM
    Author     : GBENGE AONDOAKULA
--%>


<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@include file="packages.jsp"%>
<%

    response.setHeader("cache-control","no-cache");
    response.setHeader("cache-control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("pragma","no-cache");
%>
<%            if(session.getAttribute("username")!=null && session.getAttribute("username")!=""){
%>
<%
    

String  name= request.getParameter("name");
String others = request.getParameter("other");
String msg="";
Animals a=null;
String update=request.getParameter("up");
String  id =sl.generateAnimalID();
if(request.getParameter("sumit")!= null && request.getParameter("sumit")!=" "){
   try{
       if(name!="" && name!=null){
        a = new Animals(id,name,others);
     msg =  sl.addAnimal(a);
     %>
     
    
   
   
    
         
   <% if(update!=null)
           if(update.contains("true")){
                     
     Updates u =new Updates(sl.generateUpdateID(),a.getId(),
             LocalDate.now().toString()+"|"+ LocalTime.now().toString(),a.getName()+" is recently added ");
     sl.addUpdate(u);}
      %>
       
         
<%
     session.setAttribute("id",a.getId()) ;
     response.sendRedirect("animalsInformation.jsp");
       }
       msg= " fill in name ";
   }catch(Exception e){
       
   }
}
    %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>     Add Live Stock    </title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
      <link href="dropcss.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
  </head>

  <body         >
      <%@include  file="menu.jsp" %>

      

    
    <div class="blog-header">
      <div class="container">
 
        <p class="lead blog-description"> Add Live Stock  </p>
      </div>
    </div>
    
    <div class="container" >

      <div class="row">

        <div class="col-sm-8 blog-main">

          <div class="blog-post">
              <div class="modal-content">
                  <form name="form" method="post">
                      <p > <%=msg%></>
                      <div class="form-group">
                          <label class="col-sm-4">Livestock Name:</label>
                          <input name="name" type="text" class="form-control"  required="">
                          
                      </div>
                      <div class="form-group">
                          <label class="col-sm-4">Other Information </label>
                          <input name="other" type="text" class="form-control">                         
                      </div>
                       <div class="form-check-label">
                          <label class="col-sm-4 form-check-label">Add this to update </label>
                          <input  width="5" height="4"type= "checkbox" name="up" value="true" class="form-check-input"  >                       
                      </div>
                     
                      <div class="btn-light" style="margin: 5px;">
                            <button name="sumit" type="submit" onclick="" > Next </button>  
                      </div>
                      
                      
                      
                  </form>
                  
              </div>
          </div><!-- /.blog-post -->
<!--  SOFTCARE -->
          

          

        </div><!-- /.blog-main -->

        <!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
      <p>Philip Project 2018</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src= " https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src=" /assets/js/vendor/jquery.min.js"><\/script>')</script>
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