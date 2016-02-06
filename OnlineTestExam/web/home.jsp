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
                
                <div class="content">
                    <div class="text">
                        <h1 style="color: #e12869; text-align: justify;">Welcome to Online Test</h1>
                        <p style="text-align: justify;">
                    Online Exam means the candidate sits in front of 
                    a computer at the examination centre and the questions are presented on 
                    the computer monitor and the candidate answers
                    the questions on the computer through the 
                    use of mouse. Unlike the traditional 
                    paper-pencil based test which is generally 
                    offered on a single day to all candidates, 
                    Online Exam will be offered over a period 
                    of time and the candidate can choose the 
                    Center, the Day and Time of his/her 
                    convenience to take the test.</p><br/>
                        <h1 style="color: #e12869; text-align: justify;">Purpose</h1>
                        <p style="text-align: justify;">
                            Online Exams System fulfills the requirements of the
                            institutes to conduct the exams online.They do not 
                            have to go to any software developer to make a separate
                            site for being able to conduct exams online.They just 
                            have to register on the site and enter the exam details
                            and the lists of the students which can appear in the exam.
                        </p>
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
