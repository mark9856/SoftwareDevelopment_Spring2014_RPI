package hyg.DBBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BeanMySQL
{
	static Connection con;
	static PreparedStatement psBookList;
	static PreparedStatement psBookFromIdToPrice;
	static PreparedStatement psBookFromIdToDetail;
	static PreparedStatement psCountRecords;
	static int span=5;
	
	static String DRIVER="com.mysql.jdbc.Driver";
	static String url="jdbc:mysql://localhost/Bshopping?";
	static String DBNAME="root";
	static String DBPASS="root";	
	
	
	public static Connection getConn(){
		Connection conn = null;
		try {
		 Class.forName(DRIVER);
		
		 con=DriverManager.getConnection(url,DBNAME,DBPASS);
				
		 }catch( SQLException e ){
			 e.printStackTrace();
			 
		 }catch( ClassNotFoundException e ) {
			 e.printStackTrace();
			 }
		 return conn;
	}
	  
	public static PreparedStatement prepare(Connection conn , String sql ) {
		    PreparedStatement pstmt = null; 
			try {
				if(conn != null) {
					pstmt = conn.prepareStatement(sql);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return pstmt;
		}
		   
	
	public static void close(Connection conn) {
		try {
			if(conn != null) {
				conn.close();
				conn = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	

	
	static
	{
		try
		{
			Class.forName(DRIVER); 
			con=DriverManager.getConnection(url,DBNAME,DBPASS);
			
        psBookList= con.prepareStatement(
			"select idbooklist,bookname,publisher,author,version, quantity, price from booklist",
			ResultSet.TYPE_SCROLL_SENSITIVE,
			ResultSet.CONCUR_READ_ONLY);

        psBookFromIdToPrice=con.prepareStatement("select price from good where idbooklist=?");

        psBookFromIdToDetail=con.prepareStatement("select bookname, price from booklist where idbooklist=?");

        psCountRecords=con.prepareStatement( "select count(idbooklist) from booklist" );
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static String[][] getBookList(int cp)
	{
	    String[][] result=null;
	    List<String[]> alist=new ArrayList();
	    try
	    {
	    	ResultSet rs=psBookList.executeQuery();
	    	if(cp!=1)
	    	{
	    		rs.absolute((cp-1)*span);
	    	}
	    	
	    	int count=1;
	    	
	    	while(rs.next()&&count<=span)
	    	{
	    		count++;
	    		String[] temp=new String[7];
	    		temp[0]=rs.getString(1);
	    		temp[1]=rs.getString(2);
	    		temp[2]=rs.getString(3);
	    		temp[3]=rs.getString(4);
	    		temp[4]=rs.getString(5);
	    		temp[5]=rs.getString(6);
	    		temp[6]=rs.getString(7);
	    		alist.add(temp);
	    	}
	        int size=alist.size();
	        result=new String[size][];
	        for(int i=0;i<size;i++)
	        {
	        	result[i]=alist.get(i);
	        }
	    }
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	public static int getPrice(int idbooklist)
	{
		int dd=0;
		try			
		{
			psBookFromIdToPrice.setInt(1, idbooklist);
			ResultSet rs=psBookFromIdToPrice.executeQuery();
			rs.next();
			dd=Integer.parseInt(rs.getString(1));
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}
	
	public static String[] getDetail(String idbooklist)
	{
		String[] ss=null;
		try			
		{
			psBookFromIdToDetail.setString(1,idbooklist);
			ResultSet rs=psBookFromIdToDetail.executeQuery();
			rs.next();
			ss=new String[2];
			ss[0]=rs.getString(1);
			ss[1]=rs.getString(2);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ss;
	}
	
	public static int getTotalPage()
	{
		int tp=0;
		try
		{
			ResultSet rs=psCountRecords.executeQuery();
			rs.next();
			int count=rs.getInt(1);
			tp=count/span+((count%span==0)?0:1);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return tp;
	}
	
	
	
	public static void main(String args[])
	{
		System.out.println(BeanMySQL.getTotalPage());
	
		System.out.println(BeanMySQL.getPrice(4));
		System.out.println(BeanMySQL.getBookList(3));
	}
}