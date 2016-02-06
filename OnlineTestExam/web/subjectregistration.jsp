<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
String user=(String) session.getAttribute("user");
if(user!=null)
{
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Test Exam</title>
        <link rel="icon" href="resources/images/icon.jpg" type="image/jpg"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/login.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body class="wrapper">
    <center>
        <div class="main">
            <div class="bar">
                <div style="float: left; width: 580px; margin: 8px 0px 5px 200px; font-size: 20px;"><marquee behavior="alternate"  direction="left" style="text-align:center;">ABV-IIITM Online Test Exam</marquee></div>
                <%
                    String admin=(String) session.getAttribute("admin");
                    
                    Connection con;
                    Statement st;
                    ResultSet rs;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                        st=con.createStatement();
                        if(admin!=null)
                        {
                            String query="select * from admin where uname='"+admin+"'";
                            rs=st.executeQuery(query);
                            if(rs.next())
                            {
                                String name=rs.getString("name");
                                %>
                                <div  style=" float: right; margin-right: 10px;  font-size: 20px; margin-top: 15px; width: auto;"><p>Welcome Mr <%=name %></p></div>
                                <%    
                            }
                        }
                        if(user!=null)
                        {
                            String query="select * from user where rollno='"+user+"'";
                            rs=st.executeQuery(query);
                            if(rs.next())
                            {
                                String name=rs.getString("name");
                                %>
                                <div style=" float: right; margin-right: 10px;  font-size: 20px; margin-top: 15px; width: auto;"><p>Welcome Mr <%=name %></p></div>
                                <%    
                            }
                        }
                        
                    }
                    catch(Exception e)
                        {
                            out.println("Error="+e);
                        }
                     %>
                
            </div>
            <div class="header" style="background-image: url(resources/images/header.jpg);">
                
            </div>
            <div class="body" style="background-image: url(resources/images/background.jpg);">
                <div class="menu">
                    <div class="menubar">
                        <ul>
                        <li><a href="home.jsp">HOME</a></li>
                        <li><a href="admin.jsp">ADMIN</a></li>
                        <li><a href="user.jsp">USER</a></li>
                        <li><a href="notice.jsp">NOTICE</a></li>
                        <li><a href="exam.jsp">EXAM</a></li>
                         <li><a href="showresult.jsp">RESULT</a></li>
                        <li><a href="feedback.jsp">FEEDBACK</a></li>
                        <li><a href="signout.jsp">SIGN OUT</a></li>
                        <li><a href="contact.jsp">CONTACT US</a></li>
                        <li><a href="report.jsp">EXAM REPORT</a></li>
                        </ul>
                    </div>
                </div>
                <div class="contents">
                    <div class="login">
                        <div style="color: blue; font-size: 30px; margin-bottom: 10px; background-color: activecaption; "><b>Register Your Subject</b></div>
                        <form action="subjectregistration" method="post">
                        <table>
                            <tr><td>Subject Name:</td></tr>
                            <tr><td><input name="sname" type="text"/></td></tr>
                            <tr><td>Subject Code:</td></tr>
                            <tr><td><input name="scode" type="text"/></td></tr>
                        </table>
                            <br/>
                            <input style="font-size: 25px; background-color: aqua; border-style: solid; width: 110px; border-radius: 10px; border-color: red;" type="submit" value="Add"/>
                        </form>
                    </div>
                </div>
            </div>
            <div class="footer" style="background-image: url(resources/images/footer.jpg);">
                <div style="padding-top: 40px; width: 500px;">
                    <a style="text-decoration: none; color: black; margin: 0px 0px 0px 90px; float: left; padding-left: 50px; padding-right: 10px;;" href="home.jsp"><b>HOME</b></a>
                    <p style="width: 5px; float: left;  margin-left: 0px; margin-right: 0px;">|</p>
                    <a style="text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left; padding-right: 10px;"  href="admin.jsp"><b>ADMIN</b></a>
                    <p style="width: 5px; float: left; margin-left: 0px; margin-right: 0px;">|</p>
                    <a style="text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left; padding-right: 10px;" href="user.jsp"><b>USER</b></a>
                    <p style="width: 5px; float: left; margin-left: 0px; margin-right: 0px;">|</p>
                    <a style="text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left;" href="signout.jsp"><b>SIGN OUT</b></a>
                   
                 </div>  
            </div>
        </div>
    </center>
    </body>
</html>
<%
}
else
{
    response.sendRedirect("notsigninuser.jsp");
}
%>