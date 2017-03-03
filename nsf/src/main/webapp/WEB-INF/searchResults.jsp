<!-- 
VARNA: Interactive drawing and editing of the RNA secondary structure
K&eacute;vin Darty, Alain Denise and Yann Ponty
Bioinformatics, pp. 1974-1975, Vol. 25, no. 15, 2009

<param id="high" name="highlightRegion" value="2-5:fill=#bcffdd" />
 -->



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
<title>RNA SSAC | Search Results</title>

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

	<input type="checkbox" id="nav-trigger" onClick="ShowBod()" class="nav-trigger" />
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

		<nav class="HamburgerStyle" >

			<a href="<c:url value="/"/>">Home</a>
			<a href="<c:url value="/contact"/>">Contact Us</a>
			<a href="<c:url value="/about"/>">About Us</a>
			<a href="<c:url value="/team"/>">Team Members</a>
			<a href="<c:url value="/search"/>">Search</a>
			<a href="<c:url value="/comparison"/>">Comparison</a>
			<a href="<c:url value="/publications"/>">Publications</a>


		</nav>
			<br><br><br>
		</div >
		<script type="text/javascript">
			function restartApplet(appletid) {
				var applet = document.getElementById(appletid);
				document.applet.view.refresh()
			} 

			function setTitle(appletid, ntitle) {
				var applet = document.getElementById(appletid);
				var script = "setTitle(\"" + ntitle + "\")";
				applet.runScript(script);
			}; 
			
			function callAllVarnaDefaults(appletid, sequence, title) {
				var applet = document.getElementById(appletid);
				var script = "";
				
				var dotParenthesis = sequence.split("#")[0];
				var neucleotides = sequence.split("#")[1];
				var highlight = sequence.split("#")[2];
				var thisTitle = title;
				
				//Draw RNA
				script = "setRNASmooth(\"" + neucleotides + "\",\"" + dotParenthesis
				+ "\")";
				applet.runScript(script);
				
				//Set Title
				script = "setTitle(\"" + thisTitle + "\")";
				applet.runScript(script);
				
				//Highlight the found region
				script = "setSelection("+highlight+")";
				applet.runScript(script);
				
			};

			function setRNASmooth(appletid, nseq, nstr, ntitle, x) {
				//Draw Structure
				var nseqs = nseq.split("#")[1];
				var nstrs = nstr.split("#")[0];
				var applet = document.getElementById(appletid);
				var script = "setRNASmooth(\"" + nseqs + "\",\"" + nstrs
						+ "\")";
				applet.runScript(script);
				/* 
				//Set Highlight
				var a = x.split("#")[2];
				var applet = document.getElementById(appletid);
				var script = "setSelection("+a+")";
				applet.runScript(script);
				
				//Set Title
				var applet = document.getElementById(appletid);
				var script = "setTitle(\"" + ntitle + "\")";
				applet.runScript(script); */
				
			};

			function redraw(appletid, nalgo) {
				var applet = document.getElementById(appletid);
				var script = "redraw(\"" + nalgo + "\")";
				applet.runScript(script);
			};

			function setIndices(appleid, start, end) {
				var applet = document.getElementById(appletid);
				var script = "setIndices(" + start + "," + end + ")";
				applet.runScript(script);
			};

			/* function setSelection(appletid,values)
			{
			    var applet = document.getElementById(appletid);
				var txt = "";
				for(var i=0;i<values.length;i++) naview
				{
					if (i>0)
					  txt += ", ";
					txt += values[i];
				}
			    var script = "setSelection(["+txt+"])";
				applet.runScript(script);
			};
			 */

			function setSelection(appletid, x) {
				var a = x.split("#")[2];
				var applet = document.getElementById(appletid);
				var script = "setSelection("+a+")";
				applet.runScript(script);
			}; 

			//var xyz = "2-5:fill=#bcffdd";

			//var str = document.getElementbyId('option');
			//var res = str.split("#");
		</script>

		<div id="featured">

			<table id="varna">
				<!-- cellspacing="1"  -->

				<tr>
					<td>Action</td>
					<td>Varna Depiction of Selected RNA</td>
					<td>Select RNA</td>
				</tr>

				<tr>
				<td class="buttons">
						<!-- <br/><button class="buttonSpace" onclick="setSelection('VA','${HighLight[0] -1 }','${(patternLength + HighLight[0]) - 2}');">Highlight</button> -->
						<br/><button class="buttonSpace" onclick="redraw('VA', 'naview');">Naview</button>
						<br/><button class="buttonSpace" onclick="redraw('VA', 'circular');">Circular</button>
						<br/><button class="buttonSpace" onclick="redraw('VA', 'radiate');">Radiate</button>
						<br/><button class="buttonSpace" onclick="redraw('VA', 'linear');">Linear</button>
					</td>
					
				
					<td><applet ID="VA" code="VARNA.class"
							codebase="${pageContext.request.contextPath}${pageContext.request.contextPath}/${pageContext.request.contextPath}/resources/applet/"
							archive="varna.jar" width="800" height="700"
							style="text-align: right">
							<param name="java_version" value="1.5+">
							<param name="sequenceDBN" value="${nucleotide[0]}" />
							<param name="structureDBN" value="${defaultResult[0][0]}" />
							<PARAM name="algorithm" value="naview" />
							<param name="flat" value="true" />
							<param name="title" value="${defaultResult[1][0]}" />
							<param name="background" value="FFFFFF" />
							<!-- <param name="highlightRegion" value="${defaultResult[2][0] }:fill=#185fdb" /> -->

						</applet></td>
					
					

					<td><select id="select"
						style="height: 600px; overflow-y: scroll" multiple name="${defaultResult}"
						onclick="callAllVarnaDefaults('VA',this.options[this.selectedIndex].value, this.options[this.selectedIndex].text);">
						
							<c:forEach items="${defaultResult}" begin="1" end="1" varStatus="iterators">
								<c:forEach items="${defaultResult[iterators.index]}" varStatus="iterator">
									<option id="option" value="${defaultResult[0][iterator.index]}#${nucleotide[iterator.index]}#${defaultResult[2][iterator.index]}">${defaultResult[1][iterator.index]}</option>
									<!-- System.out.println($defaultResult[iterators.index] + "\n") -->
								</c:forEach>
							</c:forEach>

					</select></td>
				</tr>

				</table>
					
				<table>
					<tr>
						<th>RNA Found <br />with Pattern:</th>
						<th>Index of <br />Pattern Found:</th>
						<th>Length of <br />Pattern:</th>
					</tr>
					
					<c:forEach items="${defaultResult}" begin="1" end="1" varStatus="i" >
						<c:forEach items="${defaultResult[i.index]}" varStatus="j">
							<tr>
								<td>${defaultResult[1][j.index]} </td>
								<td>${defaultResult[2][j.index].split("-")[0]} </td>
								<td>${defaultResult[2][j.index].split("-")[1] }</td>
							</tr>
						</c:forEach>
					</c:forEach>
				</table>

			
			<!-- </FIELDSET> -->

		</div>
		</div>
		<div id="footer">
			<div>

				<p>
					<center><span>2016 &copy; RNA SSAC Project funded by NSF.</span><a href="#">Terms
						of Service</a> | <a href="#">Privacy Policy</a></center>
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
						secondary structure K&eacute;vin Darty, Alain Denise and Yann Ponty
						Bioinformatics, pp. 1974-1975, Vol. 25, no. 15, 2009</span></center>
				</p>

			</div>
		</div>
	</div>
</body>

</html>
