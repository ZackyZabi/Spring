<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.regex.*"%> 
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
     <div  ${error != null ? 'has-error' : ''}>
	<form:form method="post" modelAttribute="user"
		action="${pageContext.request.contextPath}/addUser"
		style="margin:0 auto;border:5px solid grey;padding:10px;border-radius:15px;width:60%;margin-top:20px;">
		
		<table style="margin:0 auto;">
			<tr>
				<th colspan="2">Add User</th>
			</tr>
			<tr>
				<form:hidden path="id" />
			<tr>
				<!--<form:hidden path="id" />-->
				<td><form:label path="emp_id">Employee ID:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" id="userinput" class="test"
						path="emp_id" size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="first_name">First Name:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="first_name" class="test"
						size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="last_name">Last Name:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="last_name" class="test"
						size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="email_id">Email ID:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input type="email" required="required" path="email_id" id="domainCheck" class="test"
						size="30" maxlength="30" autocomplete="off"  ></form:input></td>
			</tr>
			<tr>
				<td><form:label path="password">Password:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input type="password" required="required" path="password" size="30" class="test"
						maxlength="30" autocomplete="off" ></form:input></td>
			</tr>
			<tr>
				<td><form:label path="role">Role:</form:label><b
					style="color: red"> * </b></td>
				  	<td><form:input required="required" path="role"
						size="30" maxlength="30"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="project">Project:</form:label><b
					style="color: red"> * </b></td>
				  <td><form:input required="required" path="project" size="30"
						maxlength="30"></form:input></td>
			</tr>
<tr>
				<td><form:label path="modules">Modules:</form:label><b
					style="color: red"> * </b></td>
				 <td><form:input required="required" path="modules" size="30"
						maxlength="30"></form:input></td>
						</tr>
			<tr> 
				<td colspan="2"><input  type="submit" id="submitbutton"
					  class="blue-button" onclick="validate()" /> </td> 
			</tr>
			
		</table>
	</form:form>
	
	<!-- 
	  <span>
	<select name="project">
					<option value="PROJECTID">PROJECTID</option>
	
	</span> 
	</br>
	<!--  <div style="display:inline;position: absolute;
    top: 20%;
    left: 58%;">
		<h4>Search </h4>
		<form:form method="GET" action="/updateCustomer">
			<select name="s_no">
				<c:forEach items="${listOfCustomers}" var="customer">
					<option value="${customer.s_no}">${customer.projectid}</option>
				</c:forEach>
				<input type="submit" value="Search" class="blue-button" />
			</select>
		</form:form>
	</div>
	  
	<center><h3>Project List</h3></center>
	<c:if test="${!empty listOfCustomers}">
		<table rules="cols" class="tg">
			<tr>

				<th width="120">Project ID</th>
				<th width="120">Project Name</th>
				<th width="120">Project Manager</th>
				<th width="120">Delivery Director</th>
				<th width="60">Location</th>
				<th width="120">Project Type</th>
				<th width="80">Unit</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr> 
			<c:forEach items="${listOfProjects}" var="project">
				<tr>

					<td>${project.projectid}</td>
					<td>${project.projectname}</td>
					<td>${project.projectmanager}</td>
					<td>${project.deliverydirector}</td>
					<td>${project.location}</td>
					<td>${project.projecttype}</td>
					<td>${project.unit}</td>
					<td><a
						href="<c:url value='/updateProject/${project.id}' />">Edit</a></td>
					<td><a
						href="<c:url value='/deleteProject/${project.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if> -->
  	 <script type="text/javascript">

  /*	var email=document.getElementById("email");
		 function validation(email) {
			 var email=document.getElementById("email");
			 var re =/[^[a-zA-Z][-_.a-zA-Z0-9]{5,29}@c(sscorp)?.com$]/;
			  return re.test(email);
		 }*/
				 function validate() {
					 var email=document.getElementById("domainCheck").value;
					 var re =/^[a-zA-Z0-9_.+-]+@(?:(?:[a-zA-Z0-9-]+\.)?[a-zA-Z]+\.)?(csscorp)\.com$/g;
					  var result= re.test(email);
				   if (!result) {
					   //document.getElementById("submitbutton").disabled = true;
					   var validVar = document.getElementById("domainCheck");
					   validVar.setCustomValidity("Invalid Domain");
				     } 
				   else {
					   var validVar = document.getElementById("domainCheck");
					   validVar.setCustomValidity("");
					   alert("You have submitted your records successfully");
				   }

	
		} 
	</script> 
</body>
</html>
