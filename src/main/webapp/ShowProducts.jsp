<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "java.util.*,test.UserBean,test.ProductBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   table, th, td{
   border: 1px solid black;
   }
</style>
</head>
<body>
  <%
     UserBean ub=(UserBean)session.getAttribute("ub");
     LinkedList<ProductBean> ob=(LinkedList<ProductBean>)session.getAttribute("ob");
     out.println("Page belongs to "+ub.getfName()+"<br>");
     if(ob.size()==0)
     {
    	 out.println("products not available....<br>");
     }
     else
     {
    	 Iterator<ProductBean> it=ob.iterator();
     %>
     <table>
     <%
       while(it.hasNext())
       {
    	   ProductBean pb=(ProductBean)it.next();
     %>
     <tr>
         <td> <%= pb.getCode() %></td>
         <td><%= pb.getName() %></td>
         <td><%= pb.getPrice() %></td>
         <td><%= pb.getQty() %></td>
         <td> <a href="buy?code=<%= pb.getCode() %>">ClickToBuy</a></td>
     
     </tr>
     <%
       }
     %>
     </table>
     <% 
     }
     %>
     <br>
     <a href="logout">LogOut</a>

</body>
</html>