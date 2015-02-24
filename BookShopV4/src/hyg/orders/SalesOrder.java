package hyg.orders;



import hyg.user.user;

import java.sql.Date;
import java.util.List;

public class SalesOrder {
	private int id;
    private user user;
    private String addr;
    private Date oDate;
    private int status;
    private List<SalesItem> items;

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<SalesItem> getItems() {
		return items;
	}

	public void setItems(List<SalesItem> items) {
		this.items = items;
	}

	public Date getODate() {
		return oDate;
	}

	public void setODate(Date date) {
		oDate = date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public user getUser() {
		return user;
	}

	public void setUser(user user) {
		this.user = user;
	}
	
	public void updateStatus() {
		OrderMgr.getInstance().updateStatus(this);
	}

}
