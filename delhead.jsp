<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
 System.out.println("----->Enter into the modifybranch.jsp-----");
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
 int bno=Integer.parseInt(request.getParameter("bno").trim());
 Statement stmt=con.createStatement();
 stmt.execute("delete from branchhead where bno="+bno);
 out.println("<font color='green'>successfully deleted branchhead and number is:"+bno+"</font>");
 %>
 


</body>
</html>
