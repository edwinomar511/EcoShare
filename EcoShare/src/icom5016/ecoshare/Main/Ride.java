package icom5016.ecoshare.Main;

public class Ride {
	
	private String from;
	private String to;
	private double price;
	private String time;
	private String date;
	public Ride(String from, String to, double price, String time, String date) {
		super();
		this.from = from;
		this.to = to;
		this.price = price;
		this.time = time;
		this.date = date;
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
	
	

}
