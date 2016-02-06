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
                  
                        <%
                            String name=request.getParameter("name");
                            String rollno=request.getParameter("rollno");
                            String scode=request.getParameter("scode");
                            String sname=request.getParameter("sname");
                            String comment=request.getParameter("comment");
                            if(user != null)
                            {
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                                    st=con.createStatement();
                                    String q="select * from feedback where rollno='"+rollno+"' and scode='"+scode+"' and name='"+name+"'";
                                    rs=st.executeQuery(q);
                                    if(rs.next())
                                    {%>
                                       <div class="signout">
                                        Sorry..You Can Submit Feedback At Once..!!
                                        </div> 
                                    <%}
                                    else{
                                        q="insert into feedback values('"+name+"', '"+rollno+"', '"+sname+"', '"+scode+"', '"+comment+"')";
                                        st.executeUpdate(q);
                                        %>
                                        <div class="signout">
                                        Your Feedback Has Been Submitted..!!
                                        </div>
                                    <%} 
                                }
                                catch(Exception e)
                                {
                                    out.println("Error="+e);
                                }
                            }
                            else if(admin!=null)
                            {%>
                            <div class="signout">
                               Only Student Can Submit Feedback Not Admin..!!
                               </div> 
                            <%}
                            else
                            {
                                response.sendRedirect("notsigninuser.jsp");
                            }
                            %> 
                </div>
                
                
            </div>
             
                <div id="footer">
                    <%@include  file="footer.jsp" %>
                </div>
        </div>
    </center>
    </body>
</html>
