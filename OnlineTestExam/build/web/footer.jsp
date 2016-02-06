<%-- 
    Document   : footer
    Created on : 20 Nov, 2013, 1:29:23 PM
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
        <div class="footer" style="background-image: url(resources/images/footer.jpg);">
                <div style="padding-top: 40px; width: 500px;">
                    <a style="text-decoration: none; color: black; margin: 0px 0px 0px 90px; float: left; padding-left: 50px; padding-right: 10px;;" href="home.jsp"><b>HOME</b></a>
                    <p style="width: 5px; float: left;  margin-left: 0px; margin-right: 0px;">|</p>
                    <a style="text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left; padding-right: 10px;"  href="admin.jsp"><b>ADMIN</b></a>
                    <p style="width: 5px; float: left; margin-left: 0px; margin-right: 0px;">|</p>
                    <a style="text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left; padding-right: 10px;" href="user.jsp"><b>USER</b></a>
                    <p style="width: 5px; float: left; margin-left: 0px; margin-right: 0px;">|</p>
                    <%
                    if(admin!=null || user!=null)
                    {
                   %>
                  <a style="text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left;" href="signout.jsp"><b>SIGN OUT</b></a>
                  <%
                    }
                    else
                    {
                   %>
                  <a style="text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left;" href="signin.jsp"><b>SIGN IN</b></a>
                  <%
                    } 
                  %>
                    
                   
                 </div>  
            </div>
    </body>
</html>
