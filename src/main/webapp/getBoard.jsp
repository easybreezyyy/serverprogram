<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>Board Article Content</title>
</head>
<body>
	<article>
		<div class="container" role="main">
			<h2>글 상세 조회</h2>
			<div class="bg-white rounded shadow-sm">
				<form action="updateBoard.do" method="post">
					<input name="seq" type="hidden" value="${board.seq}" />
					<table border="1">
						<tr>
							<td>제목</td>
							<td><input name="title" type="text" value="${board.title }" /></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td>${board.writer }</td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name="content">${board.content }</textarea></td>
						</tr>
						<tr>
							<td>등록일</td>
							<td>${board.createDate }</td>
						</tr>
						<tr>
							<td>조회수</td>
							<td>${board.cnt}</td>
						</tr>
					</table>
				<hr>
				<button type="submit" class="btn btn-sm btn-success" id="btnUpdate">수정</button>
				<button type="button" class="btn btn-sm btn-danger" id="btnDelete"
					onclick="location.href='deleteBoard.do?seq=${board.seq}'">삭제</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList"
					onclick="location.href='getBoardList.do'">목록</button>
				</form>
				</div>
			</div>
		</article>
</body>
</html>