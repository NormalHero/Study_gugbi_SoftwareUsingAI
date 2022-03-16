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
		<title>공지사항 글쓰기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<style>
/* ----------------------------------------------------------------------  */        
        @media (max-width: 576px){
            #main {
            width: 100%;
            }
            
            #btn{
				position: absolute !important;
    			margin-top: 70em !important;
    			margin-left: -9em !important;

            }
			
			#title {
    font-size: 20px !important;
    background-color: white !important;
    border: none !important;
    margin-bottom: -35px !important;
    margin-top: 61px !important;
    padding: 17px !important;
    color: black !important;
			}
			
						.note-editable {
				height: 600px !important;
				
			}

		}
		
/* ----------------------------------------------------- */

		@font-face {
		    font-family: 'GmarketSansMedium';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}

        @font-face {
            font-family: 'GmarketSansLight';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

		.textOnImg{
            position: absolute;
            color: white;
            left: 50%;
            top: 50%;
			transform:translate(-50%, -50%);
            font-family: GmarketSansMedium !important;
			font-size: 2em;
        }

		div#main{
			padding: 1em 0 3.5em 0;
		}

		img#img{
			width:160px;
			height:70px;
		}
		
		.whiteBack{
			background-color: white;
		}
		
		#title{
			font-size:30px;
			background-color:white; 
			border: none;
			margin-bottom: -35px;
			margin-top: 61px;
			padding: 0;
			color:black;
		}
		input[type="text"]:focus{
			box-shadow: none !important;
		}

		#select{

			width: 14%;
			font-size: 12px !important;
			background-color: white;
			}

			#btn{
				background-color: #ffb61a;
			    box-shadow: none;
			    color: white !important;
			    font-size: 12px !important;
			    height: 2.75em;
			    line-height: 1.75em;
			}
		
			.note-editable {
				height: 444.045px;
				
			}

			.note-editor .note-editable {
    			line-height: 10%; 
		}

		</style>


		<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">		
		<link rel="stylesheet" href="assets/css/main.css" />
		
		
		
	</head>
	<body class="is-preload">
	
			
		<!-- Header -->
			<div class="wrapper">
				<div class="inner">
					<jsp:include page="header.jsp"/>
				</div>
			</div>
			

		<!-- 글쓰기 -->
			
		<div id="main" class="container medium">
			
			<table>
				<form method="post">

					<div class="inner">
						<div style="display:flex; justify-content:space-between; margin-top: 50px; margin-bottom: -59px;">
							<p></p>
							<div style="margin-right:0px">
							<input type="button" id="btn" value="글쓰기"onclick="location.href='communityInsert.html'"><br>
						</div>
					
						
					</div>

					

					<tr style = "background-color: white;">
						<input type ="text" id="title" name = "title" placeholder="제목을 입력하세요" style = " resize: none;">
					

						<br>
						
						<td colspan="2" style = "padding:0;">
							<br>
							<textarea id="summernote" name="editordata">


							</textarea>
							
						</td>
					</tr>
				</form>
			</table>		
			
			<!-- Aside -->
  <div class="wrapper">
            <div class="inner">
               <jsp:include page="aside.jsp"/>
            </div>
         </div>	

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  			<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
			<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
	$("#summernote").summernote({
		disableResizeEditor: true
	});
	

  </script>
			
	</body>
</html>