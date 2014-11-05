package icom5016.ecoshare.Main;

import java.sql.*;
import java.util.ArrayList;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.apache.tomcat.jdbc.pool.PoolProperties;

public class QueryManager {

	private Connection connect = null;
	private Statement statement = null;
	private ResultSet resultSet = null;

	public QueryManager(){
		DataSource ds = new DataSource();
		PoolProperties p = new PoolProperties();
		p.setUrl("jdbc:mysql://localhost:3306/EcoShare");
		p.setDriverClassName("com.mysql.jdbc.Driver");
		p.setUsername("root");
		p.setPassword("t12uprmicom");
		p.setJdbcInterceptors("org.apache.tomcat.jdbc.pool.interceptor.ConnectionState;"+
				"org.apache.tomcat.jdbc.pool.interceptor.StatementFinalizer");
		try {
			ds.setPoolProperties(p);
			connect = ds.getConnection();
		} catch (SQLException e) {
			
		}
	}

	public ArrayList<String[]> findRide(String query){	 
		try {
			statement = connect.createStatement();
			resultSet = statement.executeQuery(query); 

		} catch (Exception e) {
			return null;
		}
		return toList(resultSet);
	}

	public boolean ShareRide(String query, String rideID, String email){
		String share = "INSERT INTO Share (ride_id, user_id) VALUES ('" + rideID + "', '";
		ResultSet rs = null;
		/*try {
			statement = connect.createStatement();
			rs = statement.executeQuery("SELECT user_id FROM User WHERE User.email == " + email + ";");
			if(rs.next())
			{
				share = share + rs.getString("user_id") + "');";
			}
			else{
				return false;
			}
			
		} catch (Exception e) {
			return false;
		}	*/
		
		try {
			//statement = connect.createStatement();
			//statement.executeQuery(share);
			System.out.println(query);
			statement = connect.createStatement();
			statement.executeUpdate(query); 

		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean removeRide(String rideID){
		return false;
	}
	
	public boolean verifyUser(String email){
		try {
			statement = connect.createStatement();
			resultSet = statement.executeQuery("SELECT * FROM User WHERE User.email == '" + email + "';"); 

		} catch (Exception e) {
			return false;
		}	
		return true;
	}

	public boolean addUser(String[] user){
		String query1 = "INSERT INTO User (user_id, name, email, telephone) VALUES (";
		String query2 = "INSERT INTO Car (";
		for(String s: user)
			query1 = query1 + s + ", ";
		
		try {
			statement = connect.createStatement();
			resultSet = statement.executeQuery(query1); 

		} catch (Exception e) {
			return false;
		}
		
		
		
		try {
			statement = connect.createStatement();
			resultSet = statement.executeQuery(query2); 

		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean removeUser(String userID){
		return false;

	}
		
	public String close(){
		try {
			statement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return e.getMessage();
		}
		return "closed";		
	}
	
	private ArrayList<String[]> toList(ResultSet rs){
		ArrayList<String[]> result = new ArrayList<String[]>();
		String[] currentRide = new String[7];
		try {
			while(rs.next())
			{
				currentRide[0] = rs.getString("ride_id");
				currentRide[1] = rs.getString("from_location");
				currentRide[2] = rs.getString("to_location");
				currentRide[3] = rs.getDate("date").toString();
				currentRide[4] = rs.getTime("time").toString();
				currentRide[5] = rs.getDouble("price")+"";
				currentRide[6] = rs.getString("comment");
				result.add(currentRide);
			}
		} catch (SQLException e) {
			
		}finally{
			close();
		}
		
		return result;
	}
}
