<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
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
   
   <h1 style="text-transform:capitalize;text-align:center;">project list</h1>
  
      
		<div style="width:72%;margin:2% auto 4% auto;">
		<div style="float:left">
		<form:form method="GET" action="/updateProject">
			<select name="id">
				<c:forEach items="${listOfProjects}" var="project">
					<option value="${project.id}">${project.projectid}</option>
				</c:forEach>
				<input type="submit" value="Search"/>
			</select>
		</form:form>
	</div>
	<div style="float:right" >
	<a href="${pageContext.request.contextPath}/getAllProjects" style="text-decoration:none;">Create User</a>
	</div>
	  </div>

	<c:if test="${!empty listOfProjects}">
		<table style="margin:0 auto;border:2px solid #000;">
			<tr>

				<th width="120">Project ID</th>
				<th width="120">Project Name</th>
				<th width="120">Project Manager</th>
				<th width="120">Delivery Director</th>
				<th width="60">Location</th>
				<th width="120">Project Type</th>
				<th width="80">Unit</th>
				<th width="80"> Status </th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr> 
			<c:forEach items="${listOfProjects}" var="customer">
				<tr>

					<td>${customer.projectid}</td>
					<td>${customer.projectname}</td>
					<td>${customer.projectmanager}</td>
					<td>${customer.deliverydirector}</td>
					<td>${customer.location}</td>
					<td>${customer.projecttype}</td>
					<td>${customer.unit}</td>
					<td>${customer.status}</td>
					<td><a
						href="<c:url value='/updateProject/${customer.id}' />">Edit</a></td>
					<td><a
						href="<c:url value='/deleteProject/${customer.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		
	</c:if>
	


</body>
</html>