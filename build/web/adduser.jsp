<%-- 
    Document   : adduser
    Created on : 9 Mar, 2019, 1:02:46 PM
    Author     : dell
--%>
<%@page import="com.S_Mart.userdao1.UserDao1" %>
<jsp:useBean id="u" class="com.S_Mart.user.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>  
  
  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
                  <%@page import="com.S_Mart.userdao1.UserDao1,com.S_Mart.user.User"%>  
                  

        <%
int i=UserDao1.save(u);  
if(i>0){
    session.setAttribute("userid",u.getId());
    
  response.sendRedirect("adduser_success.com");  
       
        

    


}else{  
response.sendRedirect("adduser_error.jsp");  
}  
%>  
   
    
</html>
