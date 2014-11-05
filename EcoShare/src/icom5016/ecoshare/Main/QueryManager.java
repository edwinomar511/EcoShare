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

	public boolean updateQuery(String query){
		try {
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
			resultSet = statement.executeQuery("SELECT email FROM User WHERE User.email = '" + email + "';"); 
		
			if(resultSet.next())
				return true;
			else
				return false;
			
		}catch (Exception e){
			close();
			return false;
		}
	}

	
	public boolean removeUser(String userID){
		return false;

	}

	public boolean close(){
		try {
			statement.close();
		} catch (SQLException e) {
			return false;
		}
		return true;		
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
