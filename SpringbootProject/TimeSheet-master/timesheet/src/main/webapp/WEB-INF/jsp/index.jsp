<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<style>
A:hover {text-decoration: none;
   
    border: 0px;
   font-size:14pt;
    color: #2d2b2b; }
</style>
<link rel="stylesheet" type="text/css" href="datepicker.css"/>
<script type="text/javascript" src="datepicker.js"></script>
<script>
function validate()
{
	 var  sdate = document.frm.date.value;
	 var sdateAr=sdate.split("-");
	if(document.frm.date.value=="")
	{
		
		alert("Please enter the date.");
		document.frm.date.focus();
		return false;
	}
	if(sdateAr.length!=3)
	{
		alert("Please enter valid Date in 
                mm-dd-yyyy format.");
		document.frm.date.value="";
		document.frm.date.focus();
		return false;
	}
	if(document.frm.event_description.value=="")
	{
		alert("Please enter the event description.");
		document.frm.event_description.focus();
		return false;
	}
	return true;
	
}
</script>
</head>
<body>
<div style="width:65%;margin:2% auto 4% auto;">
		<div style="float:left">
		<form:form method="GET" action="/getAlldata">
			<select name="e_id">
				<c:forEach items="${listOfEmployee}" var="project">
					<option value="${project.eid}">${project.emp_id}</option>
				</c:forEach>
				<b>Date:</b></td><td><input  type="date" name="checkin_Date" 
id="cdate">
				<b>Date:</b></td><td><input  type="date" name="checkout_Date" 
id="cdate">
				<input type="submit" value="Search" class="blue-button" />
			</select>
			

			
		</form:form>
		</div>
</body>
</html> 
