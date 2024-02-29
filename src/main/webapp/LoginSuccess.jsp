<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
     UserBean ub=(UserBean)session.getAttribute("ub");
   out.println("Welcome user "+ub.getfName()+"<br>");
   %>
   <a href="view">ViewProduct</a>
   <a href="logout">LogOut</a>

</body>
</html>