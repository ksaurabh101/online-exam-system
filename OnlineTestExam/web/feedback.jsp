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
        <script type="text/javascript">
    function isRollNo(string,bag)
    {
        var i;
        if(string.length!=11)
            {
                return false;
            }
        for(i=0;i<bag.length;i++)
            {
                if(string.charAt(i)!= bag.charAt(i))
                    {
                        
                        return false;
                    }
            }
            return true;
    }

    function verify(){
	var flag=0;
	for(i=0;i<=4;i++){
		if(document.forms[0].elements[i].value==""){
			alert("Please fill in the "+ document.forms[0].elements[i].id +" field");
			document.forms[0].elements[i].focus();
                        document.forms[0].elements[i].style.backgroundColor="#ee5c86";
			flag=1;
			break;
		}
	}
	if(flag==1){
		return(false);
	}
	if(flag==0){
            
                var rollno=document.forms[0].elements[1].value;
                if(!isRollNo(rollno,"IPG-20"))
                    {
                        alert("Please Enter RollNo In Given Format");
			document.forms[0].elements[1].focus();
                        return false;
                    }      
	}
	return(true);
    }
        </script>
        
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
                    <div class="registration">
                    <div style="color: blue; font-size: 30px; margin-bottom: 10px; background-color: activecaption;"><b>Feedback</b></div>
                    <form action="feedbacksubmit.jsp" method="post" onSubmit="return verify()">
                        <table style="font-size: 20px;">
                            <tr><td>Name:</td><td><input type="text" name="name" id="Name" placeholder="Name"/></td></tr>
                            <tr><td>Roll No:</td><td><input type="text" name="rollno" id="RollNo" placeholder="IPG-20XXXXX"/></td></tr>
                            <tr><td>Subject Name:</td><td><input type="text" name="sname" id="SubjectName" placeholder="Subject Name"/></td></tr>
                            <tr><td>Subject Code:</td><td><input type="text" name="scode" id="SubjectCode" placeholder="Subject Code"/></td></tr>
                            <tr><td>Comment:</td><td><input type="text" name="comment" id="Comment" placeholder="Comment" /></td></tr>
                           
                        </table>
                        <br/>
                        <input  style="font-size: 25px; background-color: aqua; border-style: solid; width: 110px; border-radius: 10px; border-color: red;" type="submit" value="Submit"/>
                    </form>
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
