
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<style>
 th
{
border:1px solid black;
}

</style>
</head>
<body>    
	
			<table rules="cols" style="margin:0 auto;border:2px solid #000;">					
				<tr>
				<th width="80">Checkin Date</th>
				<th width="80"> Checkin Time </th>
				<th width="80"> Checkout Date </th>
				<th width="60">Checkout Time</th>
				
				</tr> 
			<c:forEach items="${listOfData}" var="customer">
				<tr>

					<td>${customer.checkinDate}</td>
					<td>${customer.checkinTime}</td>
					<td>${customer.checkoutDate}</td>
				   <td>${customer.checkoutTime}</td>				   			 											
				</tr>
			</c:forEach>
		</table>
	

</body>
</html>