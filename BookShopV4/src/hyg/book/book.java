package hyg.book;
import java.io.Serializable;
import java.text.NumberFormat;


public class book implements Serializable
	{   
		private String bookid;
	    private String bookname;
	    private String publisher;
	    private String author;
	    private String version;
	    private int quantity;
	    private double price;
	   
	    
	    public book()
	    {
	        bookname = "";
	        publisher = "";
	        author="";
	        version="";
	        quantity=0;
	        price = 0;
	    }
	    
	    public void setbookname(String bookname)
	    {
	        this.bookname = bookname;
	    }
	    
	    public String getbookname()
	    { 
	        return bookname; 
	    }
	    
	    public void setPublisher(String publisher)
	    {
	        this.publisher = publisher;
	    }

	    public String getPublisher()
	    { 
	        return publisher; 
	    }
	    
	    public void setauthor(String author)
	    {
	        this.author = author;
	    }

	    public String getauthor()
	    { 
	        return author; 
	    }
	    
	    public void setPrice(double price)
	    {
	        this.price = price;
	    }
	    
	    public double getPrice()
	    { 
	        return price; 
	    }
	    
	    public void setVersion(String version)
	    {
	        this.version = version;
	    }

	    public String getVersion()
	    { 
	        return version; 
	    }
	    
	    public void setQuantity(int quantity)
	    {
	        this.quantity = quantity;
	    }
	    
	    public int getQuantity()
	    { 
	        return quantity; 
	    }
	    
	    public void setbookid(String bookid)
	    {
	        this.bookid = bookid;
	    }
	    
	    public String getbookid()
	    { 
	        return bookid; 
	    }
	    public String getPriceCurrencyFormat()
	    {
	        NumberFormat currency = NumberFormat.getCurrencyInstance();
	        return currency.format(price);
	    }    
	}

