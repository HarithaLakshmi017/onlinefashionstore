<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Filter Email</title>
<style>
<%@include file="/WEB-INF/views/css/get-filter-email.css"%>
</style>
</head>
<body>
    <h3>Enter email to get previous order</h3>
    <br>
    <div class="box">
    <form action="useremail" method="get" style="margin: 0;">
        <label class="label">Email</label> <input id="email" type="text" placeholder="Enter email"
            name="userEmail" required>
             <input id="get" type='submit' value="Get" name="submit">
    </form>
    </div>
</body>
</html>