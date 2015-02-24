<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, hyg.cart.Product"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
	
	 String bookname=(String)request.getParameter("bookname");
     String publisher=(String)request.getParameter("publisher");
     String author= (String)request.getParameter("author");
     String version = (String)request.getParameter("version");
     int quantity=Integer.parseInt(request.getParameter("quantity"));
     double unitprice = Double.parseDouble(request.getParameter("unitprice"));
    
	
	
	String DRIVER="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost/Bshopping?";
	String user="root";
	String DBpassword="root";
	
	Class.forName(DRIVER);
	Connection dbcon=DriverManager.getConnection(url, user, DBpassword);
	PreparedStatement stat= dbcon.prepareStatement(
	"INSERT INTO booklist (bookname, publisher, author, version, quantity, price) VALUES (?, ?, ?, ?, ?, ?)");
	stat.setString(1,bookname);
	stat.setString(2,publisher);
	stat.setString(3,author);
	stat.setString(4,version);
	stat.setInt(5,quantity);
	stat.setDouble(6, unitprice);
	
	stat.executeUpdate();
	
		out.println("<br><br><br><br>&nbsp&nbsp&nbsp&nbspCongratulations! <br>&nbsp&nbsp&nbsp&nbspYou account are created!");
	
	stat.close();
	dbcon.close();	
%>
	<br><br>
	 <br><br>
	Nice! The book<%=request.getParameter("bookname") %> are added successfully!<br>
	
	<br><br><br><br>

</body>
</html>