import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.sql.*;

/*
 * @author Anuj Kumar & Team
 */

public class Step1Action extends HttpServlet
 {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
     {
        String      fname = req.getParameter("fname");
        String      mname = req.getParameter("mname");
        String      lname = req.getParameter("lname");
        String      father = req.getParameter("father");
        String      mother = req.getParameter("mother");
        String      dob = req.getParameter("dob");
        String      marital = req.getParameter("marital");
        String      literacy = req.getParameter("literacy");
        String      add1 = req.getParameter("add1");
        String      add2 = req.getParameter("add2");
        String      qupto = req.getParameter("qupto");
        
        HttpSession ses = req.getSession(true);
        String      UID = (String)ses.getAttribute("UID");
        String      CardNo = (String)ses.getAttribute("CardNo");
        String      RegNo = (String)ses.getAttribute("RegNo");
        
        PrintWriter out = resp.getWriter();
        
        
        
        try
         {
            Connection  con = MyConnection.connect();
            Statement   st = con.createStatement();
            
            String      AADHAAR_No="", ZIP="", E_ID="";
            ResultSet   rs1 = st.executeQuery("select ZIP from Add3");
            if(rs1.next())
             {
                ZIP = rs1.getString(1);
            }
            ResultSet   rs2 = st.executeQuery("select AADHAAR_No from AADHAAR where AADHAAR_No='"+UID+"'");
            if(rs2.next())
             {
                AADHAAR_No = rs2.getString(1);
            }
            ResultSet   rs3 = st.executeQuery("select E_ID from VoterID where E_ID='"+UID+"'");
            if(rs3.next())
             {
                E_ID = rs3.getString(1);
            }
                      
            int     r = st.executeUpdate("insert into Person (RegNo, AADHAAR_No, E_ID, CardNo, ZIP,"
                            + "fName, mName, lName, Father, Mother, DOB, M_status, Literacy, Add1, Add2, Qupto)"
                            + " values('"+RegNo+"','"+AADHAAR_No+"','"+E_ID+"','"+CardNo+"','"+ZIP+"','"+fname+"','"+mname+"','"+lname+"'"
                            + ",'"+father+"','"+mother+"','"+dob+"','"+marital+"','"+literacy+"','"+add1+"','"+add2+"','"+qupto+"')");
            
            
            resp.sendRedirect("Thank You.jsp");
        }
        catch(Exception e)
         {
            out.println("<br>Hello! <b>"+e.getMessage()+"</b>");
        }
    }
}