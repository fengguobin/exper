<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/4/16
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>check.jsp</title>
</head>
<body>
<%
	String name=(String)session.getAttribute("loginUserName");
	if(name == null){
		out.println("<h3>请先登录再访问，1s后返回<a href=\"login.html\">登录页面</a>！</h3>");
		response.setHeader("Refresh","1;url=login.html");
		return;
	}
%>
</body>
</html>
