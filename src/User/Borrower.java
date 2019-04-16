package User;

import Book.Book;

import java.sql.SQLException;
import java.util.Vector;

public class Borrower extends User {
    public Borrower(String uname, String psd) throws SQLException, ClassNotFoundException {
        super(uname, psd);
        super.setIs_admin(false);
    }
    //注册
    public boolean Register() throws SQLException {
        if(super.con.exist(getUser_name())!=null){
            return false;
        }else {
            con.insert(getUser_name(),getUser_password());
            return true;
        }
    }
    //借阅
    public boolean Borrrow(Book book){
        return false;
    }
    //归还
    public boolean GetBack(Book book){
        return false;
    }
    //查询
    public Vector<Book> FindBook(String info,int kind){
        Vector<Book> book_list = new Vector<Book>();
        return book_list;
    }
}
