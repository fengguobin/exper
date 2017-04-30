<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/4/16
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout.jsp</title>
</head>
<body>
<%
	session.invalidate();
	out.println("正在退出，1s后返回<a href=\"login.html\">登录页面</a>！</h3>");
	response.setHeader("Refresh","1;url=login.html");
%>
</body>
</html>
