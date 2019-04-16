package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;

public class UserData extends GetConnection {
    public UserData(String url) throws SQLException, ClassNotFoundException {
        super(url);
    }

    //判断是否存在
    public ResultSet exist(String uname) throws SQLException {
        String sql = "select * from user where user.uname='"+uname+"'";
        Statement statement = con.createStatement();
        ResultSet set = statement.executeQuery(sql);
        if(!set.first()){
            return null;
        }else {
            return set;
        }
    }

    //插入新用户uname密码upsd
    public void insert(String uname, String upsd) throws SQLException {
        String sql = "insert into user(uname,upsd) values (?,?)";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, uname);
        statement.setString(2, upsd);
        int i=statement.executeUpdate();
        statement.close();
    }
    //修改用户名为uname的密码为upsd
    public void update(String uname,String upsd) throws SQLException {
        Calendar calendar = Calendar.getInstance();
        String sql = "update user set upsd='" + upsd + "' where uname = '" + uname + "'";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.executeUpdate(sql);
        statement.close();
    }
}
