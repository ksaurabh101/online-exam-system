package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class adminregistration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/bar.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/menu.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Online Test Exam</title>\r\n");
      out.write("        <link rel=\"icon\" href=\"resources/images/icon.jpg\" type=\"image/jpg\"/>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link href=\"resources/css/main.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"resources/css/register.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"resources/css/login.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        \r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("      function isEmail(eadd){\r\n");
      out.write("        var i=1;\r\n");
      out.write("\tvar sLength=eadd.length;\r\n");
      out.write("\twhile((i<sLength) && (eadd.charAt(i)!=\"@\")){\r\n");
      out.write("\t\ti++;\r\n");
      out.write("\t}\r\n");
      out.write("\tif((i>=sLength)|| (eadd.charAt(i)!=\"@\"))\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\telse\r\n");
      out.write("\t\ti+=2;\r\n");
      out.write("\twhile((i<sLength)&&(eadd.charAt(i)!=\".\")){\r\n");
      out.write("\t\ti++;\r\n");
      out.write("\t}\r\n");
      out.write("\tif((i>=sLength-1)|| (eadd.charAt(i)!=\".\"))\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\telse\r\n");
      out.write("            return true;\r\n");
      out.write("    }\r\n");
      out.write("    function isCharsInBag(string,bag){\r\n");
      out.write("\tvar i,flag;\r\n");
      out.write("\tflag=0;\r\n");
      out.write("\tfor(i=0;i<string.length;i++){\r\n");
      out.write("\t\tvar charval=string.charAt(i);\r\n");
      out.write("\t\tif(bag.indexOf(charval)==-1){\r\n");
      out.write("\t\t\tcontinue;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse{\r\n");
      out.write("\t\t\tflag=1;\r\n");
      out.write("\t\t\tbreak;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tif(flag==1) {\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("\telse{\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\treturn false;\r\n");
      out.write("    }\r\n");
      out.write("    function isRollNo(string,bag)\r\n");
      out.write("    {\r\n");
      out.write("        var i;\r\n");
      out.write("        if(string.length!=11)\r\n");
      out.write("            {\r\n");
      out.write("                return false;\r\n");
      out.write("            }\r\n");
      out.write("        for(i=0;i<bag.length;i++)\r\n");
      out.write("            {\r\n");
      out.write("                if(string.charAt(i)!= bag.charAt(i))\r\n");
      out.write("                    {\r\n");
      out.write("                        \r\n");
      out.write("                        return false;\r\n");
      out.write("                    }\r\n");
      out.write("            }\r\n");
      out.write("            return true;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    function isNumberInPass(string,bag){\r\n");
      out.write("\tvar i,flag;\r\n");
      out.write("\tflag=0;\r\n");
      out.write("\tfor(i=0;i<string.length;i++){\r\n");
      out.write("\t\tvar charval=string.charAt(i);\r\n");
      out.write("\t\tif(bag.indexOf(charval)==-1){\r\n");
      out.write("\t\t\tcontinue;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse{\r\n");
      out.write("\t\t\tflag=1;\r\n");
      out.write("\t\t\tbreak;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tif(flag==1) {\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("\telse{\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\treturn false;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    function verify(){\r\n");
      out.write("\tvar flag=0;\r\n");
      out.write("\tfor(i=0;i<=7;i++){\r\n");
      out.write("\t\tif(document.forms[0].elements[i].value==\"\"){\r\n");
      out.write("\t\t\talert(\"Please fill in the \"+ document.forms[0].elements[i].id +\" field\");\r\n");
      out.write("\t\t\tdocument.forms[0].elements[i].focus();\r\n");
      out.write("                        document.forms[0].elements[i].style.backgroundColor=\"#ee5c86\";\r\n");
      out.write("\t\t\tflag=1;\r\n");
      out.write("\t\t\tbreak;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tif(flag==1){\r\n");
      out.write("\t\treturn(false);\r\n");
      out.write("\t}\r\n");
      out.write("\tif(flag==0){\r\n");
      out.write("                var passwd=document.forms[0].elements[2].value;\r\n");
      out.write("                if(passwd.length<5){\r\n");
      out.write("\t\t\talert(\"Password Must Be 5 Or More Charcters.\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(!isCharsInBag(passwd,\"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\")) {\r\n");
      out.write("\t\t\talert(\"Password Must Have Atleast One Character.\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\telse if(!isNumberInPass(passwd,\"0123456789\")){\r\n");
      out.write("\t\t\talert(\"Password Must Have Atleast One Number.\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(document.forms[0].elements[2].value != document.forms[0].elements[3].value){\r\n");
      out.write("\t\t\talert(\"Your Password Does Not Match. Please Retype And Try Again.\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("                var sem=document.forms[0].elements[4].value;\r\n");
      out.write("                if(isNaN(sem))\r\n");
      out.write("                    {\r\n");
      out.write("                       alert(\"Please Enter A Integer value In Sem\");\r\n");
      out.write("                       document.forms[0].elements[4].focus();\r\n");
      out.write("                        return false;\r\n");
      out.write("                    }\r\n");
      out.write("                 if(sem>10 || sem<1)\r\n");
      out.write("                     {\r\n");
      out.write("                         alert(\"Please Enter A Valid Sem No\");\r\n");
      out.write("                         document.forms[0].elements[4].focus();\r\n");
      out.write("                         return false;\r\n");
      out.write("                     }\r\n");
      out.write("\t\tvar email=document.forms[0].elements[6].value;\r\n");
      out.write("\t\tif(!isEmail(email)){\r\n");
      out.write("\t\t\talert(\"Please enter a valid email address\");\r\n");
      out.write("\t\t\tdocument.forms[0].elements[6].focus();\r\n");
      out.write("                        return false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\treturn(true);\r\n");
      out.write("    }\r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body class=\"wrapper\">\r\n");
      out.write("    <center>\r\n");
      out.write("        <div class=\"main\">\r\n");
      out.write("            <div class=\"bar\" id=\"bar\">\r\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("                <div style=\"float: left; width: 580px; margin: 8px 0px 5px 200px; font-size: 20px;\"><marquee behavior=\"alternate\"  direction=\"left\" style=\"text-align:center;\">ABV-IIITM Online Test Exam</marquee></div>\n");
      out.write("                ");

                    String admin=(String) session.getAttribute("admin");
                    String user=(String) session.getAttribute("user");
                    Connection con;
                    Statement st;
                    ResultSet rs;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                        st=con.createStatement();
                        if(admin!=null)
                        {
                            String query="select * from admin where uname='"+admin+"'";
                            rs=st.executeQuery(query);
                            if(rs.next())
                            {
                                String name=rs.getString("name");
                                
      out.write("\n");
      out.write("                                <div  style=\" float: right; margin-right: 10px;  font-size: 20px; margin-top: 15px; width: auto;\"><p>Welcome Mr ");
      out.print(name );
      out.write("</p></div>\n");
      out.write("                                ");
    
                            }
                        }
                        if(user!=null)
                        {
                            String query="select * from user where rollno='"+user+"'";
                            rs=st.executeQuery(query);
                            if(rs.next())
                            {
                                String name=rs.getString("name");
                                
      out.write("\n");
      out.write("                                <div style=\" float: right; margin-right: 10px;  font-size: 20px; margin-top: 15px; width: auto;\"><p>Welcome Mr ");
      out.print(name );
      out.write("</p></div>\n");
      out.write("                                ");
    
                            }
                        }
                        
                    }
                    catch(Exception e)
                        {
                            out.println("Error="+e);
                        }
                     
      out.write("\n");
      out.write("                </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"header\">\r\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\" style=\"background-image: url(resources/images/header.jpg);\"></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"body\" style=\"background-image: url(resources/images/background.jpg);\">\r\n");
      out.write("                <div id=\"menu\">\r\n");
      out.write("                    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"menu\">\n");
      out.write("            <div class=\"menubar\">\n");
      out.write("               <ul>\n");
      out.write("                  <li><a href=\"home.jsp\">HOME</a></li>\n");
      out.write("                  <li><a href=\"admin.jsp\">ADMIN</a></li>\n");
      out.write("                  <li><a href=\"user.jsp\">USER</a></li>\n");
      out.write("                  <li><a href=\"notice.jsp\">NOTICE</a></li>\n");
      out.write("                  <li><a href=\"exam.jsp\">EXAM</a></li>\n");
      out.write("                  <li><a href=\"showresult.jsp\">RESULT</a></li>\n");
      out.write("                  <li><a href=\"feedback.jsp\">FEEDBACK</a></li>\n");
      out.write("                  <li><a href=\"signout.jsp\">SIGN OUT</a></li>\n");
      out.write("                  <li><a href=\"contact.jsp\">CONTACT US</a></li>\n");
      out.write("                  <li><a href=\"report.jsp\">EXAM REPORT</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"contents\">\r\n");
      out.write("                    <form action=\"adminregistration\" method=\"post\" onSubmit=\"return verify()\">\r\n");
      out.write("                    <div class=\"registration\">\r\n");
      out.write("                        <div style=\"color: blue; font-size: 30px; margin-bottom: 10px; background-color: activecaption; \"><b>Admin Registration</b></div>\r\n");
      out.write("    \r\n");
      out.write("                        <table>\r\n");
      out.write("                            <tr><td>Full Name:</td><td><input type=\"text\" name=\"name\" id=\"FullName\" placeholder=\"Full Name\"/></td></tr>\r\n");
      out.write("                            <tr><td>User Name:</td><td><input type=\"text\" name=\"uname\" id=\"UserName\" placeholder=\"Unique User Name\"/></td></tr>\r\n");
      out.write("                            <tr><td>Password:</td><td><input type=\"password\" name=\"password\" id=\"Password\" placeholder=\"Password\"/></td></tr>\r\n");
      out.write("                            <tr><td>Confirm Password:</td><td><input type=\"password\" name=\"confpassword\" id=\"ConfirmPassword\" placeholder=\"ReEnter Password\"/></td></tr>\r\n");
      out.write("                            <tr><td>Semester:</td><td><input type=\"text\" name=\"sem\" id=\"Semester\" placeholder=\"Semester\"/></td></tr>\r\n");
      out.write("                            <tr><td>Address:</td><td><input type=\"text\" name=\"address\" id=\"Address\" placeholder=\"Full Address\"/></td></tr>\r\n");
      out.write("                            <tr><td>Email Id:</td><td><input type=\"text\" name=\"email\" id=\"EmailId\" placeholder=\"Email\"/></td></tr>\r\n");
      out.write("                            <tr><td>Mobile No:</td><td><input type=\"text\" name=\"mobileno\" id=\"MobileNo\" placeholder=\"Mobile Number\"/></td></tr>\r\n");
      out.write("                        </table>\r\n");
      out.write("                        <br/>\r\n");
      out.write("                        <input style=\"font-size: 25px; background-color: aqua; border-style: solid; width: 110px; border-radius: 10px; border-color: red;\" type=\"submit\" value=\"Submit\"/>\r\n");
      out.write("                    </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("             \r\n");
      out.write("                <div id=\"footer\">\r\n");
      out.write("                    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"footer\" style=\"background-image: url(resources/images/footer.jpg);\">\n");
      out.write("                <div style=\"padding-top: 40px; width: 500px;\">\n");
      out.write("                    <a style=\"text-decoration: none; color: black; margin: 0px 0px 0px 90px; float: left; padding-left: 50px; padding-right: 10px;;\" href=\"home.jsp\"><b>HOME</b></a>\n");
      out.write("                    <p style=\"width: 5px; float: left;  margin-left: 0px; margin-right: 0px;\">|</p>\n");
      out.write("                    <a style=\"text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left; padding-right: 10px;\"  href=\"admin.jsp\"><b>ADMIN</b></a>\n");
      out.write("                    <p style=\"width: 5px; float: left; margin-left: 0px; margin-right: 0px;\">|</p>\n");
      out.write("                    <a style=\"text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left; padding-right: 10px;\" href=\"user.jsp\"><b>USER</b></a>\n");
      out.write("                    <p style=\"width: 5px; float: left; margin-left: 0px; margin-right: 0px;\">|</p>\n");
      out.write("                    <a style=\"text-decoration: none; color: black; margin: 0px 0px 0px 10px; float: left;\" href=\"signout.jsp\"><b>SIGN OUT</b></a>\n");
      out.write("                   \n");
      out.write("                 </div>  \n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </center>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
