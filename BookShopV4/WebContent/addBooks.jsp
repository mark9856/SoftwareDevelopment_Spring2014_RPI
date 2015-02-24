<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
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
<body>
    <h2>Add books to book lists</h2>
      <br>
          <form  name="info" action="ActionAddBooks.jsp" method="post">
     Bookname: <li> <input type="text" name="bookname" value=""><br>
     Publisher: <li><input type="text" name="publisher" value=""><br>
     Author: &nbsp &nbsp<li><input type="text" name="author" value=""><br>
     Version: <li><input type="text" name="version" value=""><br>
     Quantity: &nbsp<li><input type="text" name="quantity" value=""><br>
     Price<li><input type="text" name="unitprice" value=""><br>
               <input  type="submit" name=next value="Add to inventory" onclick="Checkform()">
          
           </form>
           
</body>
</html>