<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<script>
		$(document).ready(function(){
			$('[data-toggle="tooltip"]').tooltip();	
		});
	</script>
<style type="text/css">

section.normal-breadcrumb.set-bg {
    height: revertinitial;
    vertical-align: middle;
    width: auto;
    height: 550;
}
</style>	
</head>
<body>
	<%-- <%@ include file="header.jsp" %> --%>
	<%-- <jsp:include page="<%=contextPath%>/anime-main/header.jsp"/> --%>
	<jsp:include page="./../anime-main/header.jsp"/>
	
	  <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="img/로그인사진3.jpeg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>로그인</h2>
                        <p>Welcome to the CINEBRO</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>로그인</h3>
                        <form class="form-horizontal" action="<%=YesForm%>" method="post">
                        	<input type="hidden" name="command" value="meLogin">
                            <div class="input__item">
                                <input type="text" class="text-body" id="email" placeholder="Email address" 
				        		name="email" data-toggle="tooltip" title="이메일은 @를 포함하여 끝까지 적어주세요"
				        		value="${email}">
				        	<span class="icon_mail">${erremail}</span>
                            </div>
                            <div class="input__item">
                                <input type="password" class="text-body" placeholder="Password"
                                name="password"	value="${password}">
                                
                                <span class="icon_lock">${errpassword}</span>
                            </div>
                            <button type="submit" class="site-btn">로그인 하기</button>
                        </form>
                        
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>아직 회원가입을 안하셨다면?</h3>
                        <a href="<%=NoForm%>meInsert" class="primary-btn">회원가입 하러가기</a>
                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!-- Login Section End -->

	<br>
	<br>
	<br>
	
	<jsp:include page="./../anime-main/footer.jsp"/>
</body>
</html>