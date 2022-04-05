<%-- 
    Document   : createApplication
    Created on : Jan 19, 2018, 10:40:07 AM
    Author     : GBENGE AONDOAKULA
--%>


<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>

<%

    response.setHeader("cache-control","no-cache");
    response.setHeader("cache-control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("pragma","no-cache");

 if(session.getAttribute("clientID")!=null && session.getAttribute("clientID")!=""){
    String   idc =session.getAttribute("clientID").toString();
   
    ///readin coment type in tjh textArea
    String com = request.getParameter("msg");
    if (request.getParameter("submit") != null && request.getParameter("submit") != "") {
        if (com.length() > 3) {
            if(session.getAttribute("clientID")!=null && session.getAttribute("clientID")!=""){
              
                          Comment c = new Comment(sl.generatecomentID(), "", com, LocalDate.now().toString(),
                    "pending", "",idc);
            sl.addComment(c);         }
            
        }else {
msg ="type a meaningfull message ";
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

    <title>Message </title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
  </head>

  <body>

     <div class="blog-masthead">
      <div class="container">
        <font color="#FFFFF" size="+1">LIVESTOCK MANAGEMENT INFORMATION SYSTEM</font>
        <%@include file="packages.jsp" %><nav class="nav">
            <a class="nav-link active" href="index.jsp">Home</a>
            <a class="nav-link" href="viewAnimalC.jsp">Livestock</a>
           <a class="nav-link" href="update.jsp">Recent Updates </a>
            <a class="nav-link" href="index.jsp"> Logout  </a>
                
          
        </nav>

      </div>
    </div>
      

    
    
    
    <div  >

     

        <div class="col-sm-12 blog-main">

          
               
                  <form name="form" method="post">
                      <p > <%=msg%></>
                      <div class="form-group">
                          <P> <h3>Message</h3></P>
                          <textarea rows="10" cols="60" name="msg"  class="form-control"  required=""></textarea>
                          
                      </div>
                    <div class="btn-light" style="margin-bottom: 10px;">
                        <button name="submit" type="submit" class="btn btn-lg" onclick="" > Send  </button>  
                      </div>
                      
                      
                      <div>  
                  </form>
                      
                       <table border="0"  width="90%" class ="table-bordered table-striped" 
                                               style="align-content: center; align-self: center; ">
                                        <thead >

                                            <tr>
                                                <th  colspan="6" style=" vertical-align:  central;">
                                                    Messages   
                                                </th>


                                            </tr>
                                        </thead>                        

                                        <%
                                            int count = 0;
                                            try {
                                                List<Comment> l = sl.viewCommentbyClientID(idc);

                                                if (l.size()== 0) {
                                        %>
                                        <tbody style=" align-content: center; background-color:  #0cf;color:#f9f9f9;">
                                            <tr>
                                                <td
                                        <div> No message found </div>
                                                </td>
                                       </tr>
                                    </tbody>
                                        <%} else {
                                        %>
                                        <tbody style="    background-color:  #0cf; color:#f9f9f9;">



                                            <tr style=" vertical-align:  top;">

                                                <td>  Date </td>
                                                <td> message </td>
                                                <td> Status </td>
                                                <td> reply</td>


                                            </tr>
                                           
                          <%   
                                 String ac="";
                   if(session.getAttribute("clientID")!=null && session.getAttribute("clientID")!=""){
          ac = session.getAttribute("clientID").toString();    
                                 }                 
                              
                              Iterator it = l.iterator();
                                                    while (it.hasNext()) {
                                                        Comment app = (Comment) it.next();
                                                        count++;
   
                                          if(app.getIdc().length()<1||app.getIdc().equals(ac)){
                                                %>
                                               <tr style="  vertical-align:  top;">
                                                <td  style="width: max-content;"><%=app.getTime()%></td>
                                                <td><%=app.getCom()%></td>
                                                <td  style="width: fit-content;"><%=app.getStatus()%></td>

                                                <td><%=app.getReply()%></td         
                                            </tr>   
                                            <% }
} %>  
                                     
                             
                                        <% }
                                        } catch (Exception e) {

                                        %>
                                        <div>   Exception <%=e.getMessage()%> </div>
                                        <%

                                            }

                                       %>
                                       </tbody>


                                        </table>
                                    
                                    <p></p>
                                    <p></p>
                                    <p></p>
                                    <p></p>                                    <p></p>                                    <p></p>
                                    <p></p>
                  
               
          </div><!-- /.blog-post -->
<!--  SOFTCARE -->
          

          

        </div><!-- /.blog-main -->

        <!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->
     <%@include  file="footer.jsp" %>



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
{response.sendRedirect("account.jsp");
}
%>