 <%@page language="java"%>
<%@page import="java.sql.*"%>
<table border="1">
<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname", "root", "aakanksha");
String query = "select * from resumemaker ";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>
<tr>
<tr><td>Name</td><td><input type="text" name="name" value="<%=rs.getString("name1")%>"></td></tr>
<tr><td>Email</td><td><input type="text" name="email" value="<%=rs.getString("email")%>"></td></tr>
<tr><td>Interests</td><td><input type="text" name="interest" value="<%=rs.getInt("interest")%>"></td></tr>
<tr><td>Skills</td><td><input type="text" name="skills" value="<%=rs.getString("skills")%>"></td></tr>
<tr><td>Education</td><td><input type="text" name="experience" value="<%=rs.getString("experience")%>"></td></tr>
<%
}
}
catch(Exception e){
	
}
%>
</table>