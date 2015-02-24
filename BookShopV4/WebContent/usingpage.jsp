<%@
   page contentType="text/html; charset=gb2312"
 %>
 <html>
      <head>
           <title></title>
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
      <br>
      <br>
      <h2>
        <center>
           <% 
           out.println("Login succeed!<br>");
           %>
           Welcome you <li><%=session.getAttribute("username")%>
           <BR>
        	</center>
  		  <br>
  		  <br>
  		  <br>
  		  <center>
  		<br>
  		<a href="CartIndex.jsp">See Booklists</a>
  		<br>
  		<a href="UserModify.jsp">Modify Account</a>
  		<br>
  		<a href="ChangePassword.jsp">Modify Password</a>
  		<br>
  		<a href="MyOrders.jsp">See Orders</a>
  		</center>
  
       </h2>     
      </body>
 </html>