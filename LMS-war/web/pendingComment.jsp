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






<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title> view pending comments </title>

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


            

            

             
                      <div class="blog-header">
                    <p class="lead blog-description"><%="pending comments "%> </p>
                      </div>

            

                <div class="row">

                    <div class="col-sm-12 blog-main">
 
                           
                                <form name="form" method="post">
                                    <p > <%=msg%></>


                                    <table style=" width: max-content;" border="0" class ="table-bordered table-striped">



                                        <thead >

                                            <tr>
                                                <th colspan="13">
                                                   Comments    
                                                </th>


                                            </tr>
                                        </thead>
                                        <%

                                            try {
                                                int count = 0;
                                        %>

                                        <%
                               List alist = sl.viewPendingComment();
                                            if (alist == null) {
                                        %>
                                        <div> No Comment Found </div>
                                        <%} else {
                                        %>
                                        <tbody>
                                            <tr>

                                                <td>  Date </td>
                                                <td> Comment </td>
                                                <td> Status </td>
                                                <td> reply</td>


                                            </tr>
                                            <tr>
                                                <%                                Iterator it = alist.iterator();
                                                    while (it.hasNext()) {
                                                        Comment app = (Comment) it.next();
                                                        count++;
                                                        /*
                                                        
                                                        */
                                                    
                                                %>

                                                <td><%=app.getTime()%></td>
                                                <td><%=app.getCom()%></td>
                                                <td><%=app.getStatus()%></td>
                                                <td><a  style=" text-decoration:none" href="reply.jsp?id=<%=app.getId()%>"> reply </a></td> 
                                                               
                                                               
                                                                
                                                
                                                
                                        </tr>   
                                        <% } %>  

                                        <th colspan="13"><input   style=" padding: 10px; margin:10px;"type= "submit" name="all" value="view all comment " onclick=" return win()" ></th>
                                        </tbody>


                                    </table>

                                    <% } 
                                }catch (Exception e) {

                                    %>
                                    <div>   Exception <%=e.getMessage()%> </div>
                                    <%

                                        }
                                    %>
                                </form>

                            </div>
                        </div><!-- /.blog-post -->
                        <!--  SOFTCARE -->


                         
 
 


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
