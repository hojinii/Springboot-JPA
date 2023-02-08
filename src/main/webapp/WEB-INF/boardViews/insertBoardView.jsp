<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2> 새로운 게시판 등록 </h2>
<form action="insertProcBoard.do" method="post">
	<table border="1">	
		<tr height="50" align="center">
			<td width="150" >  글제목 </td>
			<td width="250" >
				<input type="text" name="title">
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="150" >  글작성자 </td>
			<td width="250" >
				<input type="text" name="writer" >  
			</td>
		</tr>
		<tr height="50" align="center">
			<td width="150" >  글내용 </td>
			<td width="250" >
				<input type="text" name="content" >
			</td>
		</tr>
		<tr height="50" align="center">
			<td colspan="2" >
				<input type="submit" value="저장" />  
				<input type="reset" value="취소" />
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>