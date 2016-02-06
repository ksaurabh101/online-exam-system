<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Online Test Exam</title>
        <link rel="icon" href="resources/images/icon.jpg" type="image/jpg"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/registration.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/login.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body class="wrapper">
    <center>
        <div class="main">
            <div class="bar" id="bar">
                <%@include file="bar.jsp" %>
            </div>
            <div id="header">
                <%@include file="header.jsp" %>
            </div>
            <div class="body" style="background-image: url(resources/images/background.jpg);">
                <div id="menu">
                    <%@include file="menu.jsp" %>
                </div>
                <div class="contents">
                    <div class="login" style="height: auto; margin: 150px 60px 150px 60px; width: 500px;">
                        <div style="color: blue; font-size: 30px; margin-bottom: 10px; background-color: activecaption; "><b>Your Result</b></div>
                        
                        
                            <%
                            String scode=request.getParameter("scode");
                            String sname=request.getParameter("sname");
                            if(user != null)
                            {
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                                    st=con.createStatement();
                                    String q="select * from result where rollno='"+user+"' and scode='"+scode+"'";
                                    rs=st.executeQuery(q);
                                    %>
                                    <table style="font-size: 25px;" class="report">
                                        <tr><td><b>Subject Name</b></td><td><b>Subject Code</b></td><td><b>Number</b></td></tr>
                                    <%
                                    while(rs.next())
                                    {
                                      %>
                                      <tr><td><%=rs.getString("sname") %></td><td><%=rs.getString("scode") %></td><td><%=rs.getString("no") %></td></tr>
                                      <%
                                    }
                                    %>
                                    </table>
                                    <%
                                }
                                catch(Exception e)
                                {
                                    System.out.println("Error="+e);
                                }
                            }
                            else
                            {
                                response.sendRedirect("notsigninuser.jsp");
                            }
                            %>  
                        
                    </div>
                </div>
                
                
            </div>
             
                <div id="footer">
                    <%@include  file="footer.jsp" %>
                </div>
        </div>
    </center>
    </body>
</html>
