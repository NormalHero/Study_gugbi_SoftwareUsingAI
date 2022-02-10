<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그 실습</title>
<style type="text/css">
	table,tr,td {
		border: 1px solid black;
}

</style>
</head>
<body>
<!-- 3행 5열 표를 for문으로 제작하기 -->
<!-- 열 안에 내용은 몇 행 몇 열 인지를 작성 -->

	
<table>
<%
for(int i = 0; i < 3 ; i++){
	// 행
	
	%>
	
	<tr>
	
	
	<% 
	for(int j = 1 ; j < 6; j++){
		//열
	%>
	
	<td><%=(i+1+"행"+j+"열")%></td>
	
	
	<%
	}
	%>
	
	</tr>
	<%
}
	%>
	
	
	

	

</table>

</body>
</html>