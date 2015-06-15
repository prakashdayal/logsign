<%@ page import="java.sql.*,java.net.URI,java.util.*"  %>
<html>
<body>
<h1> Thank You for Using our apps</h1>
<%
             /*URI dbUri = new URI(System.getenv("DATABASE_URL"));

	        String username = dbUri.getUserInfo().split(":")[0];
	        String password = dbUri.getUserInfo().split(":")[1];
	        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + dbUri.getPath();
	        Connection connection = DriverManager.getConnection(dbUrl, username, password);
	        */
	        
	        Connection conn = null;
    try
    {
      Class.forName("org.postgresql.Driver");
      String url = "jdbc:postgresql://ec2-54-83-17-8.compute-1.amazonaws.com/dcfvedpe24akom";
      conn = DriverManager.getConnection(url,"ckkyrhcwefetgz", "pEHeAaHXoXx4nX2KlkHwcKwKKz");
       Statement stmt = connection.createStatement();
	        stmt.executeUpdate("DROP TABLE IF EXISTS logindetails");
	        stmt.executeUpdate("CREATE TABLE logindetails (id varchar(30),pass varchar(20))");
	        stmt.executeUpdate("INSERT INTO logindetails VALUES ('prakash','dayal')");
	        ResultSet rs = stmt.executeQuery("SELECT * FROM logindetails");
    }
    catch (ClassNotFoundException e)
    {
      e.printStackTrace();
      System.exit(1);
    }
    catch (SQLException e)
    {
      e.printStackTrace();
      System.exit(2);
    }
	        
	        
	        
	        
	            
	       

String id1 = request.getParameter("login");
String pass1 = request.getParameter("password");

//response.sendRedirect("/CR?token=" + URLEncoder.encode(token, "UTF-8"));

	        rs.next();
	        if(rs.getString("id")==id1 && rs.getString("pass")==pass1)
{
response.sendRedirect("/thankyou1");
	            }
%>

</body>
</html>
