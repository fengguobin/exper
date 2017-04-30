<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/4/15
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>del.jsp</title>
</head>
<body>
<jsp:useBean id="message" class="beans.Message" />
<jsp:setProperty name="message" property="id" />
<%
    int result = message.delMessage();
    String msg = "删除失败，点击确认跳转到信息列表页";
    if(result == 1){
        msg = "删除成功，点击确认跳转到信息列表页";
    }
%>
<script>window.alert('<%=msg %>');</script>
<%
    response.setHeader("Refresh", "1;url=index.jsp");
%>
</body>
</html>
