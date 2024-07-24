<%@page import="com.files.entities.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <link href="./css/stDetails.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <h1>Student Details</h1>
    <div class="container">
        <%
            Student student = (Student) request.getAttribute("student");
            if (student != null) {
        %>
            <div class="card">
                <h2>Student ID: <%= student.getId() %></h2>
                <p><strong>Name:</strong> <%= student.getName() %></p>
                <p><strong>Class:</strong> <%= student.getClassName() %></p>
                <p><strong>Address:</strong> <%= student.getAddress() %></p>
                <p><strong>Subjects:</strong> <%= student.getSubjects() %></p>
                <p><strong>Behavior:</strong> <%= student.getBehavior() %></p>
                <button onclick="location.href='/SpringMvc/edit?id=<%= student.getId() %>'">Edit</button>
                 
           
                 
            </div>
        <% } else { %>
            <p>Student not found</p>
        <% } %>
        <a href="/SpringMvc/students">Back to Students List</a>
    </div>
</body>
</html>
