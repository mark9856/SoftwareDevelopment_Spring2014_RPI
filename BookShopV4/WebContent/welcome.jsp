<%@
   page contentType="text/html; charset=gb2312" import="java.sql.*"
 %>
 <html>
      <head>
          <title></title>
      </head>
      <center>
      <body> 
      <img border="0" src="zlogo.PNG" alt="RPI" width="560" height="120">
      
     <table border="0" width="560" height="79" border="0" cellpadding="0"
                     cellspacing="0" >
             <tr>
                <td bgcolor="F9A859" valign="top">
                <table width="100%" height="50" border="0" 
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
                 <table width="100%" border="0" cellpadding="0"
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
      
      <table>       
      <textarea name="textfield" cols="65" rows="22">    
    This is a RPI Used Book Sale System.
    Do you agree the following statement?
    1.You should be a RPI student.
    2.You can trade in your used books RPI store.
    3.This is a RPI Used Book Sale System.
    4.This is a RPI Used Book Sale System.
    5.This is a RPI Used Book Sale System.
    6.Welcome to RPI Used Book Sale System.
    7.Welcome to RPI Used Book Sale System.
    8.Welcome to RPI Used Book Sale System.
    9.Welcome to RPI Used Book Sale System.
    10.Welcome to RPI Used Book Sale System.
    11.Welcome to RPI Used Book Sale System.
    12.Welcome to RPI Used Book Sale System.
    13.Welcome to RPI Used Book Sale System.
    14.Welcome to RPI Used Book Sale System.
    15...
    16...
    17...
    18...
    19...
    20...
    21...
    </textarea>
       </table>  
           <table>
               <tr>
                 <td>
                   <form action="frame.jsp" method="post">
                      <input type="button" name="同意" value="Agree" onclick="submit()">
                   </form> 
                 </td>
                 <td>
		           <form action="frame.jsp" method="post">
		               <input type="button" name="不同意" value="Disagree" onclick="submit()">
		           </form>  
                 </td>
               </tr>
           
           </table>  
      </body>
      </center>
 </html>
 
 
 
 