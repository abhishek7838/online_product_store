package test;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewProductServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired...<br>");
			req.getRequestDispatcher("Response.jsp").forward(req, res);
			
		}
		LinkedList<ProductBean> ob=new ViewProductDAO().retrieve();
		hs.setAttribute("ob", ob);
		req.getRequestDispatcher("ShowProducts.jsp").forward(req, res);
				
	}

}
