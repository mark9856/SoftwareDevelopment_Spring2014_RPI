package hyg.user;

import hyg.DBBean.BeanMySQL;
import hyg.cart.Cart;

import java.sql.Connection;
import java.sql.SQLException;

public class user {

	
public boolean flag=false;
	
    private int id;
    
    private String username;
    
    private String number;
    
    private String realname;
    
    private String cellphone;
    
    private String addr;
    
    private String email;
    
    

    
    
    public int getId(){
    	return id;
    }
    
    public void setId( int id){
    	this.id = id;
    }
    
    public String getUsername(){
    	return username;
    }
    
    public void setUsername( String username){
    	this.username = username;
    }
    
    public String getNumber(){
    	return number;
    }
    public void setNumber( String number){
    	this.number = number;
    }
    public String getRealname(){
    	return realname;
    }
    
    public void setRealname( String realname){
    	this.realname = realname;
    }
    public String getCellphone(){
    	return cellphone;
    }
    public void setCellphone( String cellphone ){
    	this.cellphone = cellphone;
    }
    
    public String getAddr(){
    	return addr;
    }
    public void setAddr( String addr){
    	this.addr = addr;
    }
    
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

    public boolean save(){
    	Connection conn = BeanMySQL.getConn();
    	String sql = "insert into user values(?,?,?,?,?,?)";
    	java.sql.PreparedStatement pstmt = BeanMySQL.prepare(conn, sql);
    	try{
    	pstmt.setString(1, username);
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
    	
    return flag;
    	
    }
		public int buy (Cart c){
			
			return 0;
		}
	/*public int buy(Cart c) {
		SalesOrder so = new SalesOrder();
		so.setUser(this);
		so.setAddr(this.getAddr());
		so.setStatus(0);
		so.setODate(new Date());
		List<SalesItem> salesItems = new ArrayList<SalesItem>();
		List<CartItem> cartItems = c.getItems();
		for(int i=0; i<cartItems.size(); i++) {
			SalesItem si = new SalesItem();
			CartItem ci = cartItems.get(i);
			si.setProduct(ci.getProduct());
			si.setCount(ci.getCount());
			si.setUnitPrice(ci.getProduct().getMemberPrice());
			salesItems.add(si);
		}
		so.setItems(salesItems);
		return OrderMgr.getInstance().add(so); 
	}*/
		
		/*Statement s = conn.createStatement();
		ResultSet r = s.executeQuery("SELECT COUNT(*) AS rowcount FROM MyTable");
		r.next();
		int count = r.getInt("rowcount") ;
		r.close() ;
		System.out.println("MyTable has " + count + " row(s).");
		*/
}
