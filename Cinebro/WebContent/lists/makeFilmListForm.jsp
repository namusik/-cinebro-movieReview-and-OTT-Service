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
<html lang="zxx">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.badge {
   background: orange;
   color: red
}

.form-control {
    display: block;
    width: 100%;
    height: calc(2.5em + .25rem + px);
    padding: .375rem .75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
input#filmilst_title {
    height: calc(1.5em + .75rem + 2px);
    font-size: large;
}
input#comments { 
    height: calc(1.5em + .75rem + 2px);
    font-size: large;
}


input#fakefilmtitle1 {
    background-color: #e9ecef;
    opacity: 1;
    height: calc(2.5em + .75rem + 2px);
}
input#fakefilmtitle2 {
    background-color: #e9ecef;
    opacity: 1;
    height: calc(2.5em + .75rem + 2px);
}
input#fakefilmtitle3 {
    background-color: #e9ecef;
    opacity: 1;
    height: calc(2.5em + .75rem + 2px);
}
input#fakefilmtitle4 {
    background-color: #e9ecef;
    opacity: 1;
    height: calc(2.5em + .75rem + 2px);
}
input#fakefilmtitle5 {
    background-color: #e9ecef;
    opacity: 1;
    height: calc(2.5em + .75rem + 2px);
}
input.btn.btn-info {
    font-size: x-largeer;
    font-size: initial;
}
button.btn.btn-info.btn-lg {
    font-size: initial;
}
}
</style>
<script type="text/javascript">
function filmfind(){
   var url = "<%=NoForm%>searchforlist&num=1";
   window.open(url,'mywin','height=600, width=720, scrollbars=yes');
}
function filmfind2(){
   var url = "<%=NoForm%>searchforlist&num=2";
   window.open(url,'mywin','height=600, width=720, scrollbars=yes');
}
function filmfind3(){
   var url = "<%=NoForm%>searchforlist&num=3";
   window.open(url,'mywin','height=600, width=720, scrollbars=yes');
}
function filmfind4(){
   var url = "<%=NoForm%>searchforlist&num=4";
   window.open(url,'mywin','height=600, width=720, scrollbars=yes');
}
function filmfind5(){
   var url = "<%=NoForm%>searchforlist&num=5";
   window.open(url,'mywin','height=600, width=720, scrollbars=yes');
}
</script>

