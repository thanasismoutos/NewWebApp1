<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Circle</title>
</head>
<body bgcolor="FEF9E7">
	
	
	try {
	String connectionURL = "jdbc:mysql://localhost:3306/page_visits?serverTimezone=UTC"; 
	Connection connection = StatisticsDB; 
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); 
	connection = DriverManager.getConnection(connectionURL, "root", "");
		if( !connection.isClosed() ){
			Statement stmt0 = connection.createStatement();
			stmt0.executeUpdate("INSERT INTO PAGE_VISITS (SHAPE, TS) VALUES ('Circle', NOW())");
			connection.close();
		}
	}
	catch (SQLException e) {
		out.println("Unable to connect to database." + e.getMessage());
	}
	
	
<font face="verdana">
	<h1>Hello!</h1>

	<p>
	<p>This is a <font color="red">RED Circle</font>.
	<p>
	<p>
	<svg width="150" height="150" xmlns="http://www.w3.org/2000/svg">
    	<circle cx="75" cy="75" r="75"
    		style="fill:red;stroke:black;stroke-width:1" />
	</svg>
</font>
</body>
</html>
