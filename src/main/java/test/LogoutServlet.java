package test;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired....<br>");
		}
		else
		{
			hs.removeAttribute("ab");
			hs.removeAttribute("ob");
			hs.invalidate();
			req.setAttribute("msg","Logged Out Successfully...<br>");
		}
		req.getRequestDispatcher("Response.jsp").forward(req, res);
		
	}

}
