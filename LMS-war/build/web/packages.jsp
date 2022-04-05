<%-- 
    Document   : packages
    Created on : Jan 27, 2018, 12:31:27 PM
    Author     : GBENGE AONDOAKULA
--%>
<%@page import="com.session.*"%>
<%@page import="com.lmsClasses.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="javax.naming.InitialContext"%>
<%@page import="java.util.List"%>
<%@page  import="javax.naming.Context"%>
<%@page  import="javax.naming.NamingException"%>
<%@page  import="javax.ejb.EJB,java.util.*" %>
<%@page  import="java.lang.Math" %>
<%@page import="java.util.List"%>

<%!
     
    String msg ="";
    LmsSessionLocal sl= null;
   


     
        public void jspInit(){
  try {
            Context c = new InitialContext();
           sl=( LmsSessionLocal) c.lookup("java:global/LMS/LMS-ejb/LmsSession!com.session.LmsSessionLocal");
        } catch (NamingException ne) {
}}
        %>