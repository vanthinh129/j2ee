package model;
import java.sql.Timestamp;
public class Bill {
    private long billID;
    private long userID;
    private double total;
    private String payment;
    private String address;
    private String phone;
    private int status;
    private Timestamp date;
    public Bill() {
    }
    public Bill(long billID, long userID, double total, String payment, String address, String phone, int status, Timestamp date) {
        this.billID = billID;
        this.userID = userID;
        this.total = total;
        this.payment = payment;
        this.address = address;
        this.phone = phone;
        this.status = status;
        this.date = date;
    }
    public long getBillID() {
        return billID;
    }
    public void setBillID(long billID) {
        this.billID = billID;
    }
    public long getUserID() {
        return userID;
    }
    public void setUserID(long userID) {
        this.userID = userID;
    }
    public double getTotal() {
        return total;
    }
    public void setTotal(double total) {
        this.total = total;
    }
    public String getPayment() {
        return payment;
    }
    public void setPayment(String payment) {
        this.payment = payment;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public int getStatus() {
        return status;
    }
    public void setStatus(int status) {
        this.status = status;
    }
    public Timestamp getDate() {
        return date;
    }
    public void setDate(Timestamp date) {
        this.date = date;
    }
    
}
