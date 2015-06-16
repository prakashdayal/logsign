<%@ page import="java.sql.*,java.net.URI,java.util.*,java.net.URISyntaxException"  %>

<%
String id1 = request.getParameter("login");
String pass1 = request.getParameter("password");
String name1 = request.getParameter("name");

	URI dbUri = new URI("postgres://ckkyrhcwefetgz:pEHeAaHXoXx4nX2KlkHwcKwKKz@ec2-54-83-17-8.compute-1.amazonaws.com:5432/dcfvedpe24akom");
    String username = dbUri.getUserInfo().split(":")[0];
    String password = dbUri.getUserInfo().split(":")[1];
    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
     Connection conn= DriverManager.getConnection(dbUrl, username, password);
	         Statement stmt = conn.createStatement();
	        stmt.executeUpdate("DROP TABLE IF EXISTS user");
	        stmt.executeUpdate("CREATE TABLE user (name varchar(30),id varchar(30),pass varchar(20))");
	        stmt.executeUpdate("INSERT INTO user VALUES (name1,id1,pass1)");
	       
	            	response.sendRedirect("/index.jsp");
	           
	            
%>
