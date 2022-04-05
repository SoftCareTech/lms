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
                    <h4 class="blog-title"> Live Stock </h4>
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

                                            try {
                                                
    List<Disease> alist =sl.viewDisease(ida);
    int g=0;
    if(alist!=null)
    for(Disease h:alist){
        g++;
        boolean test =false;
    String res1=   request.getParameter("e1"+Integer.toString(g));
    String res2=   request.getParameter("e2"+Integer.toString(g));
    String res3=   request.getParameter("e3"+Integer.toString(g));
    String res4=   request.getParameter("e3"+Integer.toString(g));
    if(res1!=null&&res1!=""){
    h.setSyntoms(res1);
    test=true;
    }
     if(res2!=null&&res2!=""){
      h.setDisease(res2);
       test=true;
     }
      if(res3!=null&&res3!=""){
          h.setPrevention(res3);
           test=true;
      }
       if(res4!=null&&res4!=""){
          h.setCure(res4);
           test=true;
       }
    
    if(test){
        sl.editDisease(h);
    }
    
    
    

    
    alist =sl.viewDisease(ida);
    }
if(alist==null){
                                              }         
if (alist.size() == 0) {
                                        %>
                                    <div> No Disease Found <a href="adddisease.jsp>?id=<%=ida%>">add Disease </a></div>
                                    <%} else {
                                    %>
                                        <tbody>
                                            <tr>
                                                <td>S/N</td>
                                              <td> SYMTOMS  </td>
                                                <td> DISEASE</td>
                                                 <td> PREVENTION </td>
                                                <td> CURE </td>
                                                
                                            </tr>
                                            <tr>
                                                <%   
                                                    int count = 0;
                                                    Iterator it = alist.iterator();
                                                    while (it.hasNext()) {
                                                      Disease app = (Disease) it.next();
count++;
                                                %>
                                                <td><%=count%></td>
                                                <td>
                                                    <textarea  rows="5"  cols="25" value="<%=app.getSyntoms() %>" 
                                                               name="<%="e1"+Integer.toString(count)%>"   > <%=app.getSyntoms() %> </textarea>       </td>
                                                <td>
                                                <textarea  rows="5"  cols="25" value="<%=app.getDisease() %>" 
                                                           name="<%="e2"+Integer.toString(count)%>"   ><%=app.getDisease() %>  </textarea>       </td>
                                                <td>
                                                  <textarea  rows="5"  cols="25"  value="<%=app.getPrevention() %>" 
                                                             name="<%="e3"+Integer.toString(count)%>"   ><%=app.getPrevention() %>  </textarea>       </td>
                                                <td>
                                                    <textarea  rows="5"  cols="25"  value="<%=app.getCure() %>" 
                                                               name="<%="e4"+Integer.toString(count)%>"  ><%=app.getCure() %>   </textarea>      </td>
                                               
                                             
                                        </tr>   
                                            <% } %> 
                                                    
                                        <th colspan="13"><input type= "submit" name="submit" value="submit changes "  ></th>
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

<%} %>

<% }else
{response.sendRedirect("login.jsp");
}
%>