<%-- 
    Document   : viewApplication
    Created on : Jan 22, 2018, 11:08:23 AM
    Author     : GBENGE AONDOAKULA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="packages.jsp" %>   

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title> view Animals</title>

        <!-- Bootstrap core CSS -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="blog.css" rel="stylesheet">
        <link href="mycss.css" rel="stylesheet">
        
         
        </head>

        <body>
            <% 
  String ida = null;
            %>         
           
     <div class="blog-masthead">
      <div class="container">
        <font color="#FFFFF" size="+1">LIVESTOCK MANAGEMENT INFORMATION SYSTEM</font>
         <nav class="nav">
            <a class="nav-link active" href="index.html">Home</a>
            <a class="nav-link" href="viewAnimalC.jsp">Livestock</a>
           <a class="nav-link" href="update.jsp">Recent Updates </a>
           <a class="nav-link" href="login.jsp">Login</a>
        </nav>
      </div>
    </div>

            <div class="blog-header">
                <div class="container">
                    <h4 class="blog-title">  View Live Stocks </h4>
                   
                </div>
            </div>

            <div class="container" >
               
                <div class="row">

                    <div class="col-sm-12 blog-main">

                        <div class="blog-post">
                            <div class="modal-content">
                                <form name="form" method="post">
                                    <p > <%=msg%></>
                                        

                                    <table border="0"  width="70%" class ="table-bordered table-striped">


                                      
                                        <thead >

                                            <tr>
                                                <th colspan="13">
                                                    Live Stocks    
                                                </th>


                                            </tr>
                                        </thead>
                                        <%

                                            try {
                                                int count = 0;
                      List alist = sl.viewAnimals();

                                        %>
                                        
                                        <%                                 if (alist.size() == 0) {
                                        %>
                                    <div> No Application Found </div>
                                    <%} else {
                                    %>
                                        <tbody>
                                            <tr>
                                                <td>S/N</td>
                                                <td> NAME</td>
                                              <td> Details </td>
                                                
                                            </tr>
                                            <tr>
                                                <%                                      Iterator it = alist.iterator();
                                                    while (it.hasNext()) {
                                                        Animals app = (Animals) it.next();
count++;
                                                %>
                                                <td><%=count%></td>
                                                <td><buttom value="<%=app.getId()%>"  onclick="<% ida =app.getId(); %>"><%=app.getName()%> </buttom></td>
                                                <td><a  style=" text-decoration:none" href="viewDetails.jsp?id=<%=app.getId()%>"> View Details </a></td>
                    
                                                
                                        </tr>   
                                            <% } %> 
                                                    
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
                       
                    </div><!-- /.blog-main -->

                    
                    
                    <div class="col-sm-8 blog-main" id="cen">
                            
                    
                    </div>

                </div><!-- /.row -->

            </div><!-- /.container -->

            <footer class="blog-footer">
                <p>Philip Project 2018</p>
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

