<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>

    

<script>

</script>
</head>

<body>

<div style="text-align:center;margin-top:50px">

    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 style="font-family:times new roman;text-transform:uppercase"><span style="color:#228dd5;font-size:35px">L</span>og in</h2>

        <div  ${error != null ? 'has-error' : ''}>
            <span style="display:block;text-align:center;margin-top:20px;margin-bottom:10px">${msg}</span>
            <input name="username" type="text"  placeholder="Username"
                   autofocus="true" style="width:20%;height:20px;margin-bottom:20px"/>
                   <br>
            <input name="password" type="password"  placeholder="Password" style="width:20%;height:20px"/>
            <span style="display:block;text-align:center;margin-top:10px;color:red">${errorMsg}</span>
  				<br>
            <button style="background-color:#228dd5;width:20%;height:auto;border:2px solid #000;font-size:20px;color:white"  type="submit">Log In</button>
        </div>

    </form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></body>
</html>
