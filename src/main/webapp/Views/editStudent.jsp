<%@page import="com.files.entities.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
    <link rel="stylesheet" type="text/css" href="./css/editStudent.css">
</head>
<body>
    <h1>Edit Student</h1>
    <%
        Student student = (Student) request.getAttribute("student");
        if (student != null) {
    %>
    <form action="/SpringMvc/update" method="post">
        <input type="hidden" name="id" value="<%= student.getId() %>">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value=" <%= student.getName() %>" required>
        </div>
        <div>
            <label for="className">Class:</label>
            <input type="text" id="className" name="className" value=" <%= student.getClassName() %> " required>
        </div>
        <div>
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="<%= student.getAddress() %>" required>
        </div>
        <div>
            <label for="subjects">Subjects:</label>
            <input type="text" id="subjects" name="subjects" value=" <%= student.getSubjects()%> " required>
        </div>
        <div>
            <label for="behavior">Behavior:</label>
            <input type="text" id="behavior" name="behavior" value=" <%= student.getBehavior()  %>" required>
        </div>
        <button type="submit">Save Changes</button>
    </form>

    <a href="/SpringMvc/students">Back to Student List</a>
    <% } %>
    
    <script type="text/javascript" src="./js/validation.js"></script>
</body>
</html>
