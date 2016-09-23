<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE web-app PUBLIC
  "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
   "http://java.sun.com/dtd/web-app_2_3.dtd" >

<%@ page session="false"%>

<html>
<head>
	<meta charset="UTF-8">
	<title>RNA SSAC | Contact Us</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
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
	<div id="body">
		<div class="content">
			<img src="images/telephone.jpg" alt="">
			<h2>send us a message</h2>
			<form action="#">
				<label for="firstName"> <span>first name*</span>
					<input type="text" name="first" id="firstName">
				</label>
				<label for="lastName"> <span>last name*</span>
					<input type="text" name="last" id="lastName">
				</label>
				<label for="email"> <span>email*</span>
					<input type="text" name="email" id="email">
				</label>
				<label for="phoneNumber"> <span>Phone Number</span>
					<input type="text" name="phone" id="phoneNumber">
				</label>
				<label for="subject"> <span>subject*</span>
					<input type="text" name="subject" id="subject">
				</label>
				<label for="message"> <span>message</span>
					<textarea name="" id="message" cols="30" rows="10"></textarea>
				</label>
				<input type="submit" value="" id="submit">
			</form>
		</div>
		<div class="sidebar">
			<h3>contact</h3>
			<ul>
				<li>
					<span class="address">address</span>
					<ul>
						<li>
							Texas A&M University - Commerce
							<br />Computer Science Department - J203
							<br />PO Box 3011
							<br />Commerce, TX 75428
						</li>
					</ul>
				</li>
				<li>
					<span class="phone">telephone</span>
					<ul>
						<li>
							903-468-3097
						</li>
					</ul>
				</li>
				<li>
					<span class="email">email</span>
					<ul>
						<li>
							<a href="#">rnassac@gmail.com</a>
						</li>
					</ul>
				</li>
				<li>
					<span class="twitter">twitter</span>
					<ul>
						<li>
							<a href="#">@rnassac</a>
						</li>
					</ul>
				</li>
				<li>
					<span class="facebook">facebook</span>
					<ul>
						<li>
							<a href="#">www.facebook/rnassac</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<div id="footer">
		<div>
			<p>
				<span>2015 &copy; RNA SSAC Project funded by the National Science Foundation 
				(<a href="http://www.nsf.gov/">NSF</a>).</span><a href="#" >Terms of Service</a> | <a href="#" >Privacy Policy</a>
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
			
		</div>
	</div>
	</div>
</body>
</html>