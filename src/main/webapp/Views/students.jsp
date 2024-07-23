<%@page import="com.files.entities.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Students</title>
<meta charset="UTF-8">
<style>
/* styles.css */

body {
    font-family: Arial, sans-serif;
    margin: 20px;
    padding: 0;
    background-color: #f0f0f0;
}

h1 {
    color: #333;
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}

th, td {
    padding: 10px;
    border: 1px solid #ccc;
    text-align: left;
}

th {
    background-color: #f4f4f4;
}

tr:nth-child(even) {
    background-color: #fafafa;
}

a {
    color: #007bff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

.container {
    width: 80%;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

</style>
</head>
<body>
    <h1>All Students</h1>
    
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Class</th>
                <th>Address</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%-- Iterate through students list --%>
            <% List<Student> students = (List<Student>) request.getAttribute("students"); %>
            <% if (students != null) { %>
                <% for (Student student : students) { %>
                    <tr>
                        <td><%= student.getId() %></td>
                        <td><%= student.getName() %></td>
                        <td><%= student.getClassName() %></td>
                        <td><%= student.getAddress() %></td>
                       
              
                       
                        <td>
                             
                <a href="/SpringMvc/studentdetails/<%= student.getId() %>">Show Details</a>
                        </td>
                    </tr>
                <% } %>
            <% } %>
        </tbody>
    </table>





</body>
</html>