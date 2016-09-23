<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE web-app PUBLIC
  "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
   "http://java.sun.com/dtd/web-app_2_3.dtd" >

<%@ page session="false"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>


<html>
<head>
	<meta charset="UTF-8">
	<title>NSF RNA SSAC</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
</head>
<body>
	<div class="menu">
		<button class="menu_btn">Menu</button>
		<div class="menu_content">
			<a href="<c:url value="/"/>">Home</a>
			<a href="<c:url value="/contact"/>">Contact Us</a> 
			<a href="<c:url value="/about"/>">About Us</a> 
			<a href="<c:url value="/team"/>">Team Members</a> 
			<a href="<c:url value="/upload"/>">Search</a>
		</div>
	</div>
	<div id="header">
		<a href="<c:url value="/"/>" class="logo"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt=""></a>
	</div>
<div id="section">
	<div align="left">
	<h2><font size="3" color="red">${msg}</font></h2>
	
	<%
   Date date = new Date();
	%>
	<c:set var="now" value="<%=date.toLocaleString() %>" />
	
	<form method="POST" enctype="multipart/form-data"
		action="/nsf/verna">
		<table>
		<tr><td>File to upload:</td></tr>
		<tr><td><input type="file" name="file"></input></td></tr> 
		 <tr><td>Name:</td></tr>
		 <tr><td> <input type="text" name="name" value="RNA.${now}"></input></td></tr> 
		<tr><td><input type="submit" value="Upload"></input></td></tr>
		<tr><td> Press here to upload the file!</td></tr>
		</table>
	</form>
	
</div>
		
	</div>
	<div id="featured">
		<div>
			<div class="article">
				<h2>Welcome to RNA SSAC Project</h2>
				<img src="${pageContext.request.contextPath}/resources/images/journalsm.jpg" alt="">
				<p>
					We intend to provide various services for researchers and professional with a unique solution for finding patterns in a RNA.  Our new representation of structures will allow you to submit newly found RNA to our database in various existing formats, search from patterns with more accuracy and efficiency and many more other features. 
				</p>
				<p>
					
				</p>
				<p>
					You can submit your data to us at the link below. <a href="#">Submit Here</a>
				</p>
			</div>
			<ul>
				<li>
					<h3>SUBMIT</h3>
					<div>
						<p>
							Submit your RNA sample to add to our database.
						</p>
						<a href="blog.html" class="more">read more</a>
					</div>
					<img src="${pageContext.request.contextPath}/resources/images/f.gif" alt="">
				</li>
				<li>
					<h3>SEARCH</h3>
					<div>
						<p>
							Search for the RNA using substring or pattern.
						</p>
						<a href="blog.html" class="more">read more</a>
					</div>
					<img src="${pageContext.request.contextPath}/resources/images/suffixArray.png" alt="">
				</li>
				<li>
					<h3>ANNOTATE</h3>
					<div>
						<p>
							Annotate the RNA with possible matches.
						</p>
						<a href="blog.html" class="more">read more</a>
					</div>
					<img src="${pageContext.request.contextPath}/resources/images/ee.gif" alt="">
				</li>
				<li>
					<h3>COMPARE</h3>
					<div>
						<p>
							Compare your RNA sample with our existing RNA database.
						</p>
						<a href="blog.html" class="more">read more</a>
					</div>
					<img src="${pageContext.request.contextPath}/resources/images/d.gif" alt="">
				</li>
			</ul>
		</div>
	</div>
	<div id="footer">
		<div>
			<p>
				<span>2015 &copy; NSF SSAC Project funded by NSF.</span><a href="#" >Terms of Service</a> | <a href="#" >Privacy Policy</a>
			</p>
			<ul>
				<li id="facebook">
					<a href="https://www.facebook.com/NSF-SSAC-533481070149236/">facebook</a>
				</li>
				<li id="twitter">
					<a href="http://www.twitter.com/">twitter</a>
				</li>
				<li id="googleplus">
					<a href="http://www.googleplus.com/">googleplus</a>
				</li>
				<li id="rss">
					<a href="#" >rss</a>
				</li>
			</ul>
			<marquee>The time of the server is ${serverTime}</marquee>
		</div>
	</div>


</body>
</html>
