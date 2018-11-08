
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
th
{
border:1px solid black;
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

   <h1 style="text-transform:capitalize;text-align:center;">User list</h1>
  
      
		<div style="width:65%;margin:2% auto 4% auto;">
		<div style="float:left">
		<form:form method="GET" action="/updateUser">
			<select name="id">
				<c:forEach items="${listOfUsers}" var="project">
					<option value="${project.id}">${project.emp_id}</option>
				</c:forEach>
				<input type="submit" value="Search" class="blue-button" />
			</select>
		</form:form>
	</div>
	<div style="float:right" >
	<a href="${pageContext.request.contextPath}/getAllUsers" style="text-decoration:none;">Create User</a>
	</div>
	  </div>
	

	<c:if test="${!empty listOfUsers}">
		<table rules="cols" style="margin:0 auto;border:2px solid #000;">
			<tr>

				<th width="120">Employee ID</th>
				<th width="120">First Name</th>
				<th width="120">Last Name</th>
				<th width="120">Email id</th>
				<!-- <th width="120">Password</th> -->
				<th width="80">Role</th>
				<th width="80"> Project </th>
				<th width="80"> Modules </th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
				<!--<th width="60">Reset Role</th>
				<th width="60">Password Reset</th>-->
			</tr> 
			<c:forEach items="${listOfUsers}" var="customer">
				<tr>

					<td>${customer.emp_id}</td>
					<td>${customer.first_name}</td>
					<td>${customer.last_name}</td>
					<td>${customer.email_id}</td>
					<!-- <td>${customer.password}</td> -->
					<td>${customer.role}</td>
					<td>${customer.project}</td>
					<td>${customer.modules}</td>
					<td><a
						href="<c:url value='/updateUser/${customer.id}' />">Edit</a></td>
					<td><a
						href="<c:url value='/deleteUser/${customer.id}' />">Delete</a></td>
						<!-- <td><a
						href="<c:url value='/resetRole/${customer.id}' />">Reset Role</a></td>
						<td><a
						href="<c:url value='/passwordReset/${customer.id}' />">Click here</a></td> -->
						
				</tr>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>