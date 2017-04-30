<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/4/15
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改个人信息</title>
    <link rel="stylesheet" href="message.css" type="text/css">
    <script type="text/javascript" src="message.js"></script>
</head>
<body>
<jsp:useBean id="message" class="beans.Message" />
<jsp:setProperty name="message" property="id" />
<%
    HashMap message_info = (HashMap)message.getMessage();
    if(message_info != null){
%>
<h2 align="center">修改图书信息</h2>
<form name="form1" onSubmit="return check()" action="edit_do.jsp" method="post">
    <input type="hidden" name="id" value="<%=message_info.get("id") %>">
    <table align="center" width="30%" border="1">
        <tr><th width="30%">姓名</th>
            <td><input type="text" name="name" value="<%=message_info.get("name") %>"></td></tr>
        <tr><th>密码</th>
            <td><input type="text" name="pwd" value="<%=message_info.get("pwd") %>"></td></tr>
        <tr><th>年龄</th>
            <td><input type="text" name="age" value="<%=message_info.get("age") %>"></td></tr>
        <tr><th colspan="2">
            <input type="submit" value="修改">
            <input type="reset" value="重置"></th></tr>
    </table>
</form>
<%
    }
%>
</body>
</html>
