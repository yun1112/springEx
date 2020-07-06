<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	Cookie[] cookies=request.getCookies();
	if(cookies!=null){
		for(Cookie c:cookies){
			if(c.getName().equals("id")){
				c.setMaxAge(0);
				c.setPath("/");
				response.addCookie(c);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<script>
alert("로그아웃 했습니다");
location.href="sessionLogin.jsp";
</script>
</body>
</html>