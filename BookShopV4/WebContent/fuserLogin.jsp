<%@
  page contentType="text/html;charset=gb2312"
 %>
 <html>
      <head>
      <meta http-equiv="Content-Type" content="text/html;charset=gb2312">
           <title></title>
           <script language="javascript">

   function login()
   {

       document.myform.operator.value="login";
       document.myform.submit();
   
   }   
</script> 	  	
      </head>
      <body>
        <form action="">
          
             <table  border="0" cellpadding="0">
                <img src="zflag.PNG"  width="250" height="170" >
                
                </table>
                
           
           </form>
      <h2>login</h2>
      <br>
  
          <form action="ActionLogin.jsp" target="_blank" name="myform" method="post"> 	  	   
 	  	   	Username:<input type="text" name="username" size="12">  <br>
 	  	   	Password:<input type="password"  name="password" size="12">
 	  	   	<BR><BR>
 	  	   	<input type="hidden" name="operator" value="">
 	  	   <a onclick="login()"><img src="zsignin.PNG"></a></form>
 	  	   <form method="post" target="_blank" action= "signUp.jsp">
 	  	   <input type="image" src="zsignup.PNG"  value="Signup">		
 	  	   </form>
      </body>
 </html> 