</head>
<body>
   <%-- <%@ include file="header.jsp" %> --%>
   <%-- <jsp:include page="<%=contextPath%>/anime-main/header.jsp"/> --%>
   <jsp:include page="./../anime-main/header.jsp" />

   <div class="container" align="center">
      <div>
         <div style="margin-top: 50px">
            <h2 align="center" style="color: white">FilmList ?????????</h2>
         </div>
         <br>
         <br>
         <br>
         <div>
            <form name="myform" class="form-horizontal" action="<%=YesForm%>"
               method="post">

               <%--command ??? ??????--%>
               <input type="hidden" name="command" value="makefilmList">
               <input type="hidden" name="email" value="${requestScope.email }">
               
               <%--isCheck ??????. ?????? false?????? ??????????????? ?????????. ?????? ????????? ???????????? ???????????? true??? ?????? --%>

               <div class="form-group">
                  <h5><label class="control-label col-sm-<%=formleft%>" for="film_title"
                     style="color: white">FilmList ??????</label></h5>
                  <div class="col-xs-3">
                     <input type="text" class="form-control" id="filmilst_title"
                        placeholder="FilmList ????????? ??????????????????" name="filmlist_title"
                        >
                  </div>
               </div>
               <div class="form-group" style="margin-top: 20px">
                  <h5><label class="control-label col-sm-<%=formleft%>" for="comments"
                     style="color: white">FilmList ??????</label></h5>
                  <div class="col-xs-3">
                     <input type="text" class="form-control" id="comments"
                        name="comments" placeholder="????????? ??????????????????">
                  </div>
               </div>
					<div class="form-group" style="margin-top: 20px">
						<h5>
							<label class="control-label col-sm-<%=formleft%>"
								for="filmtitle1" style="color: white"></label>
						</h5>
						<div class="col-sm-<%=rightButton%>">
							<input type="button" value="?????? ??????" class="btn btn-info"
								onclick="filmfind();">
						</div>
					</div>
					<div class="form-group" style="margin-top: 20px">
                  <h5><label class="control-label col-sm-<%=formleft%>" for="filmtitle1"
                     style="color: white">?????? ??????1</label></h5>
                  <div class="col-xs-3">
                     <input type="text" class="form-control" disabled="disabled" id="fakefilmtitle1" name="fakefilmtitle1">
                     <input type="hidden" name="filmtitle1" >
                     <input type="hidden" name="filmid1">
                  </div>
                  <div class="col-sm-<%=rightButton%>">
                       <input type="button" value="?????? ??????" class="btn btn-info"
                          onclick="filmfind();">
                     </div>
               </div>
               <div class="form-group" style="margin-top: 20px">
                  <h5><label class="control-label col-sm-<%=formleft%>" for="filmtitle2"
                     style="color: white">?????? ??????2</label></h5>
                  <div class="col-xs-3">
                     <input type="text" class="form-control" disabled="disabled" id="fakefilmtitle2" name="fakefilmtitle2">
                     <input type="hidden" name="filmtitle2" >
                     <input type="hidden" name="filmid2">
                  </div>
                  <div class="col-sm-<%=rightButton%>">
                       <input type="button" value="?????? ??????" class="btn btn-info"
                          onclick="filmfind2();">
                     </div>
               </div>
               <div class="form-group" style="margin-top: 20px">
                  <h5><label class="control-label col-sm-<%=formleft%>" for="filmtitle3"
                     style="color: white">?????? ??????3</label></h5>
                  <div class="col-xs-3">
                     <input type="text" class="form-control" disabled="disabled" id="fakefilmtitle3" name="fakefilmtitle3">
                     <input type="hidden" name="filmtitle3" >
                     <input type="hidden" name="filmid3">
                  </div>
                  <div class="col-sm-<%=rightButton%>">
                       <input type="button" value="?????? ??????" class="btn btn-info"
                          onclick="filmfind3();">
                     </div>
               </div>
               <div class="form-group" style="margin-top: 20px">
                  <h5><label class="control-label col-sm-<%=formleft%>" for="filmtitle4"
                     style="color: white">?????? ??????4</label></h5>
                  <div class="col-xs-3">
                     <input type="text" class="form-control" disabled="disabled" id="fakefilmtitle4" name="fakefilmtitle4">
                     <input type="hidden" name="filmtitle4" >
                     <input type="hidden" name="filmid4">
                  </div>
                  <div class="col-sm-<%=rightButton%>">
                       <input type="button" value="?????? ??????" class="btn btn-info"
                          onclick="filmfind4();">
                     </div>
               </div>
               <div class="form-group" style="margin-top: 20px">
                  <h5><label class="control-label col-sm-<%=formleft%>" for="filmtitle5"
                     style="color: white">?????? ??????5</label></h5>
                  <div class="col-xs-3">
                     <input type="text" class="form-control" disabled="disabled" id="fakefilmtitle5" name="fakefilmtitle5">
                     <input type="hidden" name="filmtitle5" >
                     <input type="hidden" name="filmid5">
                  </div>
                  <div class="col-sm-<%=rightButton%>">
                       <input type="button" value="?????? ??????" class="btn btn-info"
                          onclick="filmfind5();">
                     </div>
               </div>
               <div class="form-group" style="margin-top: 40px">
                  <div class="col-sm-offset-<%=offset%> col-sm-<%=mywidth%>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <button type="submit" class="btn btn-info btn-lg">FilmList ?????????</button>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <button type="reset" class="btn btn-info btn-lg">?????????</button>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
   <br>
   <br>
   <br>
   <br>
   <jsp:include page="./../anime-main/footer.jsp" />
</body>
</html>