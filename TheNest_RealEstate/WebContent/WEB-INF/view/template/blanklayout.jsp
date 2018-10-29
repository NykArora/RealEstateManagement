<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
             <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href='<c:url value="/resources/asset/css/bootstrap.min.css" ></c:url>'  rel="stylesheet" />


 <link href='<c:url value="/resources/asset/css/plugins/font-awesome.min.css" ></c:url>'  rel="stylesheet" />
 <link href='<c:url value="/resources/asset/css/plugins/datatables.bootstrap.min.css" ></c:url>'  rel="stylesheet" />
 <link href='<c:url value="/resources/asset/css/plugins/animate.min.css" ></c:url>'  rel="stylesheet" />
 <link href='<c:url value="/resources/asset/css/plugins/animate.min.css" ></c:url>'  rel="stylesheet" />
 <link href='<c:url value="/resources/asset/css/style.css" ></c:url>'  rel="stylesheet" />
 
    <link rel="shortcut icon" href="asset/img/logomi.png">
</head>
<body id="mimin" class="dashboard">

 




<tiles:insertAttribute name="bodyblank"></tiles:insertAttribute>

 <script type="text/javascript" src='<c:url value="/resources/asset/js/jquery.min.js" ></c:url>' ></script>
 <script type="text/javascript" src='<c:url value="/resources/asset/js/jquery.ui.min.js" ></c:url>' ></script>
 <script type="text/javascript" src='<c:url value="/resources/asset/js/bootstrap.min.js" ></c:url>' ></script>
 <script type="text/javascript" src='<c:url value="/resources/asset/js/plugins/moment.min.js" ></c:url>' ></script>
 
 <script type="text/javascript" src='<c:url value="/resources/asset/js/plugins/moment.min.js" ></c:url>' ></script>
 <script type="text/javascript" src='<c:url value="/resources/asset/js/plugins/jquery.datatables.min.js" ></c:url>' ></script>
 <script type="text/javascript" src='<c:url value="/resources/asset/js/plugins/datatables.bootstrap.min.js" ></c:url>' ></script>
 <script type="text/javascript" src='<c:url value="/resources/asset/js/plugins/jquery.nicescroll.js" ></c:url>' ></script>
 
  <script type="text/javascript" src='<c:url value="/resources/asset/js/main.js" ></c:url>' ></script>

<script type="text/javascript">
  $(document).ready(function(){
    $('#datatables-example').DataTable();
  });
</script>
<!-- end: Javascript -->
</body>
</html>