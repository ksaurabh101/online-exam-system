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
                    <div class="registration">
                        <div style="color: blue; font-size: 30px;margin-bottom: 10px; background-color: activecaption;"><b>Notice</b></div>
                        <div style="height: 100px">
                            <center>
                                <% 
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                                    st=con.createStatement();
                                    String query="select * from notice";
                                    rs=st.executeQuery(query);
                                    if(rs.next())
                                    {
                                %>
                                <p style="padding-top: 30px; font-size: 30px;"><%=rs.getString("notice") %></p>
                                <%
                                        
                                    }
                                    else
                                    {
                                     %>
                               <p style="padding-top: 30px; font-size: 30px;">Will be Uploaded Soon.....!!!</p>  
                                     <%
                                    }
                                    
                                }
                                catch(Exception e)
                                {
                                    System.out.println("Error="+e);
                                }
                                %>
                                
                            </center>
                        </div>
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
