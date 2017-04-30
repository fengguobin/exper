<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/4/12
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*"%>

<html>
<head>
    <title>login</title>
</head>
<body>
<jsp:useBean id="message" class="beans.Message" />
<jsp:setProperty name="message" property="name" />

<%
    request.setCharacterEncoding("utf-8");
    String username =(String)request.getParameter("name");
    String password =(String)request.getParameter("pwd");
    %>
<%
    String getPassword = rs.getString("password");
    String getUsername = rs.getString("username");
    if(getPassword.equals(password)){
        out.println("欢迎登陆");
    }else{
        out.println("账号密码错误");
    }
%>
</body>
</html>
