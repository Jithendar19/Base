<!-- 
VARNA: Interactive drawing and editing of the RNA secondary structure
Kévin Darty, Alain Denise and Yann Ponty
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

<title>RNA SSAC | Search Results</title>
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
	
	<script type="text/javascript">
	
		/* function restartApplet(appletid) {
			var applet = document.getElementById(appletid);
			document.applet.view.refresh()
		} */

		
		function setTitle(appletid,ntitle)
		{
		    var applet = document.getElementById(appletid);
		    var script = "setTitle(\""+ntitle+"\")";
			applet.runScript(script);
		};
				
		function setRNASmooth(appletid,nseq,nstr)
		{
			var nseqs=nseq.split("#")[1];
			var nstrs=nstr.split("#")[0];
		    var applet = document.getElementById(appletid);
		    var script = "setRNASmooth(\""+nseqs+"\",\""+nstrs+"\")";
			applet.runScript(script);
		};

		function redraw(appletid, nalgo) {
			var applet = document.getElementById(appletid);
			var script = "redraw(\"" + nalgo + "\")";
			applet.runScript(script);
		};
		
		function setIndices(appleid,start,end){
			var applet = document.getElementById(appletid);
			var script = "setIndices("+ start +","+end +")";
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

		function setSelection(appletid, x , b) {
	 		var a=x.split("#")[2];
			var applet = document.getElementById(appletid);
			var script = "setSelection("+ x +","+b +")";
			applet.runScript(script);
		}; 

		var xyz = "2-5:fill=#bcffdd";
		
		var str = document.getElementbyId('option');
		var res = str.split("#");
	</script>

	<div id="featured">

		<table id="varna" align="center"> <!-- cellspacing="1"  -->

			<tr>
				<td>Varna Depiction <br />of Selected RNA</td>
				<td >Select <br />RNA</td>
			</tr>
			
			<tr>
				<td>
					<applet ID="VA" code="VARNA.class" codebase="${pageContext.request.contextPath}/resources/applet/"
						archive="varna.jar" width="800" height="600" align="Right" >
						<param name="java_version" value="1.5+">
						<param name="sequenceDBN"
							value="${nucleotide[6]}" />
						<param name="structureDBN"
							value="${defaultResult[0][7]}" />
						<PARAM name="algorithm" value="naview"/>
						<param name="flat" value="true" />
						<param name="title" value="${defaultResult[1][7]}" />
						
						<param name="background" value="FFFFFF" />
						<!--  <param id="high" name="highlightRegion" value="270-300:fill=#bcffdd" />-->

					</applet>
				</td>

				<td>
					<select id="select" style="height: 600px; overflow-y: scroll"  multiple name="${defaultResult}" 
					onchange="setRNASmooth('VA',this.options[this.selectedIndex].value,this.options[this.selectedIndex].value);setTitle('VA', this.options[this.selectedIndex].text);">

						<c:forEach items="${defaultResult}" begin="1" end="1"
							varStatus="iterators">


							<c:forEach items="${defaultResult[iterators.index]}"
								varStatus="iterator">
								<option id="option" value="${defaultResult[0][iterator.index]}#${nucleotide[iterator.index]}#${indicesForPattern[iterator.index]}">${defaultResult[1][iterator.index]}</option>

							</c:forEach>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td align="center">
					<button onclick="setSelection('VA','270','300');">Highlight</button>
					<button onclick="redraw('VA', 'naview');">Naview</button>
					<button onclick="redraw('VA', 'circular');">Circular</button>
					<button onclick="redraw('VA', 'radiate');">Radiate</button>
					<button onclick="redraw('VA', 'linear');">Linear</button>
				</td>
			</tr>

		</table>
		<!-- </FIELDSET> -->

	</div>
	<div id="footer">
		<div>

			<p>
				<span>2015 &copy; RNA SSAC Project funded by NSF.</span><a href="#">Terms
					of Service</a> | <a href="#">Privacy Policy</a>
			</p>
			<ul>
				<li id="facebook"><a
					href="https://www.facebook.com/NSF-SSAC-533481070149236/">facebook</a>
				</li>
				<li id="twitter"><a href="http://www.twitter.com/">twitter</a>
				</li>
				<li id="googleplus"><a href="http://www.googleplus.com/">googleplus</a>
				</li>
				<li id="rss"><a href="#">rss</a></li>
			</ul>
			<p>
				<span>VARNA: Interactive drawing and editing of the RNA
					secondary structure Kévin Darty, Alain Denise and Yann Ponty
					Bioinformatics, pp. 1974-1975, Vol. 25, no. 15, 2009</span>
			</p>
			
		</div>
	</div>
	</div>
</body>

</html>
