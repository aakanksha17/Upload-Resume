<%  
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%><br><br>


<FORM NAME="create" METHOD="POST"  action="createresume.jsp">
      
        <INPUT type = "submit" VALUE="Create a resume" ONCLICK="button1()">
        
       
    </FORM><br>
    
    <FORM NAME="edit" METHOD="POST" action="editresume.jsp">
     
          <INPUT type = "submit" VALUE="Edit Resume" ONCLICK="button2()">
        
    </FORM><br>
    
     <FORM NAME="export" METHOD="POST" action="Exportexcel.jsp">
      
      
        <INPUT VALUE="Export To Excel" type = "submit" ONCLICK="button3()">
     
    </FORM><br>
     
      <FORM NAME="upload" METHOD="POST"  action="uploadresume.jsp">
     
          <INPUT type = "submit" VALUE="Upload Resume" ONCLICK="button4()">
        
    </FORM><br>















<a href='logout.jsp'>Log out</a>
<%
    }
%>

 