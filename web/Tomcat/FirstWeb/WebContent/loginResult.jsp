<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 로그인 한 회원 정보(아이디, 비밀번호, 이름)로 세션 객체 생성-->
<%
String id=(String)request.getParameter("id");
String pwd=(String)request.getParameter("pwd");
String name=(String)request.getParameter("name");
%>

<%
session.setAttribute("username", id);
session.setAttribute("pwd",pwd);
session.setAttribute("name",name);
%>

<%
    request.setCharacterEncoding("utf-8");
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자의 요청정보 출력</title>
</head>
<body>

<h1>로그인 완료</h1>
다
<hr>
<table border="1">
<tr>
<td>아이디(이메일)</td>
<td><%=request.getParameter("id") %></td>
</tr>
<tr>
<td>비밀번호</td>
<td><%=request.getParameter("pwd") %></td>
</tr>
<tr>
<td>이름</td>
<td><%=request.getParameter("name") %></td>
</tr>

</table>
<hr>
 <a href="../session/logout.jsp">로그아웃</a></h1>
<script>
var i=3;
setInterval(function(){
	out.println(i--);
	if(i<1){
		//종료 후 로그인 화면으
	}
},3000);
</script>
</body>
</html>