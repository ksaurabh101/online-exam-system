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
                    String q1=request.getParameter("q1");
                    String q2=request.getParameter("q2");
                    String q3=request.getParameter("q3");
                    
                    String qno1=(String)session.getAttribute("qno1");
                    String qno2=(String)session.getAttribute("qno2");
                    String qno3=(String)session.getAttribute("qno3");
                    
                    
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                        st=con.createStatement();
                        String scode=(String) session.getAttribute("scode");
                        String query="select * from "+scode+"";
                        rs=st.executeQuery(query);
                        int count=0 ;
                        if(rs.next())
                        {
                            String var=rs.getString("qno");
                            if(q1!=null && qno1.equals(var))
                            {
                                if(q1.equals(rs.getString("ans")))
                                {
                                    count++;
                                }
                            }  
                        }
                        
                        if(rs.next())
                        {
                            String var=rs.getString("qno");
                            if(q2!=null && qno2.equals(var))
                            {
                                if(q2.equals(rs.getString("ans")))
                                {
                                    count++;
                                }
                            }  
                        }
                        
                        if(rs.next())
                        {
                            String var=rs.getString("qno");
                            if(q3!=null && qno3.equals(var))
                            {
                                if(q3.equals(rs.getString("ans")))
                                {
                                    count++;
                                }
                            }  
                        }
                        String sname=(String) session.getAttribute("sname");
                        
                        query="select * from result where rollno='"+user+"' and scode='"+scode+"'";
                        rs=st.executeQuery(query);
                        if(rs.next())
                        {%>
                            <div class="signout">
                            You Can Not Submit As You Have Done It Previously..!!
                            </div>
                        <% 
                        }
                        else
                        {%>
                            <div class="signout">
                            Your Result = <%=count %>
                            </div>
                        <%   
                            query="insert into result values('"+user+"','"+sname+"','"+scode+"','"+count+"')";
                            st.executeUpdate(query);
                        }
                      
                    }
                    catch(Exception e)
                    {
                        out.println("Error="+e);
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
