 
                
 
 <%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@include file="packages.jsp"%>
 <%@include file="menu.jsp"%>
 
<%

    response.setHeader("cache-control","no-cache");
    response.setHeader("cache-control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("pragma","no-cache");
%>
<%            if(session.getAttribute("username")!=null && session.getAttribute("username")!=""){
%>

 
 <%
    

     
    String id = request.getParameter("id");
                   session.setAttribute("id",id);
                    if(id!=null && id!=""){
           

String msg="";
Comment com= sl.viewCommentById(id);
String  ida =com.getIda();
String  co= com.getCom();
String ti= com.getTime();
String reply =request.getParameter("reply");
Animals an =sl.getAnimal(ida);
if(request.getParameter("sumit")!= null && request.getParameter("sumit")!=" "){
   try{
       if(reply!="" && reply!=null){
           //disease, String syntoms, String cure, String idc
       Comment a = new  Comment(id,ida,co,ti,"answered",reply);
     msg =  sl.editComment(a);
     
     Updates u =new Updates(sl.generateUpdateID(),a.getIda(),
            LocalDate.now().toString()+"|"+ LocalTime.now().toString(),a.getCom()+"  reply answer is recently edited ");
   //  sl.addUpdate(u);
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

    <title>    Comment on <%= an.getName() %> </title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
    <link href="dropcss.css" rel="stylesheet">
  </head>

  <body>

  

    <div class="blog-header">
      <div class="container">
        
        <p class="lead blog-description">  Comment on <%= an.getName() %> </p>
         <p class="lead blog-description">  <a  style=" text-decoration:none" href="viewDetails.jsp?id=<%=an.getId()%>"> View Details  of 
             <%=an.getName()  %></a> </p>
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
                                      <p>Date:  <%=ti  %></p>   
                                      <p>status:  <%=com.getStatus()  %></p>   
                                      <p>Comment:  <%=co  %></p>   
                                       <p>Reply:  <%=com.getReply()  %></p> 
                                       <p>                         </p>

                          <p>
                              <label class="col-sm-4"> <h3>Edit Reply </h3> </label>
                      </p>
                      <textarea name="reply" type="text" cols="50" rows="10" class="form-control"><%=com.getReply()%></textarea> 
                     
                     
                              
                          </tr>
                      </table>
                     
                      
                     
                       
  
                      
                        <div>
                             <input name="sumit" type="submit" value="Submit" class="btn btn-primary" />
                                          
                      </div>
                      
                      
                   <a  style=" text-decoration:none" href="viewComment.jsp"> view pending comments </a>   
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