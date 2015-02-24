package hyg.orders;

import java.util.List;

public class OrderMySQLDAO implements OrderDAO {

	@Override
	public int add(SalesOrder so) {
		return 0;

	
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}


	public void delete(String conditionStr) {
		

	}

	public int find(List<SalesOrder> products, int pageNo, int pageSize,
			String queryStr) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<SalesOrder> getOrders() {
		// TODO Auto-generated method stub
		return null;
	}

	public int getOrders(List<SalesOrder> orders, int pageNo, int pageSize) {
		return 0;
	
	}

	@Override
	public SalesOrder loadById(int id) {
		return null;
		
	}
	@Override
	public void update(SalesOrder so) {

	}

	@Override
	public List<SalesItem> getSalesItems(int orderId) {
		return null;
	
	}

	@Override
	public void updateStatus(SalesOrder order) {
		
	}

}
