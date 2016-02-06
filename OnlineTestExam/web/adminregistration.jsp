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
      function isEmail(eadd){
        var i=1;
	var sLength=eadd.length;
	while((i<sLength) && (eadd.charAt(i)!="@")){
		i++;
	}
	if((i>=sLength)|| (eadd.charAt(i)!="@"))
		return false;
	else
		i+=2;
	while((i<sLength)&&(eadd.charAt(i)!=".")){
		i++;
	}
	if((i>=sLength-1)|| (eadd.charAt(i)!="."))
		return false;
	else
            return true;
    }
    function isCharsInBag(string,bag){
	var i,flag;
	flag=0;
	for(i=0;i<string.length;i++){
		var charval=string.charAt(i);
		if(bag.indexOf(charval)==-1){
			continue;
		}
		else{
			flag=1;
			break;
		}
	}
	if(flag==1) {
		return true;
	}
	else{
		return false;
	}
	return false;
    }
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
    
    function isNumberInPass(string,bag){
	var i,flag;
	flag=0;
	for(i=0;i<string.length;i++){
		var charval=string.charAt(i);
		if(bag.indexOf(charval)==-1){
			continue;
		}
		else{
			flag=1;
			break;
		}
	}
	if(flag==1) {
		return true;
	}
	else{
		return false;
	}
	return false;
    }

    function verify(){
	var flag=0;
	for(i=0;i<=7;i++){
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
                var passwd=document.forms[0].elements[2].value;
                if(passwd.length<5){
			alert("Password Must Be 5 Or More Charcters.");
			return false;
		}
		else if(!isCharsInBag(passwd,"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")) {
			alert("Password Must Have Atleast One Character.");
			return false;
		}
		
		else if(!isNumberInPass(passwd,"0123456789")){
			alert("Password Must Have Atleast One Number.");
			return false;
		}
		else if(document.forms[0].elements[2].value != document.forms[0].elements[3].value){
			alert("Your Password Does Not Match. Please Retype And Try Again.");
			return false;
		}
                var sem=document.forms[0].elements[4].value;
                if(isNaN(sem))
                    {
                       alert("Please Enter A Integer value In Sem");
                       document.forms[0].elements[4].focus();
                        return false;
                    }
                 if(sem>10 || sem<1)
                     {
                         alert("Please Enter A Valid Sem No");
                         document.forms[0].elements[4].focus();
                         return false;
                     }
		var email=document.forms[0].elements[6].value;
		if(!isEmail(email)){
			alert("Please enter a valid email address");
			document.forms[0].elements[6].focus();
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
                    <form action="adminregistration" method="post" onSubmit="return verify()">
                    <div class="registration">
                        <div style="color: blue; font-size: 30px; margin-bottom: 10px; background-color: activecaption; "><b>Admin Registration</b></div>
    
                        <table>
                            <tr><td>Full Name:</td><td><input type="text" name="name" id="FullName" placeholder="Full Name"/></td></tr>
                            <tr><td>User Name:</td><td><input type="text" name="uname" id="UserName" placeholder="Unique User Name"/></td></tr>
                            <tr><td>Password:</td><td><input type="password" name="password" id="Password" placeholder="Password"/></td></tr>
                            <tr><td>Confirm Password:</td><td><input type="password" name="confpassword" id="ConfirmPassword" placeholder="ReEnter Password"/></td></tr>
                            <tr><td>Semester:</td><td><input type="text" name="sem" id="Semester" placeholder="Semester"/></td></tr>
                            <tr><td>Address:</td><td><input type="text" name="address" id="Address" placeholder="Full Address"/></td></tr>
                            <tr><td>Email Id:</td><td><input type="text" name="email" id="EmailId" placeholder="Email"/></td></tr>
                            <tr><td>Mobile No:</td><td><input type="text" name="mobileno" id="MobileNo" placeholder="Mobile Number"/></td></tr>
                        </table>
                        <br/>
                        <input style="font-size: 25px; background-color: aqua; border-style: solid; width: 110px; border-radius: 10px; border-color: red;" type="submit" value="Submit"/>
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
