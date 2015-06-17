<%@ page import="java.sql.*,java.net.URI,java.util.*,java.net.URISyntaxException"  %>
<html>
<body>
<h1> Thank You for Using our apps</h1>
<%
String id1 = request.getParameter("login");
String pass1 = request.getParameter("password");

	URI dbUri = new URI("postgres://ckkyrhcwefetgz:pEHeAaHXoXx4nX2KlkHwcKwKKz@ec2-54-83-17-8.compute-1.amazonaws.com:5432/dcfvedpe24akom");

    String username = dbUri.getUserInfo().split(":")[0];
    String password = dbUri.getUserInfo().split(":")[1];
    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

     Connection conn= DriverManager.getConnection(dbUrl, username, password);

	         Statement stmt = conn.createStatement();
	        //stmt.executeUpdate("DROP TABLE IF EXISTS logindetails");
	       // stmt.executeUpdate("CREATE TABLE logindetails (id varchar(30),pass varchar(20))");
	        //stmt.executeUpdate("INSERT INTO logindetails VALUES ('prakash','dayal')");
	       ResultSet rs = stmt.executeQuery("SELECT * FROM userdetails");
	        
	        
	            
	       

	        while(rs.next()){
	        
	       
	        if(rs.getString("id").equals(id1) && rs.getString("pass").equals(pass1))
                                           {
                                        	response.sendRedirect("/thankyou1.jsp");

                                             }
	                    	}
	                    	
	                    		response.sendRedirect("/error.jsp");

	            
%>

</body>
</html>
