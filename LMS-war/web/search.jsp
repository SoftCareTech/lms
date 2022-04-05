<%-- 
    Document   : search
    Created on : Feb 1, 2018, 9:48:21 AM
    Author     : GBENGE AONDOAKULA
--%>

 


<%@include file ="packages.jsp" %>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    Map<String, String> mapA = new HashMap<String, String>();
   HashMap<String, String> mapD = new HashMap<String, String>();
      Map<String, String> mapP =new HashMap<String, String>();
       List<Animals> a= sl.viewAnimals();             
         List<Disease> d = sl.viewDisease();
         List<Prevention> p =sl.viewPreventio();
    String res= request.getParameter("search");
    if(request.getParameter("submit")!= null && request.getParameter("submit")!=" ")
    {
               if(res!=null){
       if(res.length()>0){
        
              Iterator it = d.iterator();
                while (it.hasNext()) {
              Disease b = (Disease) it.next();
               if(mapD!=null) {                       
              String zz=b.getDisease();
             if(zz != null)
                 if(zz.toLowerCase().contains(res.toLowerCase()))
             {
                 mapD.put(b.getId(),  b.getDisease() );
             }
             String ss=b.getSyntoms();
             if(ss!= null)
              if(ss.toLowerCase().contains(res.toLowerCase()))
               {
                  mapD.put(b.getId(),  b.getCure() );
              }
               } 
           }
              
              
           
           
           
           
              for(Prevention j:p){
                  
              String ss=j.getDiseas();
              if(ss!= null)
              if(ss.toLowerCase().contains(res.toLowerCase())){
                  mapP.put(j.getId(), j.getDiseas());
              }
              ss=j.getPrevention();
              if(ss!= null);
              if(ss.toLowerCase().contains(res.toLowerCase())){
                 mapP.put(j.getId(), j.getPrevention());
              }
         
    } 
             
        }}}
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> search </title>
    </head>  
    <body>
        <form method="post">
        <input name="search" type="textfield" placeholder="enter word to search">
    
    <div class="btn-light">
        <button type="submit" name="submit" >SEARCH</button>
         
                      </div>
        
        <div>
             


        <% if(mapD!=null  ){ 
     Set set= mapD.keySet() ;
     Iterator i= set.iterator();
   while (i.hasNext()) {
                String app = (String) i.next();  %>
                
                <p> <a  style=" text-decoration:none"
                        href="viewD.jsp?id=<%=app%>"> <%=mapD.get(app)%> </a> <p>                                

        <%} }%> 
        </div>
          <div>
             


        <% if(mapP!=null  ){ 
     Set set= mapP.keySet() ;
     Iterator i= set.iterator();
   while (i.hasNext()) {
                String ap = (String) i.next();  %>
                
                <p> <a  style=" text-decoration:none"
                        href="viewP.jsp?id=<%=ap%>"> <%=mapD.get(ap)%> </a> <p>                                

        <%} }%> 
        </div>
        </form>  
        
    </body>
</html>
