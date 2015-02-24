<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
    <img src="zRPI.PNG"  width="90%" height="170" ><br><br><br><br>
    
       Book list !
<% 
String DRIVER="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost/Bshopping?";
	String user="root";
	String DBpassword="root";
	
	Class.forName(DRIVER);
	Connection dbcon=DriverManager.getConnection(url, user, DBpassword);
	Statement stat= dbcon.createStatement();
	ResultSet rs=stat.executeQuery("select * from booklist");
	out.print("<table border='1' alignment='center'>");
    out.println("<tr><th border= '1' width='25%' align='center'>Bookname</td><th border= '1' width='15%' align='center'>Publisher</td><th border= '1' width='15%' align='center'>Author</td><th border= '1' width='15%' align='center'>Version</td><th border= '1' width='15%' align='center'>Quantity</td><th border= '1' width='15%' align='center'>Unit price</td></tr>");
	
   while(rs.next()){
		String bookname=rs.getString(2);
		String publisher=rs.getString(3);
		String author=rs.getString(4);
		String version=rs.getString(5);
		String quantity=rs.getString(6);
		String unitPrice=rs.getString(7);
		out.println("<tr><td>"+bookname+"</td><td>"+publisher+"</td><td >"+author+"</td><td align='center'>"+version+"</td><td align='center'>"+quantity+"</td><td align='center'>"+unitPrice+"</td></tr>");
	}	
	out.println("</table>");
	stat.close();
	dbcon.close();
%>
  </center>
 </body>
  </html>