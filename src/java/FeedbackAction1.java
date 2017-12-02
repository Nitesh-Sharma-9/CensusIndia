import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/*
 * @author Anuj Kumar & Team
 */

public class FeedbackAction1 extends HttpServlet
 {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
     {
        String          loginID = req.getParameter("loginID");
        String          password = req.getParameter("pass");
        
        HttpSession     ses = req.getSession(true);
        String          UID = (String)ses.getAttribute("UID");
        String          CardNo = (String)ses.getAttribute("CardNo");
        String          RegNo = (String)ses.getAttribute("RegNo");
                
        PrintWriter     out = resp.getWriter();
        
        //out.println("UID="+UID);
        //out.println("CardNo="+CardNo);// test statements
        
        try
         {
            Connection  con = MyConnection.connect();
            Statement   st = con.createStatement();
            
            ResultSet   rs = st.executeQuery("select RegNo, Pass from Login where RegNo='"+loginID+"'and Pass='"+password+"'");
            
            if(rs.next())
             {
                ses.setAttribute("UID", UID);
                ses.setAttribute("CardNo", CardNo);
                ses.setAttribute("RegNo", RegNo);
                req.getRequestDispatcher("Feedback.jsp").forward(req, resp);//resp.sendRedirect("Intermediary.jsp");
            }
            else
             {
                out.println("You have provided invalid credentials!!");//out.println("RegNo="+loginID);out.println("Password"+password);
            }
        }
        catch(Exception e)
         {
            out.println("<br>Hello! <b>"+e.getMessage()+"</b>");
        }
    }
}