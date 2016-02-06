
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SAURABH
 */
public class test {
    public static void main(String sa[])
    {
        Connection con;
        Statement st;
        ResultSet rs;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            st=con.createStatement();
            String query="show tables";
            rs=st.executeQuery(query);
            boolean b=rs.wasNull();
            while(rs.next())
            {
                System.out.println(rs.getString("Tables"));
            }
           
        }
        catch(Exception e)
        {
            System.out.println("Error="+e);
        }
    }
}
