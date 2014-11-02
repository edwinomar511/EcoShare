package icom5016.ecoshare.Main;

public class Ride {
	private String rideID;
	private String from;
	private String to;
	private double price;
	private String time;
	private String date;
	private String comment;

	public Ride(String rideID, String from, String to, double price, String time, String date, String comment) {
		this.rideID = rideID;
		this.from = from;
		this.to = to;
		this.price = price;
		this.time = time;
		this.date = date;
		this.comment = comment;
	}
	/**
	 * @return the comment
	 */
	public String getComment() {
		return comment;
	}
	/**
	 * @param comment the comment to set
	 */
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	/**
	 * @return the rideID
	 */
	public String getRideID() {
		return rideID;
	}

	/**
	 * @param rideID the rideID to set
	 */
	public void setRideID(String rideID) {
		this.rideID = rideID;
	}
}

