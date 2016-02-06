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
                    <div class="choice">
                        <a href="add.jsp"><b>Add</b></a><a href="update.jsp"><b>Update</b></a><a href="delete.jsp"><b>Delete</b></a>
                   </div>
                    <form action="deletepaper" method="get">
                    <div class="paper" id="delete">
                        <div style="color: blue; font-size: 30px;margin-bottom: 10px; background-color: activecaption;"><b>Question Paper</b></div>
                <table>
                <tr><td>Subject Code:</td><td><input name="scode" type="text"/></td></tr>
                <tr><td>Question No:</td><td><input name="qno" type="text" /></td></tr>
                </table>
               <br/>
                <input style="font-size: 25px; background-color: aqua; border-style: solid; width: 110px; border-radius: 10px; border-color: red;" type="submit" value="delete" />
                   </div>
                    </form>
                </div>
                
                
            </div>
             
                <div id="footer">
                    <%@include  file="footer.jsp" %>
                </div>
        </div>
    </center>
    </body>
</html>
