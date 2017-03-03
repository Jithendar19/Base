<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE web-app PUBLIC
  "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
   "http://java.sun.com/dtd/web-app_2_3.dtd" >

<%@ page session="false"%>

<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=.4, minimum-scale=.4, maximum-scale=.5, user-scalable=yes"/> <!--320-->
	<title>Our Team - NSF SSAC</title>
	<link rel="stylesheet"
	media="screen and (min-device-width: 1179px)"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css">
<link rel="stylesheet"
	media="screen and (min-width: 851px) and (max-width: 1178px)"
	href="${pageContext.request.contextPath}/resources/css/styleMedium.css"
	type="text/css">
<link rel="stylesheet"
	media="screen and (min-width: 0px) and (max-width: 850px)"
	href="${pageContext.request.contextPath}/resources/css/small.css"
	type="text/css">
	<link rel="icon" href="${pageContext.request.contextPath}/resources/images/logo.png">
<!-- here is where the jquery starts -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/JQuery/okfocus-okshadow-183cd27/src/okshadow.js" type="text/javascript"></script>

<!-- here is where it ends -->
<script>

function ShowBod()
{
	var element = document.getElementById("vis");
	var bod = document.body.style;
	var check = document.getElementById("nav-trigger");
	
	if(check.checked)
	{
	bod.backgroundImage = "url(../resources/images/bg.png)";
	element.style.display = "block";
	}
	else
	{
		bod.background = "none";
		element.style.display = "none";
	}
}

window.onload = function(){
	var check = document.getElementById("nav-trigger");
	var element = document.getElementById("vis");
	var bod = document.body.style;
	check.checked = false;
	bod.background = "none";
	element.style.display = "none";
	
}

