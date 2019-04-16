package database;

import java.sql.*;

//封装类链接数据库
public class GetConnection {
    private String user = "root";//数据库用户名
    private String psd = "wulinze1998";//数据库密码
    private String drive = "com.mysql.cj.jdbc.Driver";//数据库驱动
    protected Connection con=null;
    public GetConnection(String url) throws SQLException, ClassNotFoundException {

        ConnectWith(url);//根据url链接数据库
    }
    public Connection ConnectWith(String url) throws ClassNotFoundException, SQLException {
        if(con != null && !con.isClosed()){
            con.close();
        }
        try{
            Class.forName(drive);
            con = DriverManager.getConnection(url,user,psd);
            return con;//返回链接
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
