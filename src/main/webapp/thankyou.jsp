<html>
<body>
<h1> Thank You for Using our apps</h1>
<%
 URI dbUri = new URI(System.getenv("DATABASE_URL"));

	        String username = dbUri.getUserInfo().split(":")[0];
	        String password = dbUri.getUserInfo().split(":")[1];
	        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + dbUri.getPath();
	        Connection connection = DriverManager.getConnection(dbUrl, username, password);
	        
	        Statement stmt = connection.createStatement();
	        stmt.executeUpdate("DROP TABLE IF EXISTS logindetails");
	        stmt.executeUpdate("CREATE TABLE logindetails (id varchar(30),pass varchar(20))");
	        stmt.executeUpdate("INSERT INTO logindetails VALUES ('prakash','dayal')");
	        ResultSet rs = stmt.executeQuery("SELECT * FROM logindetails");

String id1 = request.getParameter("login");
String pass1 = request.getParameter("password");

//response.sendRedirect("/CR?token=" + URLEncoder.encode(token, "UTF-8"));

	        rs.next();
	        if(rs.getString("id")==id1 && rs.getString("pass")==pass1)
{
response.sendRedirect("/thankyou1"+ URLEncoder.encode(token, "UTF-8"));
	            }
%>

</body>
</html>
