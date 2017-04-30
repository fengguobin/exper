<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/4/15
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit_do.jsp</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="message" class="beans.Message" />
<jsp:setProperty name="message" property="*" />
<%
    int result = message.updateMessage();
    String msg = "修改失败，点击确定跳转到信息列表页！";
    if(result == 1){
        msg = "修改成功，点击确定跳转到信息列表页！";
    }
%>
<script>window.alert('<%=msg %>');</script>
<%
    response.setHeader("Refresh", "1;url=index.jsp");
%>
</body>
</html>
