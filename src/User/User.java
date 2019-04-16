package User;

import database.UserData;

import java.sql.ResultSet;
import java.sql.SQLException;

public abstract class User {
    private String user_name;
    private String user_password;
    private boolean is_admin;
    protected UserData con;

    public User(String uname,String psd) throws SQLException, ClassNotFoundException {
        this.user_name = uname;
        this.user_password = psd;
        con = new UserData("jdbc:mysql://localhost:3306/book_manager?" +
                "characterEncoding=utf8&useSSL=false&serverTimezone=" +
                "UTC&rewriteBatchedStatements=true");
    }
    public String getUser_name(){return this.user_name;}
    public String getUser_password(){return this.user_password;}
    public void setIs_admin(boolean a){is_admin=a;}
    public void setUser_password(String psd){this.user_password = psd;}
    //登录操作
    public boolean login() throws SQLException {
        System.out.println("login");
        ResultSet set;
        if(is_admin){
            if(user_name.equals("admin")){
                return con.exist("admin")
                        .getString(2).equals(user_password);
            }else {
                return false;
            }
        }else {
            if((set=con.exist(user_name))!=null){
                return set.getString(2).equals(user_password);
            }else {
                return false;
            }
        }
    }
    public byte change_psd(String old_psd,String new_psd) throws SQLException {
        setUser_password(new_psd);
        ResultSet set;
        if ((set=con.exist(user_name))!=null) {
            String pre_psd = set.getString(2);
            if(pre_psd.equals(old_psd)){
                con.update(user_name, user_password);
                return 0;
            }else return 2;
        }else {
            return 3;
        }
    }
}
