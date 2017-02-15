<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE web-app PUBLIC
  "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
   "http://java.sun.com/dtd/web-app_2_3.dtd" >

<%@ page session="false"%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=.4, minimum-scale=.4, maximum-scale=.5, user-scalable=yes"/> <!--320-->
<meta charset="UTF-8">
<title>RNA SSAC | Search</title>
<link rel="stylesheet"
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
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/logo.png">
<!-- stops some background problems  -->
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
<!-- ////////////////////////////////////// -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	$(function() {
		function moveItems(origin, dest) {
			$(origin).find(':selected').appendTo(dest);
		}

		function moveAllItems(origin, dest) {
			$(origin).children().appendTo(dest);
		}

		$('#left').click(function() {
			moveItems('#results', '#select');
		});

		$('#right').on('click', function() {
			moveItems('#select', '#results');
		});

		$('#leftall').on('click', function() {
			moveAllItems('#results', '#select');
		});

		$('#rightall').on('click', function() {
			moveAllItems('#select', '#results');
		});
	});
	function getFileNames() {

	};
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
			<a href="<c:url value="/publications"/>">Publications</a>

		</nav>
		</div>
			<h2 align="center">The Comparison Algorithm is temporarily not available at this time. <br />We are currenlty undergoing a hardware upgrade.</h2>

		<div id="featured" align="center">
			<div>
				<div class="article" style="width: 99%; height: 100%; text-align: center;">
				 <form method="POST" enctype="multipart/form-data">
					<table>
						<tr>
							<th>Select RNA <br />to Compare:
							</th>
							<th></th>
							<th>Selected RNA</th>
						</tr>
						<tr>
							<td style="height: 300;"><select id="select"
								multiple name="select" style="height: 300px;">
									<option selected disabled value=''>Please make a selection</option>
									<c:forEach items="${fileNames}" begin="1" end="4666" varStatus="row">
										<option id="option" value="${fileNames[row.index][0]}">${fileNames[row.index][0]}</option>
									</c:forEach>
							</select></td>
							<td style="height: 300px; margin: auto; display: block;">
								<input type="button" id="left" value="&lt;" /> 
								<input type="button" id="right" value="&gt;" /><br /> 
								<input type="button" id="leftall" value="&lt;&lt;" /> 
								<input type="button" id="rightall" value="&gt;&gt;" /></td>
							<td style="height: 300;"><select id="results"
								multiple="multiple" name="results" style="height: 300;">
								<option selected disabled value=''>Please make a selection</option>
							</select></td>
						</tr>
						<tr colspan="3">
								<td style="text-align: right">Search Type:</td>
								<td style="text-align: left"><select id="searchType"
									multiple name="searchType">
										<option value='1'>Structure-Nucleotide</option>
										<option value='0'>Structure Only</option>
								</select></td>
							</tr>
						<tr>
							<td colspan="3" rowspan="2"><input
								type="submit" value="Compare Selected RNA"
								onclick="form.action='/nsf/comparisonResults';" align="middle"></input></td>
								
						</tr>
						
					</table>
				</form> 
				</div>
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
					</span></center> <!-- <a href="#">Terms of Service</a> | <a href="#">Privacy Policy</a> -->
				</p>
				<ul>
					<li id="facebook"><a
						href="https://www.facebook.com/rnassac/">facebook</a>
					</li>
					<li id="twitter"><a href="http://www.twitter.com/">twitter</a>
					</li>
				</ul>
				<p>
					<center><span>VARNA: Interactive drawing and editing of the RNA
						secondary structure K&eacute;vin Darty,<br> Alain Denise and Yann Ponty
						Bioinformatics, pp. 1974-1975, Vol. 25, no. 15, 2009</span></center>
				</p>
			</div>
		</div>
	</div>

</body>
</html>