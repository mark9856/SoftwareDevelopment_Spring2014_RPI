package hyg.orders;

import hyg.cart.Cart;
import hyg.user.user;

import java.util.List;


public class OrderMgr {
	
	private static OrderMgr mgr = null;
	
	private static OrderDAO dao = new OrderMySQLDAO(); 
	
	private OrderMgr() {}
	
	public static OrderMgr getInstance() {
		if(mgr == null) {
			mgr = new OrderMgr();
		}
		return mgr;
	}
	
	public int add(SalesOrder so) {
		return dao.add(so);
	}
	
	public int userBuy(Cart c, user u) {
		return u.buy(c);
	}
	
	public int getOrders(List<SalesOrder> list, int pageNo, int pageSize){
		return 0;
	}
	
	public SalesOrder loadById(int id) {
		return dao.loadById(id);
	}
	
	public List<SalesItem> getSalesItems(SalesOrder order) {
		return dao.getSalesItems(order.getId());
	}

	public void updateStatus(SalesOrder order) {
		dao.updateStatus(order);
		//可以用dao.update来更新整个对象，这是一种更普遍的用法
	}
}
