<%@page import="com.itwill.shop.user.UserService"%>
<%@page import="com.itwill.shop.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--<jsp:include page="include_common_top_menu.jsp"/>--%>
<%
String sUserId = (String) session.getAttribute("sUserId");
%>
<!-- 
<script>
	setInterval(function(){
		const date = new Date(+new Date() + 3240 * 10000).toISOString().split("T")[0]
		const time = new Date().toTimeString().split(" ")[0];
		document.getElementById('time').innerHTML= date+' '+time;
	},1000);

</script> 

<h1>
	<a id="time" href=""></a>
</h1>
-->	
<%
if(sUserId==null){
	%>
	<h6 align="right">
	<a href="user_login_form.jsp">로그인</a>
</h6><%
}else{
User sUser = new UserService().findById(sUserId);
	%>
	<h6 align="right">
	<a href="user_view.jsp">내 정보</a>
	<!-- <a href="myPage_view.jsp">내 정보</a> -->
	<a href="user_logout_action.jsp">로그아웃</a>
</h6><%
}
%>
