
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE web-app PUBLIC
  "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
   "http://java.sun.com/dtd/web-app_2_3.dtd" >
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page session="false"%>



<html>
<head>
<meta charset="UTF-8">
<title>NSF RNA SSAC</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css">
</head>
<body>
	<ul class="navigation">
	    <li class="nav-item"><a href="<c:url value="/"/>">Home</a></li>
	    <li class="nav-item"><a href="<c:url value="/contact"/>">Contact Us</a></li>
	    <li class="nav-item"><a href="<c:url value="/about"/>">About Us</a></li>
	    <li class="nav-item"><a href="<c:url value="/team"/>">Team Members</a></li>
	    <li class="nav-item"><a href="<c:url value="/upload"/>">Search</a></li>
	</ul>

	<input type="checkbox" id="nav-trigger" class="nav-trigger" />
	<label for="nav-trigger"></label>

	<div class="site-wrap">
    <!-- insert the rest of your page markup here -->
	
	<div id="header">
		<a href="<c:url value="/"/>" ><img class="logo" src="${pageContext.request.contextPath}/resources/images/logo.png" alt=""></a>
	</div>

<div>
	<h2>Submission</h2>

	
		<fieldset>
			<table>
				<tr>
				<td><p align="right"><font size="5" color="blue">${msg}</font></p></td><br/>
				
				<form method="POST" action="/nsf/RNASearch">
				</tr>
				  <input type="text" name="path"><br /> <br /> 
				  <input type="submit" value="Search">
				  </form>
			</table>
		</fieldset>
	</div>
</div>
</html>