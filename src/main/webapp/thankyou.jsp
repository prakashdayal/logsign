<%@ page import="java.sql.*,java.net.URI,java.util.*,java.net.URISyntaxException"  %>
<html>
<body>
<h1> Thank You for Using our apps</h1>
<%
String id1 = request.getParameter("login");
String pass1 = request.getParameter("password");
/*
	        Connection conn = null;
	        ResultSet rs=null;
    try
    {
      Class.forName("org.postgresql.Driver");
      String url = "jdbc:postgresql://ec2-54-83-17-8.compute-1.amazonaws.com/dcfvedpe24akom";
      conn = DriverManager.getConnection(url,"ckkyrhcwefetgz", "pEHeAaHXoXx4nX2KlkHwcKwKKz");
       Statement stmt = connection.createStatement();
	        stmt.executeUpdate("DROP TABLE IF EXISTS logindetails");
	        stmt.executeUpdate("CREATE TABLE logindetails (id varchar(30),pass varchar(20))");
	        stmt.executeUpdate("INSERT INTO logindetails VALUES ('prakash','dayal')");
	        rs = stmt.executeQuery("SELECT * FROM logindetails");
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
	*/
	URI dbUri = new URI("postgres://ckkyrhcwefetgz:pEHeAaHXoXx4nX2KlkHwcKwKKz@ec2-54-83-17-8.compute-1.amazonaws.com:5432/dcfvedpe24akom");

    String username = dbUri.getUserInfo().split(":")[0];
    String password = dbUri.getUserInfo().split(":")[1];
    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

     Connection conn= DriverManager.getConnection(dbUrl, username, password);

	         Statement stmt = conn.createStatement();
	        stmt.executeUpdate("DROP TABLE IF EXISTS logindetails");
	        stmt.executeUpdate("CREATE TABLE logindetails (id varchar(30),pass varchar(20))");
	        stmt.executeUpdate("INSERT INTO logindetails VALUES ('prakash','dayal')");
	       ResultSet rs = stmt.executeQuery("SELECT * FROM logindetails");
	        
	        
	            
	       


//response.sendRedirect("/CR?token=" + URLEncoder.encode(token, "UTF-8"));

	        rs.next();
	        if(rs.getString("id")==id1 && rs.getString("pass")==pass1)
{out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBB");
response.sendRedirect("/thankyou1.jsp");

	            }else{
	            out.println("id is"+id1);
	            out.println("pass is"+pass1);
	            	//response.sendRedirect("/error.jsp");


	            	}
	            
%>

</body>
</html>
