<%@page import="com.files.entities.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <style type="text/css">
    
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
<h1>Student Details</h1>
<%
    Student student = (Student) request.getAttribute("student");
    if (student != null) {
%>
    <p>ID: <%= student.getId() %></p>
    <p>Name: <%= student.getName() %></p>
    <p>Class: <%= student.getClassName() %></p>
    <p>Address: <%= student.getAddress() %></p>
    <p>Subjects: <%= student.getSubjects() %></p>
    <p>Behavior: <%= student.getBehavior() %></p>
<% } else { %>
    <p>Student not found</p>
<% } %>
<a href="/SpringMvc/students">Back to Students List</a>


</body>
</html>
