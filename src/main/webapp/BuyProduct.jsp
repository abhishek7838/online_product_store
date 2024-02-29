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
   out.println("page belongs to "+ub.getfName()+"<br>");
   String code=request.getParameter("code");
   Iterator<ProductBean> it=ob.iterator();
   while(it.hasNext())
   {
	   ProductBean pb=(ProductBean)it.next();
	   if(code.equals(pb.getCode()))
	   {
		  %> 
		  <table>
		 <tr>
		 <td> Code</td>
		 <td><%= pb.getCode() %></td>
		 </tr>
		 <tr>
		 <td>Name</td>
		 <td><%= pb.getName() %></td>
		 </tr>
		 <tr>
		 <td>Price</td>
		 <td><%= pb.getPrice()  %></td>
		 </tr>
		 <tr>
		 <td>Avai-Qanty</td>
		 <td><%= pb.getQty() %></td>
		 </tr>
		 </table>
		 <form action="buyp" method="post">
		 RequiredQty:<input type="text" name="rqty"><br>
		 <input type="hidden" name="code" value=<%= pb.getCode() %>>
		 <input type="submit" value="BuyProduct">
		 </form>
		<%
	   }
   }
		%>
		<br>
</body>
</html>