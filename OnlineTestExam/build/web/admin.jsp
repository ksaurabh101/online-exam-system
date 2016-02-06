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
                    <div class="align">
                        <div class="admin"><b><a style="width: 200px; font-size: 27px;" href="adminregistration.jsp">Admin Registration</a></b></div>
                        <div class="admin"><b><a style="margin-top: 20px; width: 200px; font-size: 30px;" href="adminlogin.jsp">Admin Login</a></b></div>
                        <div class="admin"><b><a style="margin-top: 20px; width: 220px; font-size: 30px;" href="subjects.jsp">Add Subjects</a></b></div>
                        <div class="admin"><b><a  style="margin-top: 20px; width: 200px; font-size: 30px;" href="paper.jsp">Make Paper</a></b></div>
                        <div class="admin" style="width: 200px; height: 70px; padding: 15px; background-color: aqua; margin: 20px 330px 20px 150px; float: left; border-radius: 10px ;"><b><a style="margin-top: 20px; margin-left: 40px; font-size: 35px;" href="adminnotice.jsp">Notice</a></b></div>
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
