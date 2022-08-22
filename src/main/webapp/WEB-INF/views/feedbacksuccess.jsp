<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Feedback added</title>
  </head>
   <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<style>
<%@include file="/WEB-INF/views/css/feedbacksuccess.css"%>
</style>
<body>
      <div class="container">
   <div class="row">
      <div class="col-md-6 mx-auto mt-5">
         <div class="feedback">
            <div class="feedback_header">
               <div class="check"><i class="fa fa-check" aria-hidden="true"></i></div>
            </div>
            <div class="content">
               <h1>Feedback added successfully!</h1>
               <p>Thanks for your feedback!</p>
               <a href="/home/index">Go to Home</a>
            </div>
            
         </div>
      </div>
   </div>
</div>
    </body>
    </html>