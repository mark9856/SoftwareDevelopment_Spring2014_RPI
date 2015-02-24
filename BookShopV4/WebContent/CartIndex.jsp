<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
    <title>Java Servlets and JSP</title>
</head>
<body>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%@page import="java.util.*" %>

           
           
            <form action="">
          
             <table  width="100%" height="79" border="0" cellpadding="0"
                     cellspacing="0" align=center>
             <tr>
                <td bgcolor="F9A859" valign="top">
                <table width="100%" height="50" border="0" align="center"
                       cellpadding="0" cellspacing="0" bgcolor="FBEAD0">
                 <tr>
                   <td align="center" style="font-size:25px;">
                     RPI Used Book Shopping Center
                   </td>
                 </tr> 
                
                </table>
                
                </td>
             </tr>
               <tr>
                 <td bgcolor="F9A859" valign="top">
                 <table width="100%" border="0" align="center" cellpadding="0"
                         cellspacing="0">
                  <tr>
                     <td align="center" style="font-size:13px" valign="middle">
                     Welcome your visit!
                     </td>
                  </tr>       
                 
                 </table>
                 
                 </td>
              </tr>              
             
             </table>
           </form>
           
         
<h1>Short Book List</h1>

<table cellpadding="5" border=1>

  <tr valign="bottom">
    <td align="left"><b>Description</b></td>
    <td align="left"><b>Price</b></td>
    <td align="left"></td>
  </tr>

  <tr valign="top">
    <td>Data Structures</td>
    <td>$50.99</td>
    <td><a href="<c:url value='/cart?productCode=1' />">Add To Cart</a></td>
  </tr>

  <tr valign="top">
    <td>Design Pattern</td>
    <td>$38.00</td>
    <td><a href="<c:url value='/cart?productCode=9' />">
        Add To Cart</a></td>
  </tr>

  <tr valign="top">
    <td>Matlab</td>
    <td>$24.95</td>
    <td><a href="<c:url value='/cart?productCode=12' />">
        Add To Cart</a></td>
  </tr>

  <tr valign="top">
    <td>Access</td>
    <td>$12.30</td>
    <td><a href="<c:url value='/cart?productCode=14' />">
        Add To Cart</a></td>
  </tr>

</table>
<br><br>
 <h1>Detailed Book List</h1><br>
<%
	String DRIVER="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost/Bshopping?";
	String user="root";
	String DBpassword="root";
	String helper="cart";
	
	Class.forName(DRIVER);
	Connection dbcon=DriverManager.getConnection(url, user, DBpassword);
	Statement stat= dbcon.createStatement();
	ResultSet rs=stat.executeQuery("select * from booklist");
	out.print("<form action='cart.jsp' ><table border='1' alignment='center'cellpadding='5'>");
    out.println("<tr><th border= '1' width='15%' align='center'>Bookname</td><th border= '1' width='15%' align='center'>Publisher</td><th border= '1' width='15%' align='center'>Author</td><th border= '1' width='15%' align='center'>Version</td><th border= '1' width='15%' align='center'>Quantity</td><th border= '1' width='15%' align='center'>Unit price</td><th border= '1' width='10%' align='center'>Cart</td></tr>");
	
   while(rs.next()){
		String bookname=rs.getString(2);
		String publisher=rs.getString(3);
		String author=rs.getString(4);
		String version=rs.getString(5);
		String quantity=rs.getString(6);
		String unitPrice=rs.getString(7);
		out.println("<tr><td>"+bookname+"</td><td>"+publisher+"</td><td >"+author+"</td><td align='center'>"+version+"</td><td align='center'>"+quantity+"</td><td align='center'>"+unitPrice+"</td><td><input type='submit' name=hi value='Add to Cart'/></td></tr>");
	}	
	out.println("</table></form>");
	stat.close();
	dbcon.close();
%>

</body>
</html>
