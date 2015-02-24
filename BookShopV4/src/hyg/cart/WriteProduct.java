/*package hyg.cart;

import hyg.book.book;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/WriteProduct")
public class WriteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public WriteProduct() {
        super();
    
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String DRIVER="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost/Bshopping?";
		String user="root";
		String DBpassword="root";
		
		Class.forName(DRIVER);
		Connection dbcon=DriverManager.getConnection(url, user, DBpassword);
		Statement stat= dbcon.createStatement();
		ResultSet rs=stat.executeQuery("select * from booklist");
		book bk= new book();
		
		File file = new File(filepath);
		FileWriter fw =new FileWriter(file);
		
		
	   while(rs.next()){
		    String bookid= rs.getString(1);
			String bookname=rs.getString(2);
			String quantity=rs.getString(6);
			String unitPrice=rs.getString(7);
		
		}	
		stat.close();
		dbcon.close();
		
		
		ServletContext sc = getServletContext();
        String path = sc.getRealPath("WEB-INF/books2.txt");
        
        HttpSession session = request.getSession();       
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null)
            cart = new Cart();

        //if the user enters a negative or invalid quantity,
        //the quantity is automatically reset to 1.
    

        ServletContext sc = getServletContext();
        String path = sc.getRealPath("WEB-INF/books.txt");
        Product product = ProductIO.getProduct(productCode, path);

        LineItem lineItem = new LineItem();
        lineItem.setProduct(product);
        lineItem.setQuantity(quantity);
        if (quantity > 0)
            cart.addItem(lineItem);
        else if (quantity == 0)
            cart.removeItem(lineItem);

        session.setAttribute("cart", cart);
        String url = "/cart.jsp";
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
	}


}*/
