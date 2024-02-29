package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/buy")
public class BuyProductServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","products not available....<br>");
			req.getRequestDispatcher("Response.jsp").forward(req, res);
			
		}
		else
		{
		   req.getRequestDispatcher("BuyProduct.jsp").forward(req, res);
		}
		
	}

}
