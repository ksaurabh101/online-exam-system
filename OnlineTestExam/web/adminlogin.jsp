<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Online Test Exam</title>
        <link rel="icon" href="resources/images/icon.jpg" type="image/jpg"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/register.css" rel="stylesheet" type="text/css"/>
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
                    <div class="login">
                        <div style="color: blue; font-size: 30px;background-color: activecaption; margin-bottom: 10px; "><b>Admin Login</b></div>
                        <form action="adminlogin" method="post">
                        <table>
                            <tr><td>Admin User Name:</td></tr>
                            <tr><td><input type="text" name="uname" placeholder="User Name" autocomplete="on"/></td></tr>
                            <tr><td>Password:</td></tr>
                            <tr><td><input type="password" name="password" placeholder="Password"/></td></tr>
                        </table>
                            <br/>
                            <input style="font-size: 25px; background-color: aqua; border-style: solid; width: 110px; border-radius: 10px; border-color: red;" type="submit" value="Login"/>
                        </form>
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
