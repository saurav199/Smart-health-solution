import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class RelationssModify extends HttpServlet
 {
   public void doPost(HttpServletRequest request,HttpServletResponse resp) throws ServletException,IOException
     {
           resp.setContentType("text/html");
           PrintWriter out=resp.getWriter();
         try
          {
            System.out.println("this is RegDesc servlet");
             int regno=Integer.parseInt(request.getParameter("regno").trim());
             String regname=request.getParameter("name").trim();
             String sex =request.getParameter("sex").trim();
              int age=Integer.parseInt(request.getParameter("age").trim());
               String relation=request.getParameter("relation").trim();
                 Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
                 PreparedStatement psmt=con.prepareStatement("update regdesc set regno=?,name1=?,sex1=?,age1=?,relation=? where regno="+regno);
                  psmt.setInt(1,regno);
                  psmt.setString(2,regname);
                  psmt.setString(3,sex);
                  psmt.setInt(4,age);
                   psmt.setString(5,relation);
                  psmt.execute();
                  out.println("<font color='#172035' size='4' face='Monotype Corsiva'>Successfully modified ur relation details ....if u modify the another relation details</font>");
                  out.println("<font color='green'>pls</font> <a href='./relationmodify.jsp'><font color='green'>click</font></a>");
                }
catch(Exception e)
 {
    e.printStackTrace();
}
}
}
                   
	