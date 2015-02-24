package hyg.orders;

import hyg.book.book;

public class SalesItem {
	private int id;
	private book book;
	private double unitPrice;
	private int count;
	private int orderId;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public book getbook() {
		return book;
	}
	public void setbook(book book) {
		this.book = book;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
}
