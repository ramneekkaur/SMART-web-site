<%-- 
    Document   : adduser_success
    Created on : 9 Mar, 2019, 1:55:12 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User Success</title>
    </head>
    
    <body>
   

        <p>Record successfully saved!</p> 
      
    <%String id = session.getAttribute("id").toString();
    int u=Integer.parseInt(id);
    %>

     Hello<%=u%>
  
      
               


<jsp:include page="sign_in.html"></jsp:include>  
    </body>
    
</html>
