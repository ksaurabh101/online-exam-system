/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SAURABH
 */
public class answersubmit extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String q1=request.getParameter("q1");
        String q2=request.getParameter("q2");
        String q3=request.getParameter("q3");
        
        HttpSession session=request.getSession();
        
        String qno1=(String)session.getAttribute("qno1");
        String qno2=(String)session.getAttribute("qno2");
        String qno3=(String)session.getAttribute("qno3");
        
        String user=(String) session.getAttribute("user");
        String scode=(String) session.getAttribute("scode");
        
        Connection con;
        Statement st;
        ResultSet rs;
        try
            {
               Class.forName("com.mysql.jdbc.Driver");
               con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
               st=con.createStatement();
               
               String query;
               if(q1!=null)
                 {
                   query="insert into useranswer values('"+user+"', '"+scode+"', '"+qno1+"', '"+q1+"')";
                   st.executeUpdate(query);
                 }
               
               if(q2!=null)
                 {
                   query="insert into useranswer values('"+user+"', '"+scode+"', '"+qno2+"', '"+q2+"')";
                   st.executeUpdate(query);
                 }
               if(q3!=null)
                 {
                   query="insert into useranswer values('"+user+"', '"+scode+"', '"+qno3+"', '"+q3+"')";
                   st.executeUpdate(query);
                 }
               session.setAttribute("secondcounter", 1);
               response.sendRedirect("showpaper1.jsp");
             }
        catch(Exception e)
             {
               out.println("Error="+e);
             }
                    
                        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
