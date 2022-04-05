<%-- 
    Document   : editAnimal
    Created on : Mar 1, 2018, 11:09:53 PM
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
<%
    String    ida   = request.getParameter("id");
    
    if(request.getParameter("sub")!=null&&request.getParameter("name")!=""){
        
   String na =request.getParameter("name");
       Animals a= sl.getAnimal(ida);
       a.setName(na );
       sl.editAnimal(a);
               
    }

    
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
                     <%@include  file="menu.jsp" %>
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
                               <div class="container-fluid">
            <div class="form-control-label">
                <form method="post">
                <label>  Name </label>  
                <input type="textarea" name="name" value="<%=dis %>">
                <p></p>
                <label ><a  style=" text-decoration:none" href="editFeeds.jsp?id=<%=a.getId()%>"> edit feeds </a>
                </label>
                <p></p>
                <label ><a  style=" text-decoration:none" href="editHousing.jsp?id=<%=a.getId()%>"> edit housing </a>
                </label>
                <p></p>
                <label ><a  style=" text-decoration:none" href="editDisease.jsp?id=<%=a.getId()%>"> edit disease </a>
                </label>
                </label>
                <p></p>
                <label ><a  style=" text-decoration:none" href="animalsInformationAdd.jsp?id=<%=a.getId()%>">  add  more housing, feeds ,diseases ( disease prevention and control)  </a>
                </label>
                <p></p> 
                
                <p></p>

                <p></p>
                <button  name="sub" value="submit changes %>">submit changes </button>
                    
                </form>
            </div>
                <%}%>
        </div>

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