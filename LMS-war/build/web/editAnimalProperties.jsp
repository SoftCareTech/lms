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
                
                
 


       
                                <form name="form" method="post">
                                    <p > <%=msg%></>
                                        

                                    <table border="0" class ="table-bordered table-striped">


                                        
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
    List alist =sl.viewFeed(ida);
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
                                              <td> METHOD </td>
                                                
                                                
                                            </tr>
                                            <tr>
                                                <%                         
                                                    Iterator it = alist.iterator();
                                                    while (it.hasNext()) {
                                                       Feed app = (Feed) it.next();
count++;
                                                %>
                                                <td><%=count%></td>
                                                <td><%=app.getMethode() %></td>
                                                 <td> </td>
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

                        