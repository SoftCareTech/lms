<%-- 
    Document   : viewApplication
    Created on : Jan 22, 2018, 11:08:23 AM
    Author     : GBENGE AONDOAKULA
--%>


<%-- 
    Document   : viewApplication
    Created on : Jan 22, 2018, 11:08:23 AM
    Author     : GBENGE AONDOAKULA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="packages.jsp" %>   
<%
    

    String    id   = request.getParameter("id");
                   session.setAttribute("id",id);
                    if(id!=null && id!="")
                    {
                         Disease alist =sl.viewD(id);
                        
           Animals a= sl.getAnimal( alist.getIda());
           
String dis = a.getName();
                %>     
                
                
 

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title> Animals Disease</title>

        <!-- Bootstrap core CSS -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="blog.css" rel="stylesheet">
        <style>
            table{
                font-size: 13px;
                font-family: Times New Roman;
                color: #000;

            </style>
        </head>

        <body>
                
            
<script>

function win(){
    if(window.confirm("are sure you want to delete")){   
return true;
    }else{       
return false;

    }

}
 
}
</script>

            <div class="blog-masthead">
                <div class="container">
                    <nav class="nav">
                        <a class="nav-link active" href="#">Home</a>
                        <a class="nav-link" href="#">New features</a>
                        <a class="nav-link" href="#">Press</a>
                        <a class="nav-link" href="#">New hires</a>
                        <a class="nav-link" href="#">About</a>
                    </nav>
                </div>
            </div>

            <div class="blog-header">
                <div class="container">
                    <h4 class="blog-title"> Animals </h4>
                    <p class="lead blog-description"><%=dis%> </p>
                </div>
            </div>

            <div class="container" >
               
                <div class="row">

                    <div class="col-sm-12 blog-main">

                        <div class="blog-post">
                            <div class="modal-content">
                                <form name="form" method="post">
                                    <p > <%=msg%></>
                                        

                                    <table border="0" class ="table-bordered table-striped">


                       
                                        <thead >

                                            <tr>
                                                <th colspan="13">
                                                    Application    
                                                </th>


                                            </tr>
                                        </thead>
                                        <%

                                            try {
                                                int count = 0;

                                        %>

                                        <%                
if (alist ==null) {
                                        %>
                                    <div> No Application Found </div>
                                    <%} else {
                                    %>
                                        <tbody>
                                            <tr>
                                                 
                                                <td>  DISEASE SYMTOMS</td>
                                              <td> DISEASE NAME</td>
                                                <td>DISEASE CURE</td>
                                                <td>COMMENTS</td>
                                            </tr>
                                            <tr>
                                                <%                                     
                                                     {
                                                       Disease app = alist;
count++;
                                                %>
                                                
                                                <td><%=app.getSyntoms() %></td>
                                                <td><%=app.getDisease() %></td>
                                              <td><%=app.getCure() %></td> 
                                              <td><textarea name="<%=app.getId()%>"> </textarea> </td> 
                                        </tr>   
                                            <% } %> 
                                                    
                                        <th colspan="13"><input type= "submit" name="submit" value="Remove" onclick=" return win()" ></th>
                                    </tbody>
                                    
                                    
                                    </table>

                                                <% } 
                                            }catch (Exception e) {

 %>
<div>   Exception <%=e.getMessage() %> </div>
<%

                                                    }
                                                %>
                                </form>

                            </div>
                        </div><!-- /.blog-post -->
                        <!--  SOFTCARE -->


                        <nav class="blog-pagination">
                            <a class="btn btn-outline-primary" href="#">Older</a>
                            <a class="btn btn-outline-secondary disabled" href="#">Newer</a>
                        </nav>

                    </div><!-- /.blog-main -->


                </div><!-- /.row -->

            </div><!-- /.container -->

            <footer class="blog-footer">
                <p>Blog template built for <a href="https://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
                <p >
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

<%} %>