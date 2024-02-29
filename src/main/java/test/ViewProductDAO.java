package test;

import java.util.*;
import java.sql.*;

public class ViewProductDAO 
{
	public LinkedList<ProductBean> ob=new LinkedList<ProductBean>();
	public LinkedList<ProductBean> retrieve()
	{
		try
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select * from product25");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				ProductBean pb=new ProductBean();
				pb.setCode(rs.getString(1));
				pb.setName(rs.getString(2));
				pb.setPrice(rs.getFloat(3));;
				pb.setQty(rs.getInt(4));
				ob.add(pb);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ob;
	}

}