</script>
</head>
<body>
	<ul id="vis" class="navigation">
		<li class="nav-item"><a href="<c:url value="/"/>">Home</a></li>
		<li class="nav-item"><a href="<c:url value="/contact"/>">Contact
				Us</a></li>
		<li class="nav-item"><a href="<c:url value="/about"/>">About Us</a></li>
		<li class="nav-item"><a href="<c:url value="/team"/>">Team
				Members</a></li>
		<li class="nav-item"><a href="<c:url value="/search"/>">Search</a></li>
		<li class="nav-item"><a href="<c:url value="/comparison"/>">Comparison</a></li>
		<li class="nav-item"><a href="<c:url value="/publications"/>">Publications</a></li>
	</ul>

	<input type="checkbox" id="nav-trigger" onclick="ShowBod()" class="nav-trigger" />
	<label for="nav-trigger"></label>

	<div class="site-wrap">
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
			<a href="<c:url value="/publications"/>">Publications</a>

		</nav>
	</div>
	<img class="FWAH" src="${pageContext.request.contextPath}/resources/images/campus.png" alt="">
	<div id="body">
		
			
			<h2>Our Team</h2>
			<div class="section">
				<!--/////////////////////TEAM MEMBERS///////////////////////////////////-->
				<table class="ContactInfo">
					<tr>
						<th>
							<section>
								<H4>Project Owner</H4>
								<figure><img src="${pageContext.request.contextPath}/resources/images/arslan.jpg" alt="" width="170" height="196"></figure>
								<p>
									Professor Dr. Abdullah Arslan
									<br />TAMUC: Computer Science
									<br />Phone: +1 (903) 468-3097
									<br />E-mail: <a href="mailto:Abdullah.Arslan@tamuc.edu">Abdullah.Arslan@tamuc.edu</a>
									<br />Hours: Mondays to Fridays 7:00am - 6:00pm
								</p>
							</section>
						</th>

						<th>
						<section>
								<H4>Student Researcher - <br>Graduate Student</H4>
								<figure><img src="${pageContext.request.contextPath}/resources/images/jitu.jpg" alt="Jithendar's pic" width="170" height="196"></figure>
								<p>
									Jithendar Anandan
									<br />TAMUC, Computer Science
									<br />E-mail: <a href="mailto:janandan@leomail.tamuc.edu">janandan@leomail.tamuc.edu</a>
									<br />Hours: Monday-Fridays 7:00am - 6:00pm
								</p>
							</section>
							
						</th>

						<th>
							<section>
								<H4>Student Researcher - Undergraduate Student</H4>
								<figure><img src="${pageContext.request.contextPath}/resources/images/eric.png" alt="Eric's Pic" width="170" height="196"></figure>
								<p>
									Eric Fry
									<br />TAMUC: Computer Science &amp; Mathematics
									<br /><a href="mailto:efry1@leomail.tamuc.edu">efry1@leomail.tamuc.edu</a>
									<br />Hours: Monday-Fridays 8:00am - 6:00pm
								</p>
							</section>
						</th>
					</tr>
					<tr>
						<td>
							<section>
								<H4>Student Researcher - Undergraduate Student</H4>
								<figure><img src="${pageContext.request.contextPath}/resources/images/Keith.jpg" alt="Kieth's Pic" width="170" height="196"></figure>
								<p>
									Keith Monschke
									<br />TAMUC: Computer Science &amp; Mathematics
									<br /><a href="mailto:kmonschke@leomail.tamuc.edu">kmonschke@leomail.tamuc.edu</a>
									<br />Hours: Monday-Fridays 7:00am - 6:00pm
								</p>
							</section>
						</td>
						<td>
							<section>
								<H4>Student Researcher - Undergraduate Student</H4>
								<figure><img src="${pageContext.request.contextPath}/resources/images/jason.jpg" alt="Jason's Pic" width="170" height="196"></figure>
								<p>
									Jason Bowerman
									<br />TAMUC: Computer Science &amp; Mathematics
									<br /><a href="mailto:jbowerman1@leomail.tamuc.edu">jbowerman1@leomail.tamuc.edu</a>
									<br />Hours: Monday-Fridays 8:00am - 6:00pm
								</p>
							</section>
						</td>
						<td>
							<section>
								<H4>Student Researcher - <br>Graduate Student</H4>
								<figure><img src="${pageContext.request.contextPath}/resources/images/Nitin.jpg" alt="Nitin's Pic" width="170" height="196"></figure>
								<p>
									Nitin Ganneboina
									<br />TAMUC: Computer Science
									<br /><a href="nganneboina@leomail.tamuc.edu">nganneboina@leomail.tamuc.edu</a>
									<br />Hours: Monday-Fridays 9:00am - 5:00pm
								</p>
							</section>
						</td>
						</tr>
						<tr>
						<td>
							<section>
								<H4>Student Researcher - <br>Graduate Student</H4>
								<figure><img src="${pageContext.request.contextPath}/resources/images/Shanthi.JPG" alt="Shanthi's Pic" width="170" height="196"></figure>
								<p>
									Shanthi Kollu
									<br />TAMUC: Computer Science
									<br /><a href="mailto:skollu4@leomail.tamuc.edu">skollu4@leomail.tamuc.edu</a>
									<br />Hours: Monday-Fridays 9:00am - 5:00pm
								</p>
							</section>
						</td>
						
						<td>
						
						<section>
								<H4>Student Researcher - Undergraduate Student</H4>
								<figure><img src="${pageContext.request.contextPath}/resources/images/rabin.jpg" alt="Rabin's pic" width="170" height="196"></figure>
								<p>
									Rabindra Raj Pandey
									<br />TAMUC: Computer Science
									<br />E-mail: <a href="mailto:rrj.pandey@gmail.com">rrj.pandey@gmail.com</a>
									<br />Hours: Mondays to Fridays 7:00am - 6:00pm
								</p>
							</section>
							
						</td>
					</tr>
				</table>
				<!--////////////////////////////////////////////////////////////////////-->
			
			</div>
			
		
	<script type="text/javascript">
	$("document").ready(function(){
		
		
		 	
    	$('.ContactInfo td,th').okshadow();
    		
	});
</script>
	</div>
	</div>
	
	
	
	<div id="footer">
		<div>
			<p>
				<center></center><span>2015 &copy; NSF SSAC Project funded by NSF.</span><a href="#" >Terms of Service</a> | <a href="#" >Privacy Policy</a></center>
			</p>
			<ul>
				<li id="facebook">
					<a href="https://www.facebook.com/rnassac/">facebook</a>
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