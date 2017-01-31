<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE web-app PUBLIC
  "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
   "http://java.sun.com/dtd/web-app_2_3.dtd" >

<%@ page session="false"%>

<html>
<head>
<meta charset="UTF-8">
<title>RNA SSAC | Contact Us</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css">
<link rel="stylesheet"
	media="screen and (min-width: 0px) and (max-width: 1178px)"
	href="${pageContext.request.contextPath}/resources/css/styleMedium.css"
	type="text/css">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/logo.png">
</head>
<body>
	<ul class="navigation">
		<li class="nav-item"><a href="<c:url value="/"/>">Home</a></li>
		<li class="nav-item"><a href="<c:url value="/contact"/>">Contact
				Us</a></li>
		<li class="nav-item"><a href="<c:url value="/about"/>">About Us</a></li>
		<li class="nav-item"><a href="<c:url value="/team"/>">Team
				Members</a></li>
		<li class="nav-item"><a href="<c:url value="/search"/>">Search</a></li>
		<li class="nav-item"><a href="<c:url value="/comparison"/>">Comparison</a></li>
	</ul>

	<input type="checkbox" id="nav-trigger" class="nav-trigger" />
	<label for="nav-trigger"></label>

	<div class="site-wrap">
		<!-- insert the rest of your page markup here -->
		<div class="focus">
		<div id="header">
			<figure class="headImages">
				<a href="http://www.tamuc.edu"><img class="tamucLogo" style="max-width: 600px"
					src="${pageContext.request.contextPath}/resources/images/LionLogo.png"
					alt="" ></a>


				<a href="<c:url value="/"/>"><img class="logo" 
				src="${pageContext.request.contextPath}/resources/images/logo.png"
				alt="" ></a>
		
				<a href="http://tamuc.edu"><img class="tamlion" src="${pageContext.request.contextPath}/resources/images/ImageRight.jpg" ></a>


		</figure>	

		<nav class="HamburgerStyle">

			<a href="<c:url value="/"/>">Home</a>
			<a href="<c:url value="/contact"/>">Contact Us</a>
			<a href="<c:url value="/about"/>">About Us</a>
			<a href="<c:url value="/team"/>">Team Members</a>
			<a href="<c:url value="/search"/>">Search</a>
			<a href="<c:url value="/comparison"/>">Comparison</a>


		</nav>
		</div>
		<div id="body">
			<div class="content">
				<!-- <img src="${pageContext.request.contextPath}/resources/images/telephone.jpg" alt=""> -->
				<h2>send us a message</h2>
				<form action="#">
					<label for="firstName"> <span>first name*</span> <input
						type="text" name="first" id="firstName"></label> <label
						for="lastName"> <span>last name*</span> <input type="text"
						name="last" id="lastName"></label> <label for="email"> <span>email*</span>
						<input type="text" name="email" id="email"></label> <label
						for="phoneNumber"> <span>Phone Number</span> <input
						type="text" name="phone" id="phoneNumber"></label> <label
						for="subject"> <span>subject*</span> <input type="text"
						name="subject" id="subject"></label> <label for="message">
						<span>message</span> <textarea name="" id="message" cols="30"
							rows="10"></textarea>
					</label> <input type="submit" value="" id="submit">
				</form>
			</div>
		</div>
		</div>
		<div id="footer">
			<div>
				<p>
					<center><span>All rights reserved &copy; 2015 - <script>
						document.write(new Date().getFullYear())
					</script>
						RNA SSAC Project funded by the National Science Foundation (<a
						href="http://www.nsf.gov/">NSF</a>).
					</span></center><!-- <a href="#">Terms of Service</a> | <a href="#">Privacy Policy</a> -->
				</p>
				<ul>
					<li id="facebook"><a href="https://www.facebook.com/rnassac/">facebook</a>
					</li>
					<li id="twitter"><a href="http://www.twitter.com/">twitter</a>
					</li>
				</ul>

			</div>
		</div>
	</div>
</body>
</html>