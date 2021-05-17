
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<%
/* position for grid system */
int offset = 2;
int mywidth = twelve - 2 * offset;
int formleft = 3;
int formright = twelve - formleft;
int rightButton = 2;
%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<style type="text/css">
	tr{color: white}
</style>
</head>
<body>
	<%-- <%@ include file="header.jsp" %> --%>
	<%-- <jsp:include page="<%=contextPath%>/anime-main/header.jsp"/> --%>
	<jsp:include page="./../anime-main/header.jsp" />
		<div class="container">
			<a href="<%=NoForm%>makefilmList&email=${loginfo.email}"><button class="btn-lg btn-info">나만의 FilmList 만들기</button></a>
			<div class="panel-heading">
				<h1>
				<p class="text-white">전체 영화 리스트</p>	
				</h1>
			</div>
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th><p class="text-white">FILMLIST Subject</p></th>
							<th><p class="text-white">WRITER</p></th>
							<th><p class="text-white">FILMLIST COMMEND</p></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="bean1" items="${requestScope.lists1}">
						<tr>
							<td> <a href="<%=NoForm%>filmListDetail&id=${bean1.id}&${requestScope.parameters}&email=${loginfo.email}">${bean1.list_title}</a> </td>
							<td>${bean1.nickname}</td>
							<td>${bean1.comments}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			
			 <br><br><br>
			
			<div class="panel-heading">
				<h1>
				<p class="text-white">좋아요 순 top 영화 리스트</p>	
				</h1>
			</div>
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th><p class="text-white">FILMLIST Subject</p></th>
							<th><p class="text-white">WRITER</p></th>
							<th><p class="text-white">FILMLIST COMMEND</p></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="bean3" items="${requestScope.lists3}">
						<tr>
							<td><a href="<%=NoForm%>filmListDetail&id=${bean3.id}&${requestScope.parameters}">${bean3.list_title}</a></td>
							<td>${bean3.nickname}</td>
							<td>${bean3.comments}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			
			<br><br><br>
			
			<div class="panel-heading">
				<h1>
				<p class="text-white">내가 좋아요한 영화 리스트</p>	
				</h1>
			</div>
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th><p class="text-white">FILMLIST Subject</p></th>
							<th><p class="text-white">WRITER</p></th>
							<th><p class="text-white">FILMLIST COMMEND</p></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="bean2" items="${requestScope.lists2}">
						<tr>
							<td><a href="<%=NoForm%>filmListDetail&id=${bean2.id}&${requestScope.parameters}">${bean2.list_title}</a></td>
							<td>${bean2.nickname}</td>
							<td>${bean2.comments}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>	
			<br><br><br>
		
	
	<jsp:include page="./../anime-main/footer.jsp" />
</body>
</html>