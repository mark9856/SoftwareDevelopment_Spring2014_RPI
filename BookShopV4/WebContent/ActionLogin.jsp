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
<%  
	String name= request.getParameter("username");
	String pass= request.getParameter("password");
	
	String DRIVER="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost/Bshopping?";
	String user="root";
	String password="root";
	try{
	Class.forName(DRIVER);
	Connection dbcon=DriverManager.getConnection(url, user, password);
	PreparedStatement stat= dbcon.prepareStatement(
	"select * from users where username=? and password=?");
	stat.setString(1,name);
	stat.setString(2,pass);
	ResultSet result=stat.executeQuery();
	
	if(result.next()){
		out.println("Login Successful!");
		session.setAttribute("username",name);
        response.sendRedirect("usingpage.jsp");
		out.println("<BR><BR>");
	}else{
		out.println("Username or password was wrong"); 
            response.sendRedirect("loginError.jsp");
       
		stat.close();
		dbcon.close();	
	}
	}catch(Exception e){
		out.println(e);
		
	}
	%>


</body>
</html>

</body>
</html>