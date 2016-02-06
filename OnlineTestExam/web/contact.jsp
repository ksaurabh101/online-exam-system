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
                    <div class="contact">
                       <div style="color: blue; font-size: 30px;margin-bottom: 10px; background-color: activecaption;"><b>Contact Us</b></div>
                       KUMAR SAURABH<br/>
                       ROOM NO-253, ABV-IIITM, GWALIOR MADHYA PRADESH GWALIOR<br/>
                       EMAIL ID- KS.MAURYA10@GMAIL.COM<br/>
                       CONTACT NO- 8989931108
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
