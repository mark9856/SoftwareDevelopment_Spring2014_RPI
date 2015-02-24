package hyg.book;

import hyg.orders.SalesItem;
import hyg.orders.SalesOrder;

import java.util.List;

public interface bookDao {

		public void update(SalesOrder so);
		public int add(SalesOrder so);
		public List<SalesOrder> getOrders();
		public void delete(int id);
		public SalesOrder loadById(int id);
		public int find(List<SalesOrder> products, int pageNo, int pageSize, String queryStr);
		public List<SalesItem> getSalesItems(int orderId);
		public void updateStatus(SalesOrder order);

}
