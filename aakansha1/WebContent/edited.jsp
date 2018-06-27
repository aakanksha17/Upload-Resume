Resume is Edited Successful.
Please Click Here to Export Your Resume : <a href='exportexcel.jsp'><br> Export </a>



<html>
<body>
Welcome <%=session.getAttribute("userid")%>


<h1>Resume</h1>
<table border="1">
<tr>
<td>Name</td>
<td>Email</td>
<td>Interests</td>
<td>Skills</td>
<td>Education</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String name1= request.getParameter("Name");
resultSet = statement.executeQuery("UPDATE resumemakerSET Name=?,Email=?,Interests=?,Skills=?,Education=? where staffId='" + staffID.getText() + "'");
);

while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString(5) %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>

<br>
<a href='logout.jsp'>Log out</a>
