<%-- 
    Document   : viewApplication
    Created on : Jan 22, 2018, 11:08:23 AM
    Author     : GBENGE AONDOAKULA
--%>


<%@page import="java.time.LocalDate"%>
<%-- 
    Document   : viewApplication
    Created on : Jan 22, 2018, 11:08:23 AM
    Author     : GBENGE AONDOAKULA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="packages.jsp" %>   



<%
    String ida = request.getParameter("id");
    session.setAttribute("id", ida);
    if (ida != null && ida != "") {
        Animals a = sl.getAnimal(ida);
        String dis = a.getName();
%>     

<%
    ///readin coment type in tjh textArea
    String com = request.getParameter("com");
    if (request.getParameter("submit") != null && request.getParameter("submit") != "") {
        if (com.length() > 3) {
            Comment c = new Comment(sl.generatecomentID(), ida, com, LocalDate.now().toString(),
                    "pending", "");
            sl.addComment(c);

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

        <title> <%=dis %> Detials </title>

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
                    <h4 class="blog-title"> LIVESTOCK </h4>
                    <p class="lead blog-description"><%=dis%> </p>
                </div>
            </div>

                
                
                <div   style="width:96%; padding: 2%; text-justify: inter-word; align-content: center
                       ; overflow-wrap: break-word; "  >
                  
                         
                               <table border="0" class ="table-bordered table-striped" 
                                     style="width: available;">

 
                                    <thead >

                                        <tr>
                                            <th colspan="5" >
                                                HOUSING    
                                            </th>
                                            
                                        </tr>
                                        
                                    </thead>
                                    
                                    <%                                            try {
                                            int count = 0;
                                            List alist = sl.viewHousing(ida);
                                            if (alist == null) {
                                    %>
                                    <div> null  from  the method </div>
                                    <%     }
                                        if (alist.size() == 0) {
                                    %>
                                     <tbody style=" align-content: center; background-color:  #0cf;color:#f9f9f9;">
                                            <tr>
                                                <td>
                                          No Housing found 
                                                </td>
                                       </tr>
                                     </tbody>
                                    <%} else {
                                    %>
            <tbody style=" align-content: center; background-color:  #0cf;">
               <tr><td style=" align-content: center; color: #0cf;">
                                             METHOD:  </td>
                </tr>                                    
                                            <% Iterator it = alist.iterator();
                                                while (it.hasNext()) {
                                                    Housing app = (Housing) it.next();
                                                    count++; %>
                                   <tr>
                                            
                                            <td><%=app.getMethod()%></td>


                                        </tr>   
                                        <% } %> 

                                    </tbody>


                                </table>
                          

                                <% }
                                } catch (Exception e) {

                                %>
                                <div>   Exception <%=e.getMessage()%> </div>
                                <%

                                    }
                                %>
                                
                                
                                
                                
                                <p></p>
                                <p></p>
                                <p></p>
                                
                             
           <table border="0" class ="table-bordered table-striped" style="width: available;">



                                    <thead >

                                        <tr>
                                            <th colspan="5" >
                                                FEEDS    
                                            </th>


                                        </tr> 
                                    </thead>
                                    <%
                                        try {
                                            int count = 0;
                                            List alist = sl.viewFeed(ida);
                                            if (alist == null) {
                                    %>
                                    <div>null fom the method </div>
                                    <%     }
                                        if (alist.size() == 0) {
                                    %>
                                    <tbody style=" align-content: center; background-color:  #0cf;color:#f9f9f9;">
                                            <tr>
                                                <td>
                                          No Feeds found 
                                                </td>
                                       </tr>
                                     </tbody>
                                    <%} else {
                                    %>
                                    <tbody style=" align-content: center; background-color:  #0cf;color:#f9f9f9;">

<tr><td style=" align-content: center; color: #0cf;">
                                             METHOD:  
                                            </td></tr>


                                        <%
                                            Iterator it = alist.iterator();
                                            while (it.hasNext()) {
                                                Feed app = (Feed) it.next();
                                                count++;
                                        %>
                                    <p></p>
                              
                                    <td><%=app.getMethode()%></td>

                                    </tr>   
                                    <% } %> 
                                    </tbody>


                                </table>

                                <% }
                                } catch (Exception e) {

                                %>
                                <div>   Exception <%=e.getMessage()%> </div>
                                <%

                                    }
                                %>
                               


                                    
                                    <p></p>
                                     <p></p>
                                <p></p>
                                <p></p>
                            
              <table border="0" class ="table-bordered table-striped" style="width: available;"
                                         
                                           >



                                        <thead >

                                            <tr>
                                                <th colspan="5">
                                                    DISEASES    
                                                </th>


                                            </tr>
                                        </thead>
                                        <%                                            try {
                                                int count = 0;
                                                List<Disease> alist = sl.viewDisease(ida);
                                                if (alist == null) {
                                        %>
                                        
                                        <div>null form the method </div>
                                        <%     }
                                            if (alist.size() == 0) {
                                        %>
                                        <tbody style=" align-content: center; background-color:  #0cf;color:#f9f9f9;">
                                            <tr>
                                                <td>
                                          No Disease found 
                                                </td>
                                       </tr>
                                     </tbody>
                                        <%} else {
                                        %>
                                        <tbody style=" align-content: center; background-color:  #0cf;color:#f9f9f9;">
                                            <tr>
                                                <td>S/N</td>
                                                <td>DISEASE SYMPTOMS</td>
                                                <td>DISEASE NAME</td>
                                                <td>DISEASE CURE</td>
                                                <td>PREVENTION</td>

                                            </tr>
                                            
                                                <%                                      Iterator it = alist.iterator();
                                                    while (it.hasNext()) {
                                                        Disease app = (Disease) it.next();
                                                        count++;
                                                %>
                                                <tr>
                                                <td valign="top"><%=count%></td>
                                                <td valign="top"><%=app.getSyntoms()%></td>
                                                <td valign="top"><%=app.getDisease()%></td>
                                                <td valign="top"><%=app.getCure()%></td> 
                                                <td><%=app.getPrevention()%></td> 

                                            </tr>   
                                            <% } %> 


                                        </tbody>


                                    </table>
                       

                                    <% }
                                    } catch (Exception e) {

                                    %>
                                    <div>   Exception <%=e.getMessage()%> </div>
                                    <%

                                        }
                                    %>





                                 
                                        <p></p>
                                        <p></p>
                                        <p></p>
                                        <p></p>
                                        <p></p>
                                        <p></p>
                                        <p></p>
                                        <p></p>
                                        <p></p>
                                        
                                 
                                        <table border="0"  width="90%" class ="table-bordered table-striped" 
                                               style="align-content: center; align-self: center; ">



                                        <thead >

                                            <tr>
                                                <th  >
                                                    Comments   
                                                </th>


                                            </tr>
                                        </thead>                        

                                        <%
                                            int count = 0;
                                            try {
                                                List l = sl.viewComment(ida);

                                                if (l.size()== 0) {
                                        %>
                                        <tbody style=" align-content: center; background-color:  #0cf;color:#f9f9f9;">
                                            <tr>
                                                <td
                                        <div> No Comment found </div>
                                                </td>
                                       </tr>
                                    </tbody>
                                        <%} else {
                                        %>
                                        <tbody style=" align-content: center; background-color:  #0cf; color:#f9f9f9;">



                                            <tr>

                                                <td>  Date </td>
                                                <td> Comment </td>
                                                <td> Status </td>
                                                <td> reply</td>


                                            </tr>
                                           
                          <%     Iterator it = l.iterator();
                                                    while (it.hasNext()) {
                                                        Comment app = (Comment) it.next();
                                                        count++;
                                                   
                                                %>
                                               <tr>
                                                <td><%=app.getTime()%></td>
                                                <td><%=app.getCom()%></td>
                                                <td><%=app.getStatus()%></td>

                                                <td><%=app.getReply()%></td         
                                            </tr>   
                                            <% } %>  
                                     
                             
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

 
                                    <form name="form" method="post"  >
                                        <div  style=" color:#0cf; align-content:center; width: inherit; ">
                                    <div>  Add Comment </div> 
                                    <p></p>
                                   
                                        <textarea name="com" placeholder="enter your question here" type="textarea"
                                                  style=" azimuth: center; 
                                                      "
                                                  cols="80" rows="10"> </textarea>

                                        <button name ="submit" >Submit Comment</button>
                                    </div>
                                </form>
 
                           
 
                        
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

    <%}%>