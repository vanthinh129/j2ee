package model;
public class Users {
    private long userID;
    private String userFullname;
    private String userEmail;
    private String userPass;
    public Users() {
    }
    public Users(long userID, String userFullname, String userEmail, String userPass) {
        this.userID = userID;
        this.userFullname = userFullname;
        this.userEmail = userEmail;
        this.userPass = userPass;
    }
    public long getUserID() {
        return userID;
    }
    public void setUserID(long userID) {
        this.userID = userID;
    }
    public String getUserFullname() {
        return userFullname;
    }
    public void setUserFullname(String userFullname) {
        this.userFullname = userFullname;
    }
    public String getUserEmail() {
        return userEmail;
    }
    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }
    public String getUserPass() {
        return userPass;
    }
    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }    
}
