<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
    UserBean ub=(UserBean)session.getAttribute("ub");
    LinkedList<ProductBean> ob=(LinkedList<ProductBean>)session.getAttribute("ob");
    String code=request.getParameter("code");
    int rQty=Integer.parseInt(request.getParameter("rqty"));
    out.println("Page Belongs to "+ub.getfName()+"<br>");
    Iterator<ProductBean> it=ob.iterator();
    while(it.hasNext())
    {
    	ProductBean pb=(ProductBean)it.next();
    	if(code.equals(pb.getCode()))
    	{
    	%>
    	<table>
    	<tr>
    	<td>Code</td>
    	<td><%= pb.getCode() %></td>
    	</tr>
    	<tr>
    	<td>Name</td>
    	<td><%= pb.getName() %></td>
    	</tr>
    	<tr>
    	<td>SelQty</td>
    	<td><%= rQty %></td>
    	</tr>
    	<tr>
    	<td>BillAmount</td>
    	<td><%= pb.getPrice() %></td>
    	</tr>
    	</table>
    	<form action="payment" method="post">
    	<input type="hidden" name="code" value=<%= pb.getCode() %>>
    	<input type="hidden" name="rqty" value=<%= rQty %>>
    	<input type="hidden" name="bamt" value=<%= pb.getPrice()*rQty%>>
    	<input type="submit" value="Payment">
    	</form>
    	<%
    	
    	}
    }
    %>
    <br>
    <a href="logout">LogOut</a>

</body>
</html>