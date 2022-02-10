<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그 실습2</title>
<style type="text/css">
		table,tr,td {
		border: 1px solid black;
}
</style>
</head>
<body>
<!--
	아래의 모양과 같이 테이블 만들기(반복문 사용)
	
	□
	□□
	□□□
	□□□□
	□□□□□
	□□□□□
	□□□□
	□□□
	□□
	□
-->

<table>


<%
int k = 0;
for(int j = 1; j<11; j++) {
	%>
	<tr>
	<%
	for(int i = 0; i<=k; i++) {
		%>
		<td>ㅇㅇㅇ</td>
		<%
	}
	if(j<5) { 
		k++;
	}
	else { 
		k--;
	}
%>
	</tr>
<%
}
%>






</table>


</body>
</html>