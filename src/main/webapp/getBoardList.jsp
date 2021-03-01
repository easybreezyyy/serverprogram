<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>게시판</title>
<style>
body {
	margin: 50px;
	padding-top: 70px;
	padding-bottom: 30px;
}
</style>
</head>
<body>
	<h1>게시판 목록</h1>
	<article>
		<div class="container">
			<div class="table-responsive">
				<table class="table table-striped table-sm">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					<c:forEach var="board" items="${list }">
						<tr>
							<td>${board.seq }</td>
							<td><a href="getBoard.do?seq=${board.seq }">${board.title }</a></td>
							<td>${board.writer }</td>
							<td>${board.createDate }</td>
							<td>${board.cnt }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div>
				<button type="button" class="btn btn-sm btn-primary"
					id="btnWriteForm" onclick="location.href='insertBoard.jsp'">글쓰기</button>
			</div>
		</div>
	</article>

</body>
</html>