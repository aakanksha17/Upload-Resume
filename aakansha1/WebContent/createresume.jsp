<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
      <form method="post" action="created.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Welcome <%=session.getAttribute("userid")%></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Enter your name</td>
                        <td><input type="text"   name="name1" /></td>
                    </tr>
                    
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email"  /></td>
                    </tr>
                   <tr>
                   <td>Interests</td>
                 <td>  <input type="text" name="interest" /></td>
                   </tr>
                   <td>Skills</td>
                 <td>  <input type="text" name="skills"  /></td>
                   </tr>
                   <td>Education</td>
                 <td>  <input type="text" name="education"  /></td>
                   </tr>
                   <td>Experience</td>
                 <td>  <input type="text" name="experience"  /></td>
                   </tr>
                    
                    <tr>
               <td><input type="submit" value="Create" /></td> 
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                   
                </tbody>
            </table>
            </center>
        </form>
</body>
</html>

