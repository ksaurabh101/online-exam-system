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
                    <form action="result.jsp" method="get">
                    <div style="color: blue; font-size: 30px;margin: 20px 50px 10px 50px; border-radius: 15px;; background-color: activecaption;"><b>Exam Paper</b></div>
                    <%
                     
                     String scode=request.getParameter("scode");
                     String sname=request.getParameter("sname");
                     
                     session.setAttribute("scode", scode);
                     session.setAttribute("sname", sname);
                     
                     if(user != null)
                     { 
                     int a=(Integer)session.getAttribute("counter");
                     
                     %>
                     <p style="font-size: 25px;">Page No: <%=a+1 %></p>
                     <%
                    try
                        {
                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                        st=con.createStatement();
                        String q="select * from usersubjects where rollno='"+user+"' and scode='"+scode+"'";
                        rs=st.executeQuery(q);
                        if(rs.next())
                        {
                        String query="select * from " +scode;
                        rs=st.executeQuery(query);
                        for(int i=0;i<(a*3);i++)
                        {
                            rs.next();
                        }
                        session.setAttribute("counter", (Integer)session.getAttribute("counter") + 1);
                        if(rs.next())
                        {
                            session.setAttribute("qno1", rs.getString("qno"));
                       %>
                       <div class="exam" style="width: 480px;">
                           <div style="width: 480px; float: left;">
                               <table style="float: left; margin-left: 15px; margin-right: 10px; margin-bottom: 15px;">
                          <tr><td>Qno:<%=rs.getString("qno")%>--</td><td><%=rs.getString("qname") %></td></tr>
                          <tr><td><input type="radio" name="q1" value=<%=rs.getString("opt1")%> />:<%=rs.getString("opt1")%></td><td><input type="radio" name="q1" value=<%=rs.getString("opt2")%> />:<%=rs.getString("opt2")%></td></tr>
                          <tr><td><input type="radio" name="q1" value=<%=rs.getString("opt3")%> />:<%=rs.getString("opt3")%></td><td><input type="radio" name="q1" value=<%=rs.getString("opt4")%> />:<%=rs.getString("opt4")%></td></tr>
                      </table>
                      </div>
                            <%
                                if(rs.next())
                                {
                                    session.setAttribute("qno2", rs.getString("qno"));
                            %>
                            <div style="width: 480px; float: left;">
                      <table style="float: left; margin-left: 15px; margin-right: 10px; margin-bottom: 15px;">
                          <tr><td>Qno:<%=rs.getString("qno")%>--</td><td><%=rs.getString("qname") %></td></tr>
                          <tr><td><input type="radio" name="q2" value=<%=rs.getString("opt1")%> />:<%=rs.getString("opt1")%></td><td><input type="radio" name="q2" value=<%=rs.getString("opt2")%> />:<%=rs.getString("opt2")%></td></tr>
                          <tr><td><input type="radio" name="q2" value=<%=rs.getString("opt3")%> />:<%=rs.getString("opt3")%></td><td><input type="radio" name="q2" value=<%=rs.getString("opt4")%> />:<%=rs.getString("opt4")%></td></tr>
                      </table>
                      </div>
                            <%
                                }
                                if(rs.next())
                                {
                                    session.setAttribute("qno3", rs.getString("qno"));
                            %>
                       <div style="width: 480px; float: left;">
                      <table style="float: left; margin-left: 15px; margin-right: 10px; margin-bottom: 15px;">
                          <tr><td>Qno:<%=rs.getString("qno")%>--</td><td><%=rs.getString("qname") %></td></tr>
                          <tr><td><input type="radio" name="q3" value=<%=rs.getString("opt1")%> />:<%=rs.getString("opt1")%></td><td><input type="radio" name="q3" value=<%=rs.getString("opt2")%> />:<%=rs.getString("opt2")%></td></tr>
                          <tr><td><input type="radio" name="q3" value=<%=rs.getString("opt3")%> />:<%=rs.getString("opt3")%></td><td><input type="radio" name="q3" value=<%=rs.getString("opt4")%> />:<%=rs.getString("opt4")%></td></tr>
                      </table>
                      </div>
                      
                          <%
                                }
                        }
                        else{
                            %>
                            <p style="font-size: 30px;">........Finished......</p>
                            <%
                        }
                        }
                        else
                        {
                           response.sendRedirect("notregistered.jsp");
                        }
                        }
                    catch(Exception e)
                        {
                            System.out.println("Error="+e);
                        }
                    }
                    else
                    {
                        response.sendRedirect("notsigninuser.jsp");
                    }
                    %>
                    <br/>
                    <button   formaction="showpaper1.jsp" formmethod="get" type="submit" value="Next" style="font-size: 25px; background-color: aqua; border-style: solid; width: 90px; margin-right: 20px; border-radius: 10px; border-color: red;" >Next</button>
                    <button style="font-size: 25px; background-color: aqua; border-style: solid; width: 110px; margin-right: 20px; border-radius: 10px; border-color: red;" type="submit" value="Submit" >Submit</button>
                    
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
