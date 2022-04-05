<%-- 
    Document   : viewlivestock
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

        <title> View Live Stocks</title>

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
        <%@include  file="menu.jsp" %>

        <div class="blog-header">
            <div class="container">
                <h4 class="blog-title">  View Live Stocks </h4>
                 
            </div>
        </div>

        <div class="container" >

           

                <div class="col-sm-auto blog-main">

                    <div class="blog-post">
                        <div class="modal-content">
                            <form name="form" method="post">
                                <p > <%=msg%></>


                                <table border="0"  width="70%" class ="table-bordered table-striped">


                                    <%

                                        String[] rs = request.getParameterValues("delete");
                                        if (rs != null) {
                                            try {
                                                int sum = 0;
                                                for (int i = 0; i < rs.length; i++) {
                                                    String t = rs[i]; %> 
                                    <%  
                                                        sl.deleteLivestock(t);
                                                        sum++;
                                                        msg = "you have deleted " + sum + "livstock(s)";
                                                    

                                                }
                                            } catch (Exception ex) {
                                    %>  
                                     <p> exception  <%=ex.getMessage() %> </p>
                                    <%
                                            }

                                        } else if (request.getParameter("submit") != null) {
                                            msg = "you must TICK a Flight to be deleted first!!!";
                                        } else {
                                            msg = "";
                                        }

                                    %>
                                    <thead >

                                        <tr>
                                            <th colspan="13">
                                               Live Stocks   
                                            </th>


                                        </tr>
                                    </thead>
                                    <%                                            try {
                                            int count = 0;
                                            List alist = sl.viewAnimals();

                                    %>

                                    <%                                 if (alist.size() == 0) {
                                    %>
                                    <div> No Livestock Found </div>
                                    <%} else {
                                    %>
                                    <tbody>
                                        <tr>
                                            <td>S/N</td>
                                            <td> NAME</td>
                                            <td> OTHERS </td>
                                            <td>EDIT</td>
                                            <td>DELETE</td>
                                        </tr>
                                        <tr>
                                            <%                                      Iterator it = alist.iterator();
                                                while (it.hasNext()) {
                                                    Animals app = (Animals) it.next();
                                                    count++;
                                            %>
                                            <td><%=count%></td>
                                            <td><buttom value="<%=app.getId()%>"  onclick="<% ida = app.getId();%>"><%=app.getName()%> </buttom></td>
                                    <td><a  style=" text-decoration:none" href="viewDetails.jsp?id=<%=app.getId()%>"> view Details </a></td>
  <td><a  style=" text-decoration:none" href="editAnimal.jsp?id=<%=app.getId()%>"> edit Details </a></td>
                                    <td><input type= "checkbox" name="delete" value="<%=app.getId()%> "  ></td>
                                    </tr>   
                                    <% } %> 

                                    <th colspan="13"><input type= "submit" name="submit" value="Remove" onclick=" return win()" ></th>
                                    </tbody>
                                </table>

                                <% }
                                } catch (Exception e) {

                                %>
                                <div>   Exception <%=e.getMessage()%> </div>
                                <%

                                    }
                                %>
                            </form>

                        </div>
                    </div><!-- /.blog-post -->
                    <!--  SOFTCARE -->




                </div><!-- /.blog-main -->



                

           

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

