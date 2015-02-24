<%@
   page contentType="text/html; charset=gb2312" import="java.sql.*"%>
 <html>
      <head>
           <title></title>
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
      <h2>Sign Up</h2>
      <br>
          <form  name="info" action="ActionRegister.jsp" method="post">
     Username: <input type="text" name="username" value=""><br>
     Password: <input type="password" name="password" value=""><br>
     Confirm: &nbsp&nbsp<input type="password" name="password1" value=""><br>
     Realname:<input type="text" name="realname" value=""><br>
     Contact: &nbsp&nbsp<input type="text" name="telephone" value=""><br>
     Addr: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="email" value=""><br>
     E-mail: &nbsp&nbsp&nbsp&nbsp<input type="text" name="addr" value=""><br>
               <input  type="submit" name=next value="Next" onclick="Checkform()">
          
           </form>
           
           <script language=javascript>
           function Checkform()
           {
             flag=1;
             
             if(document.info.password.value!=document.info.password1.value)
             {
                alert("Passwords are different !");
                document.info.password.value="";
                document.info.password1.value="";
                flag=0;
             }
                          
             if (document.info.name.value=="")
             {
             alert("Iuput username");
             document.info.name.focus();
             flag=0;
             return false;
             }
             if(document.info.password.value=="")
             {
              alert("Input password");
              document.info.password.focus();
              flag=0;
              return false;
             }
             if(document.info.password1.value=="")
             {
               alert("Confirm password");
               document.info.password1.focus();
               flag=0;
               return false;
             }
             if(document.info.telephe.value=="")
             {
               alert("Input cellphone");
               document.info.telephe.focus();
               return false;
               flag=0;
             }
             if(document.info.mail.value=="")
             {
                alert("Input E-mail");
                document.info.mail.focus();
                flag=0;
                return false;
             }
             
             if(flag==1)
             {
                document.info.submit();
             }
             
             
           }
           
           </script>
           
	              <%-- 
	              boolean flag = true;
	              if (flag == false){
	              --%>
	             
	             <!jsp:forward page="reg2.jsp"/>
	                 
	         <%--
	         }else
	              {
	        	 --%>  
	                  <!jsp:forward page="frame.jsp"/>
	        
              
              
               <jsp!:forward page="error.jsp"/>
             
      </body>
 </html>