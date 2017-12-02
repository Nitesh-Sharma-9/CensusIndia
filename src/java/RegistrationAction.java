import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/*
 * @author Anuj Kumar & Team
 */

public class RegistrationAction extends HttpServlet
 {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
     {
        String          uid = req.getParameter("uid");
        String          r_card = req.getParameter("r_card");
        String          pass1 = req.getParameter("pass1");
        String          pass2 = req.getParameter("pass2");
        
        PrintWriter     out = resp.getWriter();
        
        //out.println("<b>"+uid+"</b>");// test statement
            boolean     flag1 = false;
            boolean     flag2 = false;
            boolean     flag3 = false;
            
        try
         {
            Connection  con = MyConnection.connect();
            Statement   st = con.createStatement();
            
            ResultSet   AADHAAR_No = st.executeQuery("select AADHAAR_NO from AADHAAR");
             while(AADHAAR_No.next())
             {
                if(uid.equals(AADHAAR_No.getString(1)))
                 {
                    out.println("<b><br>"+AADHAAR_No.getString(1)+"</b>");
                    flag1 = true;
                    break;
                }
            }
            
        
           
            
            ResultSet   E_ID = st.executeQuery("select E_ID from VoterID");
            //out.println("<b><br>hiii</b>");
                        
            if(!flag1)
             {
                while(E_ID.next())
                 {
                    if(uid.equals(E_ID.getString(1)))
                     {
                        flag1 = true;
                        break;
                    }
                }
            }
            
            if(!flag1)
             {
                out.println("<b>Invalid AADHAAR No. or Voter-ID number</b>");
            }
            
            ResultSet   CardNo = st.executeQuery("select CardNo from RationCard");
            
            while(CardNo.next())
             {
                if(r_card.equals(CardNo.getString(1)))
                 {
                    flag2 = true;
                    break;
                }
            }
            
            if(!flag2)
             {
                out.println("<b>Invalid Ration Card Number.</b>");
            }
            
            if(!pass1.equals(pass2))
             {
                out.println("Passwords are not same");
            }
            else
             {
                flag3 = true;
            }
            
            String  s = "", s2 = "";
            int     count;
            ResultSet   RegNo;
            if(flag1 && flag2 && flag3)
             {
                int     r = st.executeUpdate("insert into Registration values('"+uid+"','"+r_card+"')");
                
                RegNo = st.executeQuery("select count(RegNo) from Login");
                
                if(RegNo.next())
                 {
                    out.println("<b><br>s="+s+"RegNo.getString(1):"+RegNo.getString(1)+"</b>");
                    count = RegNo.getInt(1);
                    if(count==0)
                     {
                        s2 = "BSR10001";
                        out.println("<b><br>s2="+s2+"</b>");
                    }
                    else
                     {
                        s2 = "BSR"+(10001+count);
                    }
                }
                
                
                int     r1 = st.executeUpdate("insert into Login values('"+s2+"','"+pass1+"')");
                
                HttpSession     ses = req.getSession(true);
                ses.setAttribute("UID", uid);
                ses.setAttribute("CardNo", r_card);
                ses.setAttribute("loginID", s2);
                req.getRequestDispatcher("Intermediary.jsp").forward(req, resp);
            }
        }
        catch(Exception e)
        {
            out.println("<br>Hello! <b>"+e.getMessage()+"</b>");
        }
    }
}