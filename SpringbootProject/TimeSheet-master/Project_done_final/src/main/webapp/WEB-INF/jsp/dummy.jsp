<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">

	<a href="${pageContext.request.contextPath}/welcome">Home</a> | &nbsp;

	<a href="${pageContext.request.contextPath}/addNewEmployee">Add
        Employee</a> |   <a
        href="${pageContext.request.contextPath}/getEmployees">Show
        Employees</a> |   <u><h2 style="color: red;">
            <a onclick="document.forms['logoutForm'].submit()">Logout</a>
            </h3></u> -->


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--  <html>
<body>
<h2>Hello World!</h2>
<a href="<c:url value='/getAllProjects' />">PROJECTS</a>
</body>
</html> 
<!DOCTYPE html> -->
<html>
<head>
<style>
 /* Navbar container */
.navbar {
  overflow: hidden;
  background-color: #ddd;
  font-family: Arial;
}

/* Links inside the navbar */
.navbar a {
  float: left;
  font-size: 16px;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* The dropdown container */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Dropdown button */
.dropdown .dropbtn {
  font-size: 16px;
  border: none;
  outline: none;
  color: black;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: SteelBlue;
}

/* Dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Add a grey background color to dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
  color:black;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

</style>
</head>
<body>

 <div class="navbar">
  <a href="${pageContext.request.contextPath}/welcome">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Management
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="${pageContext.request.contextPath}/getAllUsers1">User Management</a>
      <a href="${pageContext.request.contextPath}/getAllProjects1">Project Management</a>
    </div>
  </div>
  <div class="dropdown">
    <button class="dropbtn">Revenue Management
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="${pageContext.request.contextPath}/dummy">Billing Info</a>
      <a href="${pageContext.request.contextPath}/dummy">Delivery Estimates</a>
      <a href="${pageContext.request.contextPath}/dummy">Invoice Validation</a>
      
      <a href="${pageContext.request.contextPath}/dummy">DP91 details</a>
    </div>
  </div>
  <div class="dropdown">
    <button class="dropbtn">HR
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="${pageContext.request.contextPath}/dummy">Communitee</a>
      <a href="${pageContext.request.contextPath}/timesheet">Timesheet</a>
    </div>
  	</div>
  	 <a onclick="document.forms['logoutForm'].submit()">Logout</a>
 	</div>   
 <form id="logoutForm" method="POST" action="${contextPath}/logout">
    </form>
<h1 align="center">Under Development</h1>
</body>
</html>