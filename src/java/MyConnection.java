import java.sql.*;
/*
 * @author Anuj Kumar & Team
 */

public class MyConnection
 {
	public static Connection connect() throws Exception
     {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/Census","root", "");
    }
}