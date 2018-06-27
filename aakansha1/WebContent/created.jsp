<%@ page import ="java.sql.*" %>
<%  
if ((request.getParameter("name1") == null) || (request.getParameter("name1") == "")|| (request.getParameter("email") == null) || (request.getParameter("email") == "") ||(request.getParameter("interest") == null) || (request.getParameter("interest") == "")||
		(request.getParameter("skills") == null) || (request.getParameter("skills") == "")|| (request.getParameter("experience") == null) || (request.getParameter("experience") == "")){
    	
    	
	%>
	Please fill in the details<br/>
	<a href="createresume.jsp">Go Back</a>
	<%} else {
%>
<% 
String Name = request.getParameter("name1");    
String Email = request.getParameter("email");
String Interests = request.getParameter("interest");
String skills = request.getParameter("skills");
String Education = request.getParameter("experience");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname",
            "root", "aakanksha");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into resumemaker(Name, email, interest, skills, experience) values ('" + Name + "','" + Email + "','" + Interests + "','" + skills + "','" + Education+"')");
        if (i > 0) {
            //session.setAttribute("userid", user);
            response.sendRedirect("addeddata.jsp");
           out.print("Resume Created!"+"<a href='Exportexcel.jsp'>Export Resume</a>");
        } else {
            response.sendRedirect("index.jsp");
        }
    %>

    <%
    }
    %>