<%-- 
    Document   : viewusers
    Created on : 16 Apr 2024, 7:12:15 pm
    Author     : dhine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>View Users</title>  
</head>  
<body>  

<%@page import="DAO.UserDAO, DAO.User, java.util.List"%>

<%
    List<User> list = UserDAO.getAllRecords();
    request.setAttribute("list", list);
%>  

<% if (list != null && !list.isEmpty()) { %>
    <table border="1" width="90%">  
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Password</th>
            <th>Email</th>  
            <th>Gender</th>
            <th>Country</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <% for (User u : list) { %>
            <tr>
                <td><%= u.getId() %></td>
                <td><%= u.getName() %></td>
                <td><%= u.getPassword() %></td>
                <td><%= u.getEmail() %></td>
                <td><%= u.getGender() %></td>
                <td><%= u.getCountry() %></td>
                <td><a href="editform.jsp?id=<%= u.getId() %>">Edit</a></td>
                <td><a href="deleteuser.jsp?id=<%= u.getId() %>">Delete</a></td>
            </tr>
        <% } %>
    </table>
<% } else { %>
    <p>No users found.</p>
<% } %>

<br/><a href="adduserform.jsp">Add New User</a>  

</body>
</html>
