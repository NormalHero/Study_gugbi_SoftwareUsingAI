<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Exponent by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>관리자 페이지</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<style>
			
			.caption {
				margin-left: 1em;
			}
			
			body, #main, .twoBox, .row{
				height: 100%;
			}
			
			body {
				background-color: #f6f6f6;
			}
		
			div.mainBox {
				background-color: #fff;
    			border-bottom: 1px solid #d3d3d3;
    			width: 100%;
    			padding: 2em 0 0 16.8em;
    			
			}
			
			
			div#main {
				/* background-color: #eeeeee; */
				padding: 0 0 0 0;
    			width: 90%;
   				height: 1080px;
			}
			
			div.col-6.col-12-small{
				color: black !important;
				padding: 1em;
				margin-left: 1em;
				margin-top: 1em;
				margin-bottom: 1em;
			}
			
			div.col-6.col-12-small span.s-title{
				font-size: 1.3em;
				text-decoration: none !important;
				font-weight: bold;
			}
			
			div.col-6.col-12-small a{
				border-bottom: dotted 0px;
			}
			
			div.col-6.col-12-small span, a{
				color: black;
				
			}
			
			a.button.primary.small{
				background-color: #fff !important;
				color : black !important;
				margin-left: -2.1em;
				margin-bottom: 0 !important;
			}
			hr {
			    margin: 0 0 1em 0;
			    border-bottom: solid 1px #fff;
			}
			
			div.twoBox{
				width: 60%;
				height: 1080px;
				background-color: #fff;
				padding-top: 1em;
				border-left: 1px solid #bbb;
				border-right: 1px solid #bbb;
			}
			
			div.link-list a{
				display: block;
			}
			
			div.row.gtr-uniform.gtr-50{
   				margin-top: 0.5em;
   				margin-bottom: 0.5em;
   			}
   			
   			div.row {
   				margin-left: -5em;
   			}
   			
   			span.float-right{
   				float:right !important;
   				/* background-color: black; */
   				/* color: #fff !important; */
   				border-radius: 0.3rem;
   				font-size: .73rem;
   			}
   			
   			section#three {
   				margin-left: 18em;
    			width: 70%;
   			}
   			
   			ul {
   				margin: 0 0 0 -1.8em;
   			}
   			
   			ul.actions li {
    			margin: 0 0 0 2.8em;
    			padding: 0 0.5em 0.3em 0.5em;
    			font-weight: bold;
   			}
   			
   			.v-total{
   				width: 25%;
    			display: table;
    			margin-left: 1.5em;
    			margin-bottom: 1em;
    			height: 483px;
    			border: 1px solid #fff;
    			border-radius: 3px;
    			background-color: #fff;
    			margin-top: 1.5em;
			}
			
			li span.s-title {
				color: black;
			}
			
			div.h-row{
				padding: 0 0 0 0;
				width: 100%;
			}
			
			div.h-col {
				width: 100% !important;
			}
			
			li.bYellow{
				color: #ffb61a !important;
				border-bottom: 1px solid #ffb61a;
			}
			
			li.bGray{
				color: #93999a !important;
			}
			
			li a{
				border-bottom: dotted 0px;
			}
		</style>
	</head>
	<body class="is-preload" style="display:block;">
		<!-- Header -->
			<header id="header">
				<h1><a href="index.html">Exponent</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="#">Sign Up</a></li>
						<li><a href="#">Log In</a></li>
						<li class="special">
							<a href="#menu" class="icon solid fa-bars">Menu</a>
							<div id="menu">
								<ul>
									<li><a href="manage.html">Home</a></li>
									<li>
										<span>Layouts</span>
										<ul>
											<li><a href="left-sidebar.html">Left Sidebar</a></li>
											<li><a href="right-sidebar.html">Right Sidebar</a></li>
											<li><a href="no-sidebar.html">No Sidebar</a></li>
											<li><a href="contact.html">Contact</a></li>
										</ul>
									</li>
									<li><a href="elements.html">Elements</a></li>
									<li><a href="#">Sign Up</a></li>
									<li><a href="#">Log In</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</nav>
			</header>
			
		<!-- 배너 -->
			<div class="mainBox">
				<h3 class="caption">관리자 페이지</h3>
				<ul class="actions small">
					<li style="border-bottom:2px solid #ffb61a;"><a href="adminTotal.jsp"><span id="total" class="s-title text bYellow" onclick="total()" style="color: #ffb61a;">통계 </span></a></li>
					<li><a href="adminQna.jsp"><span id="qna" class="s-title text bGray" onclick="qa()">문의 <span class="qna-num" style="color:red;">4</span></span></a></li>
					<li><a href="adminReport.jsp"><span id="report" class="s-title bGray" onclick="report()">신고 <span class="report-num" style="color:red;">4</span></span></a></li>
					<li><a href="adminAuth.jsp"><span id="auth" class="s-title bGray" onclick="auth()">인증 <span class="auth-num" style="color:red;">4</span></span></a></li>
					<li><a href="adminMList.jsp"><span id="memberList" class="s-title bGray" onclick="mList()">회원목록</span></a></li>
					<li><a href="admin-inform.jsp"><span id="inform" class="s-title bGray" onclick="inf()">공지</span></a></li>
				</ul>
			</div>

		<!-- Main -->
			<div id="main" class="container">
				<!-- Three -->
					<section id="three" class="feature">
							<div class="row row-total main-total">
								<div class="twoBox">
									<div class="col-6 col-12-small" style=" margin-left: -3em;">
										<a class="title" href="#">
											<span class="s-title">일일 방문자 수</span>
										</a>
										<hr>
										<div id="linechart_material" style="margin-left: 1em;"></div>
									</div>
								</div>
								<div class="col-6 col-12-small v-total" style="width: 30%; display:table; height: 400px; border: 1px solid #bbb; border-radius: 3px;">
									<div class="oneBox" style="margin-bottom: 3%; width: 35%; display: contents;">
										<a class="title" href="#">
											<span class="s-title link-title" >주간 방문자 통계</span>
										</a>
									<div style="border-bottom: 1px solid #d8dadb;; padding-top: 2em;">
										<span class="s-title link-title" >방문자 수</span>
										<p>170 명</p>
									</div>
									<div style="border-bottom: 1px solid #d8dadb;; padding-top: 2em;">
										<span class="s-title link-title" >평균 방문자 수</span>
										<p>24 명</p>
									</div>
									<div style="display: flex; padding-top: 2em;">
										<div style="width: 50%; border-right: 1px solid #d8dadb;">
											<span class="s-title link-title" >최대 방문자</span>
											<p>80 명</p>
										</div>
										<div style="width: 50%; padding-left:1em">
											<span class="s-title link-title" >최소 방문자</span>
											<p>40 명</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						</section>
						</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   
		<!-- 구글 차트 api -->
    		<script type="text/javascript">
    		google.charts.load('current', {'packages':['line']});
   			google.charts.setOnLoadCallback(drawChart);

  			function drawChart() {

    		var data = new google.visualization.DataTable();
    		data.addColumn('number', 'Day');
			data.addColumn('number', '총방문횟수');
/*			data.addColumn('number', '회원');
    		data.addColumn('number', '비회원'); */

    		data.addRows([
      		[1,  100/* , 80.8, 41.8 */],
      		[2,  100/* , 80.8, 41.8 */],
      		[3,  90/* , 80.8, 41.8 */],
     		[4,  80/* , 80.8, 41.8 */],
      		[5,  90/* , 80.8, 41.8 */],
      		[6,   110/* , 80.8, 41.8 */],
      		[7,   120/* , 80.8, 41.8 */],
      		[8,  130/* , 80.8, 41.8 */],
      		[9,  110/* , 80.8, 41.8 */],
      		[10, 120/* , 80.8, 41.8 */],
      		[11,  125/* , 80.8, 41.8 */],
      		[12,  140/* , 80.8, 41.8 */],
      		[13,  150/* , 80.8, 41.8 */],
      		[14,  170/* , 80.8, 41.8 */]
    		]);

    		var options = {
      		chart: {
/*      	title: 'Box Office Earnings in First Two Weeks of Opening',
        	subtitle: 'in millions of dollars (USD)' */
      		},
      		width: '100%',
      		height: 400
    		};

    		var chart = new google.charts.Line(document.getElementById('linechart_material'));

    		chart.draw(data, google.charts.Line.convertOptions(options));
  			}
    	</script>
	</body>
</html>