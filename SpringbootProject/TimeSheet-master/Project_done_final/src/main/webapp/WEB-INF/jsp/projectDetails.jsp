<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ page trimDirectiveWhitespaces="true" %>
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
	<form:form method="post" modelAttribute="project"
		action="${pageContext.request.contextPath}/addProject"
		style="margin:0 auto;border:5px solid grey;padding:10px;border-radius:15px;width:60%;margin-top:20px;">
		
		
		<br/>
		<table style="margin:0 auto;">
			<tr>
				<th colspan="2">Add Project</th>
			</tr>
			<tr>
				<form:hidden path="id" />
			<tr>
				<form:hidden path="id" />
				<td><form:label path="projectid">Project ID:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" id="userinput" class="test"
						path="projectid" size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="projectname">Project Name:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="projectname" class="test"
						size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="projectmanager">Project Manager:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="projectmanager" class="test"
						size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="deliverydirector">Delivery Director:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="deliverydirector" class="test"
						size="30" maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="location">Location:</form:label><b
					style="color: red"> * </b></td>
				<td><form:input required="required" path="location" size="30" class="test"
						maxlength="30" autocomplete="off"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="projecttype">Project Type:</form:label><b
					style="color: red"> * </b></td>
				<td><select name="projecttype">
						<option value="PSO">PSO</option>
						<option value="NON-PSO">NON-PSO</option>
				</select></td>
				<!--  	<td><form:input required="required" path="projecttype"
						size="30" maxlength="30"></form:input></td>-->
			</tr>
			<tr>
				<td><form:label path="unit">Unit:</form:label><b
					style="color: red"> * </b></td>
				<td><select name="unit">
						<option value="DES">DES</option>
						<option value="CIS">CIS</option>
						<option value="CTAS">CTAS</option>
						</select></td>
				<!--  <td><form:input required="required" path="unit" size="30"
						maxlength="30"></form:input></td> -->
			</tr>
<tr>
				<td><form:label path="status">Status:</form:label><b
					style="color: red"> * </b></td>
				<td><select name="status">
						<option value="Active">Active</option>
						<option value="On-Hold">On-Hold</option>
						<option value="Inactive">Inactive</option></select></td>
						</tr>
			<tr> 
				<td colspan="2"><input type="submit" id="submitbutton"
					onclick=" validation()" class="blue-button" style="margin-left:40%;top:15px;background:steelblue;"/> </td> 
			</tr>
		
			<tr>
				<br/> <br/> <br/> <td colspan="2"><INPUT TYPE="RESET" value="Reset" class="blue-button" style="margin-left:40%;top:15px;background:steelblue;"/> </td>
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
	</c:if>

	<script type="text/javascript">
	function alertName(){
	alert("Form has been submitted");
	} 
	</script>
		<!-- function validation() {
	var count=document.getElementsByClassName("test").value;
	if(typeof(count)=="undefined"){
		alert("You have not submitted your record successfully");

	}
	else 
		{
		alert("You have submitted your record successfully");
		}
		}
	</script> -->
	
</body>
</html>
