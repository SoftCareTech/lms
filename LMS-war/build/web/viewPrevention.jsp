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
    

    String    ida   = request.getParameter("id");
                   session.setAttribute("id",ida);
                    if(ida!=null && ida!="")
                    {
           Animals a= sl.getAnimal(ida);
           
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

        <title> Diseases  Prevention </title>

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


                                        <%
                                            
                                            String[] rs = request.getParameterValues("delete");
                                            if (rs != null) {
                                                try {
                                                    int sum = 0;
                                                    for (int i = 0; i < rs.length; i++) {
                                                        String t = rs[i]; %>
                                                    
                                                            <% {
                                                           //sl.d(t);
                                                                 sum++;
                                                        msg = "you have deleted " + sum + "Applications";
                                                       }
                                                  

                                                    }
                                                } catch (Exception ex) {
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
                                                    Application    
                                                </th>


                                            </tr>
                                        </thead>
                                        <%

                                            try {
                                                int count = 0;
    List alist =sl.viewPrevention(ida);
if(alist==null){
                                        %>
<div>null fom the method </div>
                                        <%     }         
if (alist.size() == 0) {
                                        %>
                                    <div> No Application Found </div>
                                    <%} else {
                                    %>
                                        <tbody>
                                            <tr>
                                                <td>S/N</td>
                                              <td> DISEASE NAME</td>
                                                <td>DISEASE CURE</td>
                                                
                                            </tr>
                                            <tr>
                                                <%                         
                                                    Iterator it = alist.iterator();
                                                    while (it.hasNext()) {
                                                       Prevention app = (Prevention) it.next();
count++;
                                                %>
                                                <td><%=count%></td>
                                                <td><%=app.getDiseas() %></td>
                                                <td><%=app.getPrevention() %></td>
                                             
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