package User;

import database.GetConnection;

import java.sql.SQLException;

public class Admin extends User {
    public Admin(String uname, String psd) throws SQLException, ClassNotFoundException {
        super(uname, psd);
        super.setIs_admin(true);
    }

    public boolean add_book(){
        return false;
    }
}
