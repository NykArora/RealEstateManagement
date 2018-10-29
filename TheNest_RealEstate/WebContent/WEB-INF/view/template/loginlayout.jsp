<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
      
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>The Nest</title>
<link href='<c:url value="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" ></c:url>'  rel="stylesheet" />
<link href='<c:url value="/resources/vendors/font-awesome/css/font-awesome.min.css" ></c:url>'  rel="stylesheet" />
<link href='<c:url value="/resources/vendors/nprogress/nprogress.css" ></c:url>'  rel="stylesheet" />
<link href='<c:url value="/resources/vendors/animate.css/animate.min.css" ></c:url>'  rel="stylesheet" />
<link href='<c:url value="/resources/build/css/custom.min.css" ></c:url>'  rel="stylesheet" />
  </head>

  <body class="login">
    <div>
     

      <div class="login_wrapper">
        <tiles:insertAttribute name="loginbody"></tiles:insertAttribute>
      </div>
    </div>
  </body>
</html>
