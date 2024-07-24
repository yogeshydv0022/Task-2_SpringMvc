<%@page import="com.files.entities.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Students</title>
    <meta charset="UTF-8">
    <link href="./css/students.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <div class="container">
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
                <% if (students != null && !students.isEmpty()) { %>
                    <% for (Student student : students) { %>
                        <tr>
                            <td><%= student.getId() %></td>
                            <td><%= student.getName() %></td>
                            <td><%= student.getClassName() %></td>
                            <td><%= student.getAddress() %></td>
                            <td>
                                 <a href="/SpringMvc/studentdetails?id=<%= student.getId() %>">Show Details</a>
                            </td>
                        </tr>
                    <% } %>
                <% } else { %>
                    <tr>
                        <td colspan="5">No students found</td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <a href="/SpringMvc/" class="back-button">Back to Home Page</a>
    </div>
</body>
</html>
