package hyg.book;

import hyg.DBBean.BeanMySQL;
import hyg.orders.SalesItem;
import hyg.orders.SalesOrder;

import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.Connection;

public class bookMySQLDAO implements bookDao {

	public bookMySQLDAO() {
	
	}

	@Override
	public void update(SalesOrder so) {
         
		System.out.println("Under Constructions...");

	}

	@Override
	public int add(SalesOrder so) {
		return 0;
		
	/*	Connection conn = BeanMySQL.getConn();
    	String sql = "insert into user values(?,?,?,?,?,?)";
    	java.sql.PreparedStatement pstmt = BeanMySQL.prepare(conn, sql);
    	try{
    	pstmt.setString(1, bookname);
    	pstmt.setString(2, number);
    	pstmt.setString(3, realname); 
    	pstmt.setString(4, cellphone);
    	pstmt.setString(5, addr);
    	pstmt.setString(6, email);
    	this.flag = true;
    	} catch (SQLException e){
    		e.printStackTrace();
    	}finally{
    		BeanMySQL.close(conn);
    	}
    	
	
   */
	}
	@Override
	public List<SalesOrder> getOrders() {

		return null;
	}

	@Override
	public void delete(int id) {
		System.out.println("Under Constructions...");

	}

	@Override
	public SalesOrder loadById(int id) {
     
		return null;
	}

	@Override
	public int find(List<SalesOrder> products, int pageNo, int pageSize,
			String queryStr) {
		
		return 0;
	}

	@Override
	public List<SalesItem> getSalesItems(int orderId) {
		
		return null;
	}

	@Override
	public void updateStatus(SalesOrder order) {
		
		System.out.println("Under Constructions...");
	}

}
