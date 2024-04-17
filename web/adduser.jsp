<%-- 
    Document   : adduser
    Created on : 16 Apr 2024, 7:18:29 pm
    Author     : dhine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="DAO.UserDAO"%>  
        <jsp:useBean id="u" class="DAO.User"></jsp:useBean>  
        <jsp:setProperty property="*" name="u"/>  

        <%  
        int i=UserDAO.save(u);  
        if(i>0){  
        response.sendRedirect("adduser-success.jsp");  
        }else{  
        response.sendRedirect("adduser-error.jsp");  
        }  
        %>  
    </body>
</html>
