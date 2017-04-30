<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/4/15
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add.jsp</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="message" class="beans.Message" />
<jsp:setProperty name="message" property="*" />
<%
    int result = message.addMessage();
    String msg = "添加失败，点击确定跳转到信息列表页面";
    if(result == 1){
        msg = "添加成功，点击确定跳转到信息列表页面";
    }
%>
<script>window.alert('<%=msg %>');</script>
<%
    response.setHeader("Refresh", "1;url=index.jsp");
%>
</body>
</html>
