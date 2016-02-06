<%-- 
    Document   : menu
    Created on : 20 Nov, 2013, 1:25:47 PM
    Author     : SAURABH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
                  <%
                      //admin and login are already defined above in all other files
                    if(admin!=null || user!=null)
                    {
                   %>
                  <li><a href="signout.jsp">SIGN OUT</a></li>
                  <%
                    }
                    else
                    {
                   %>
                  <li><a href="signin.jsp">SIGN IN</a></li>
                  <%
                    } 
                  %>
                  <li><a href="contact.jsp">CONTACT US</a></li>
                  <li><a href="report.jsp">EXAM REPORT</a></li>
                </ul>
            </div>
        </div>
    </body>
</html>
