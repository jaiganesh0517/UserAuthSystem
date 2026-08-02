import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.mindrot.jbcrypt.BCrypt;

public class Model 
{
    private String Name;
    private String City;
    private String EmailId;
    private String Password;
	private PreparedStatement pstmnt = null;
	private Connection connect = null;
	private int row;
	private ResultSet rs = null;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
    
	public int register()
	{
		try {
			 connect  = (Connection) JdbcUtil.getDBConnection();
			 String sql = "INSERT INTO personalinfo (Name ,City ,EmailId,Password)VALUES(?,?,?,?)";
			 pstmnt = connect.prepareStatement(sql);
			 pstmnt.setString(1,Name);
			 pstmnt.setString(2, City);
			 pstmnt.setString(3, EmailId);
			 pstmnt.setString(4,Password);
			 row = pstmnt.executeUpdate();
			 
		} catch (SQLException e) {
			
			e.printStackTrace();
		}	
		finally
		{
			try {
				JdbcUtil.closeResources(connect, pstmnt);
			} catch (SQLException | IOException e) {
				
				e.printStackTrace();
			}
		}
		return row;
		
	}
	public boolean login(String emailId, String password) {
	    boolean isValidUser = false;
	    try {
	        connect = JdbcUtil.getDBConnection();
	        String sql = "SELECT * FROM personalinfo WHERE EmailId=?";
	        pstmnt = connect.prepareStatement(sql);
	        pstmnt.setString(1, emailId);
	        rs = pstmnt.executeQuery();

	        if (rs.next()) {                              
	            String storedHash = rs.getString("Password"); 
	            
	            boolean isMatch = BCrypt.checkpw(password, storedHash);
	            if (isMatch) {
	                isValidUser = true;
	            }
	        }
	       

	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            JdbcUtil.closeResources(connect, pstmnt);
	        } catch (SQLException | IOException e) {
	            e.printStackTrace();
	        }
	    }
	    return isValidUser;
	}
}
