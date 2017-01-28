<%@ page  language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
System.out.println("enter into the branchdata.jsp"); 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
int no=Integer.parseInt(request.getParameter("regno").trim());
stmt.execute("delete from regdesc where regno="+no);
stmt.execute("delete from reg where regno="+no);
out.println("successfully deleted the registration details");%>

</body>
</html>
