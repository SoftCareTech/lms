<%-- 
    Document   : createApplication
    Created on : Jan 19, 2018, 10:40:07 AM
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


<%@include file="packages.jsp"%>


<%
    

    String    ida  = session.getAttribute("id").toString();
                   session.setAttribute("id",ida);
                    if(ida!=null && ida!=""){
           
                %>     
                
                
 
<%
    
String  meth = request.getParameter("meth");
String msg="";
String  id =sl.generateFeedID();
if(request.getParameter("sumit")!= null && request.getParameter("sumit")!=" "){
   try{
       if(meth!="" && meth!=null){
           //disease, String syntoms, String cure, String idc
       Feed a = new  Feed(id,ida,meth,"null");
     msg =  sl.addFeed(a);
       }
      // msg= " fill in name ";
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

    <title>    Feeds instruction </title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
    <link href="dropcss.css" rel="stylesheet">
  </head>

  <body>

  

    <div class="blog-header">
      <div class="container">
        
        <p class="lead blog-description">  Feeds Instruction </p>
      </div>
    </div>

    <div class="container" >

      <div class="row">

        <div class="col-sm-8 blog-main">

          <div class="blog-post">
              
              
              <div >
                  <form name="form" method="post">
                      <p > <%=msg %><p/>
                      <table > 
                          <tr>
                              <td>   <div class="form-group">
                          <p>
                          <label class="col-sm-4">METHOD </label>
                      </p>
                      <textarea name="meth" type="text" cols="40" rows="5" class="form-control"></textarea> 
                     
                     
                              
                          </tr>
                      </table>
                     
                      
                     
                       
  
                      
                        <div>
                             <input name="sumit" type="submit" value="Submit" class="btn btn-primary" />
                                          
                      </div>
                      
                      
                      
                  </form>
                  
              </div>
          </div><!-- /.blog-post -->
<!--  SOFTCARE -->
          

          

        </div><!-- /.blog-main -->

       

      </div><!-- /.row -->

    </div><!-- /.container -->

   

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
<% } %>


<% }else
{response.sendRedirect("login.jsp");
}
%>
