<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<html>
<head>
<title></title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />

<style>
.sidenav {
	position: absolute;
	height: 100%;
	width: 0;
	z-index: 1;
	top: 0;
	right: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}


</style>
</head>


<body>


	<div id="header">
		<div class="top">
			<div id="logo">
				<img src="img/logo.png" />
			</div>
			<nav id="nav">
				<ul>
					<li><a href="manual.do" id="manual">Manual</a></li>

					<li><span class="opener">Analysis</span>
						<ul>
							<li><a href="step1.do" id="step1">STEP 01</a></li>
							<li><a href="#" id="step2">STEP 02</a></li>
							<li><a href="#" id="step3">STEP 03</a></li>
							<li><a href="#" id="step4">STEP 04</a></li>
						</ul></li>

					<li><a href="about.do" id="about">About Us</a></li>

				</ul>
			</nav>
		</div>
	</div>





	<div id="main">
		<div id="login">
			<ul>
				<li style="display: inline"><a href="#">MyPage</a></li>
				<li style="display: inline"><a href="#">Login</a></li>
			</ul>
		</div>

		<div id="content_container">
			<div id="content">
				<c:choose>
					<c:when test="${center == null}">
						<jsp:include page="manual.jsp"></jsp:include>
					</c:when>
					<c:otherwise>
						<jsp:include page="${center}.jsp"></jsp:include>
					</c:otherwise>
				</c:choose>

			</div>

			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="#"></a> <a href="#"></a> 
				<a href="#"></a>
				<a href="#"></a>
			</div>

		</div>





		<div id="footer">Copyright ¨Ï . All Rights Reserved.</div>
	</div>





	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "30%";
			document.getElementById("content").style.width = "70%";
			document.getElementById("content").style.marginRight = "30%";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
			document.getElementById("content").style.width = "100%";
			document.getElementById("content").style.marginRight = "30%";

		}

		$(document).ready(function() {
			<c:choose>
			<c:when test="${data != null}">
			openNav();
			</c:when>
			</c:choose>

		});
		
	</script>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollzer.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>


</body>
</html>