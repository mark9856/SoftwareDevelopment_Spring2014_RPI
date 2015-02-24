<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Java Servlets and JSP</title>
</head>
<body>

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





<h1>Your cart</h1>

<table border="1" cellpadding="5">
	<tr>
		<th>Quantity</th>
		<th>Description</th>
		<th>Price</th>
		<th>Amount</th>
		<th></th>
	</tr>

	<c:forEach var="item" items="${cart.items}">
		<tr valign="top">
			<td>
			<form action="<c:url value='/cart' />">
			    <input type="hidden" name="productCode" 
			           value="${item.product.code}"> 
				<input type="text" size="2" name="quantity" 
				       value="${item.quantity}"> 
				<input type="submit" value="Update">
			</form>
			</td>
			
			
			<td>${item.product.description}</td>
			<td>${item.product.priceCurrencyFormat}</td>
			<td>${item.totalCurrencyFormat}</td>
		
			<td>
			<form action="<c:url value='/cart' />"><input type="hidden"
				name="productCode" value="${item.product.code}"> <input
				type="hidden" name="quantity" value="0"> <input
				type="submit" value="Remove Item"></form>
			</td>
		</tr>
	</c:forEach>
	
	
	<tr>
	  <th>Total price</th>
	  <th></th>
	  <th></th>
	  <th>
	  <c:forEach var="item" items="${cart.items}">
	  ${item.totalCurrencyFormat}+
	  </c:forEach>
	  </th>
	</tr>
	
	
	<tr>
		<td colspan="3">
		<p><b>To change the quantity</b>, enter the new quantity and click
		on the Update button.</p>
		
	</tr>
	
</table>

<br>

<form action="<c:url value='/CartIndex.jsp' />" method="post"><input
	type="submit" value="Continue Shopping"></form>

<form action="<c:url value='/checkout.jsp' />" method="post"><input
	type="submit" value="Checkout"></form>

</body>
</html>