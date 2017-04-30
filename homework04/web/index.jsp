<%@ page import="java.util.*" %>
<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/4/15
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>信息管理系统</title>
  <link rel="stylesheet" href="message.css" type="text/css">
</head>
<body>
<h2 align="center">信息管理系统</h2>
  <jsp:useBean id="message" class="beans.Message" />
<table align="center" width="50%" border="1">
  <tr><th>姓名</th><th>密码</th><th>年龄</th><th>管理</th></tr>
  <%
    ArrayList messages = (ArrayList)message.getAllMessages();
    for(Object o : messages){
      Map m = (HashMap)o;
  %>
  <tr><td><%=m.get("name") %></td>
    <td><%=m.get("pwd") %></td>
    <td><%=m.get("age") %></td>
    <td>
      <a href="add.html">添加</a>&nbsp;
      <a href="edit.jsp?id=<%=m.get("id") %>">修改</a>&nbsp;
      <a href="del.jsp?id=<%=m.get("id") %>" onclick="return confirm('确定要删除吗？')">删除</a></td></tr>
  <%
    }
  %>
</table>
</body>
</html>