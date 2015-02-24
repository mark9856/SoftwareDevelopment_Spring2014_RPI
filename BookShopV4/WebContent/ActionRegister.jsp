<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	<br><br>
<%  
	
	 String username=(String)request.getParameter("username");
     String password=(String)request.getParameter("password");
     String telephone= (String)request.getParameter("telephone");
     String realname=(String)request.getParameter("realname");
     String addr=(String)request.getParameter("addr");
     String email=(String)request.getParameter("email");
	
	
	
	
	String DRIVER="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost/Bshopping?";
	String user="root";
	String DBpassword="root";
	
	Class.forName(DRIVER);
	Connection dbcon=DriverManager.getConnection(url, user, DBpassword);
	PreparedStatement stat= dbcon.prepareStatement(
	"insert into users (username, password,telephone,realname,addr,email) values(?,?,?,?,?,?)");
	stat.setString(1,username);
	stat.setString(2,password);
	stat.setString(3,telephone);
	stat.setString(4,realname);
	stat.setString(5,addr);
	stat.setString(6,email);
	stat.executeUpdate();
	
		out.println("<br><br><br><br>&nbsp&nbsp&nbsp&nbspCongratulations! <br>&nbsp&nbsp&nbsp&nbspYou account are created!");
	
	stat.close();
	dbcon.close();	
%>
    <br><br>
	Please remember your : <br>
	Username is:<%=request.getParameter("username") %><br>
	Password is:<%=request.getParameter("password") %>
	<br><br><br><br>
	<form name="afterSignup" action= "fuserLogin.jsp" method="post">
       <input type= submit name="continue" value="Login"  >
    </form>
</body>
</html>