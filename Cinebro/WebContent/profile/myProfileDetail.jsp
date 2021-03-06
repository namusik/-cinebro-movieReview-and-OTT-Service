<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<%
/* position for grid system */
int offset = 2;
int mywidth = twelve - 2 * offset;
int formleft = 5;
int formright = twelve - formleft;
int rightButton = 1;
%>
<!DOCTYPE html>
<html lang="en">
<c:if test="${ empty sessionScope.loginfo}">
	<c:set var="whologin" value="0" />
</c:if>
<c:if test="${ not empty sessionScope.loginfo}">
	<c:if test="${ sessionScope.loginfo.email == 'admin'}">
		<c:set var="whologin" value="2" />
	</c:if>
	<c:if test="${ sessionScope.loginfo.email != 'admin'}">
		<c:set var="whologin" value="1" />
	</c:if>
</c:if>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.panel-default>.panel-heading {
    color: #333;
    font-size: xx-large;
    background-color: #f5f5f5;
    border-color: #ddd;
}

element.style {
    color: black;
    FONT-SIZE: x-large;
}

.panel-body {
    font-size: large;
    padding: 15px;
}

.panel-default {
    margin: 0 auto; 
    border-color: #ddd;
    max-width: 500px;
}
button.btn.btn-primary {
    font-size: large;
}

</style>
</head>
<body>
	<jsp:include page="./../anime-main/header.jsp" />
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading" style="color: black;" align="center">${bean.nickname}</div>
			<c:if test="${bean.email==sessionScope.loginfo.email}">
				<div class="panel-body" style="color: black;" align="center">아이디 : ${bean.email}</div>
				<div class="panel-body" style="color: black;" align="center">비밀번호 : ${bean.password}</div>	
			</c:if>
			<div class="panel-body" style="color: black;" align="center">
				닉네임 : ${bean.nickname}
				<c:if test="${bean.email==sessionScope.loginfo.email}">
					<c:if test="${requestScope.bean.subscribe == 1}">
						<div class="panel-body" style="color: black;" align="center">
							구독 여부 : 구독중
							<div class="panel-body" style="color: black;" align="center">
								이름 : ${bean.name}
								<div class="panel-body" style="color: black;" align="center">카드번호 : ${bean.cardnumber}</div>
							</div>
						</div>
					</c:if>
					<c:if test="${requestScope.bean.subscribe == 0}">
						<div class="panel-body" style="color: black;" align="center">
							구독 여부 : 
							<a href="<%=NoForm%>bridge">
								<button type="button" class="btn btn-warning">구독 하러 가기</button>
							</a>
						</div>
						<div class="panel-body" style="color: black;" align="center">이름 :</div>
						<div class="panel-body" style="color: black;" align="center">카드번호 :</div>
					</c:if>
				</c:if>
				<div class="panel-body" style="color: black;" align="center">
					Favorite Film : <a href="<%=NoForm%>filmDetail&id=${bean.film_id}">${bean.film_title}</a>
				</div>
				<div class="panel-body" style="color: black;" align="center">Favorite Genre : ${bean.genre_name}</div>
				<a href="<%=NoForm%>myReviews&email=${bean.email}">
					<div class="panel-body" style="color: black;" align="center">Reviews : ${bean.allReviews}</div>
				</a>
				<div class="panel-body" style="color: black;" align="center">Followers : ${bean.follower}</div>
				<c:if test="${bean.email==sessionScope.loginfo.email}">
					<a href="<%=NoForm%>editNickname&email=${loginfo.email}&nickname=${loginfo.nickname}&film_title=${bean.film_title}&genre_name=${bean.genre_name}&film_id=${bean.film_id}">
					<br>
					<br>
						<button type="button" class="btn btn-primary">회원 정보 수정하기</button>
					</a>
				</c:if>
				<br>
				<br>
				<br>
				<br>
				<c:if test="${whologin!=0 }">
				<c:if test="${bean.email!=sessionScope.loginfo.email}">
					<c:choose>
						<c:when test="${bean2==null}">
							<a href="<%=NoForm%>memberFollow&followemail=${bean.email}&myemail=${loginfo.email}">
								<button class="btn-info btn-lg">팔로우 하기</button>
							</a>
						</c:when>
						<c:otherwise>
							<a href="<%=NoForm%>memberUnfollow&followemail=${bean.email}&myemail=${loginfo.email}">
								<button class="btn-warning btn-lg">팔로우 취소</button>
							</a>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
						</c:otherwise>
					</c:choose>
				</c:if>
				</c:if>
			</div>
		</div>
	</div>
	<jsp:include page="./../anime-main/footer.jsp" />
</body>
</html>