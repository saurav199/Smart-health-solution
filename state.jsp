<%@ page  import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#669999">

 <%
System.out.println("enter into the relationsmodify1.jsp"); 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select state,sum(amount),count(cname) from reg group by state");
  %>
<table width="314" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#CC66FF">
  <tr> 
    <th width="153" bgcolor="#CCCC66">State</th>
    <th width="80" bgcolor="#CCCC66">Amount</th>
    <th width="51" bgcolor="#CCCC66">Count</th>
  </tr>
  <%while(rs.next()){%>
  <tr> 
    <td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
  </tr>
  <%}%>
</table>
<p>&nbsp;</p>
<p></p>
</body>
</html>

