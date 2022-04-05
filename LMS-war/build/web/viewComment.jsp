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

<%

    response.setHeader("cache-control","no-cache");
    response.setHeader("cache-control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("pragma","no-cache");
%>
<%            if(session.getAttribute("username")!=null && session.getAttribute("username")!=""){
%>

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


            <%
                boolean all = false;
                if (request.getParameter("all") != null && request.getParameter("all") != "") {

                    all = true;
                }
if (request.getParameter("pen") != null && request.getParameter("all") != "") {

                    all = false;
                }

            %>
            <%@include file="menu.jsp"%>

            <div class="blog-header">
                <div class="container">
                    <h4 class="blog-title"> Comments </h4>
                   
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


                                        <%
                                            if (all) {

                                        %>
                                        <%@include file ="allComment.jsp"  %> 

                                        <%} else {
                                        %>
                                        <%@include file ="pendingComment.jsp"  %>

                                         
                                        <%}%>

                                        <thead >

                                            <tr>
                                                <th colspan="13"></th>


                                            </tr>






                                        </thead>

                                    </table>

                            </div>
                        </div><!-- /.blog-post -->
                        <!--  SOFTCARE -->

 

                    </div><!-- /.blog-main -->


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

<% }else
{response.sendRedirect("login.jsp");
}
%>
