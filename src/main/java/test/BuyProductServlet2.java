package test;

import javax.servlet.http.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("buyp")
public class BuyProductServlet2 extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session expired...<br>");
			req.getRequestDispatcher("Response.jsp").forward(req, res);
		}
		else
		{
			req.getRequestDispatcher("BillAmount.jsp").forward(req, res);
		}
		
	}

}
