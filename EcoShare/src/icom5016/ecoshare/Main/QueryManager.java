package icom5016.ecoshare.Main;

import java.sql.*;
import java.util.ArrayList;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.apache.tomcat.jdbc.pool.PoolProperties;

public class QueryManager {

	private Connection connect = null;
	private Statement statement = null;
	private ResultSet resultSet = null;
	private String status = null;

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

	public ResultSet findRide(String query){	 
		try {
			statement = connect.createStatement();
			resultSet = statement.executeQuery(query); 

		} catch (Exception e) {
			return null;
		}
		return resultSet;
	}

	public boolean addRide(String[] ride){
		return false;	
	}

	public boolean removeRide(String rideID){
		return false;
	}

	public boolean addUser(String[] user){
		return false;

	}

	public boolean removeUser(String userID){
		return false;

	}

	public String getStatus() {
		return status;

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
			
		}		
		return result;
	}
}
