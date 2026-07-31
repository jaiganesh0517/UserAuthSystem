import java.io.IOException;
import java.sql.Connection;       // <-- use this one
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
           
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getDBConnection() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/servlet";
        String userName = "root";
        String password = "Jai0505";
        return DriverManager.getConnection(url, userName, password);
    }

    public static void closeResources(Connection connect, Statement stmt) throws SQLException, IOException {
        if (connect != null) connect.close();
        if (stmt != null) stmt.close();
    }
}
