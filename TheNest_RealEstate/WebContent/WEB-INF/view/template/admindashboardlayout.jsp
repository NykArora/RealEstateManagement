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

    <title>The Nest-RealEstate</title>
 <!-- Bootstrap -->
	
	<link href='<c:url value="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/font-awesome/css/font-awesome.min.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/nprogress/nprogress.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/iCheck/skins/flat/green.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/jqvmap/dist/jqvmap.min.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/bootstrap-daterangepicker/daterangepicker.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/build/css/custom.min.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" ></c:url>'  rel="stylesheet" />
	<link href='<c:url value="/resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" ></c:url>'  rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script type="text/javascript" src='<c:url value="/resources/vendors/moment/min/moment.min.js" ></c:url>' ></script>
    <script type="text/javascript" src='<c:url value="/resources/vendors/bootstrap-daterangepicker/daterangepicker.js" ></c:url>' ></script>
    <script type="text/javascript" src='<c:url value="/resources/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js" ></c:url>' ></script>
   

 <style>
 tr {
 color:black!important;
 }
 </style>
  </head>

  <body class="nav-md footer_fixed">
    <div class="container body">
      <div class="main_container">
	  <tiles:insertAttribute name="left"></tiles:insertAttribute>
	  <tiles:insertAttribute name="header"></tiles:insertAttribute>



<tiles:insertAttribute name="body"></tiles:insertAttribute>

<div class="clearfix"></div>

<tiles:insertAttribute name="footer"></tiles:insertAttribute>

		
      </div>
    </div>
	 <script type="text/javascript" src='<c:url value="/resources/vendors/jquery/dist/jquery.min.js" ></c:url>' ></script>
	 <script type="text/javascript" src='<c:url value="/resources/vendors/bootstrap/dist/js/bootstrap.min.js" ></c:url>' ></script>
	 <script type="text/javascript" src='<c:url value="/resources/vendors/fastclick/lib/fastclick.js" ></c:url>' ></script>
	 <script type="text/javascript" src='<c:url value="/resources/vendors/nprogress/nprogress.js" ></c:url>' ></script>
	 <script type="text/javascript" src='<c:url value="/resources/vendors/iCheck/icheck.min.js" ></c:url>' ></script>
	<script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net/js/jquery.dataTables.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-buttons/js/buttons.flash.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-buttons/js/buttons.html5.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-buttons/js/buttons.print.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/datatables.net-scroller/js/dataTables.scroller.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/jszip/dist/jszip.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/pdfmake/build/pdfmake.min.js" ></c:url>' ></script>
     <script type="text/javascript" src='<c:url value="/resources/vendors/pdfmake/build/vfs_fonts.js" ></c:url>' ></script>
	  <script type="text/javascript" src='<c:url value="/resources/build/js/custom.min.js" ></c:url>' ></script>
	  
	  
	     <script type="text/javascript" src='<c:url value="/resources/vendors/moment/min/moment.min.js" ></c:url>' ></script>
	  
	    <script type="text/javascript" src='<c:url value="/resources/vendors/bootstrap-daterangepicker/daterangepicker.js" ></c:url>' ></script>
	    
	      <script type="text/javascript" src='<c:url value="/resources/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js" ></c:url>' ></script> 
  </body>
</html>
