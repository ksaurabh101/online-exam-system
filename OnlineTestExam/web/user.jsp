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
                    <div class="align" style="margin-top: 150px;">
                        <div class="admin"><b><a style="margin-top: 20px; width: 220px;" href="registration.jsp">User Registration</a></b></div>
                        <div class="admin"><b><a style="margin-top: 20px; width: 200px;" href="login.jsp">User Login</a></b></div>
                        <div class="admin" style=" margin-left: 160px;"><b><a style="margin-top: 5px; width: 200px;" href="subjectregistration.jsp" >Subject Registration</a></b></div>
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
