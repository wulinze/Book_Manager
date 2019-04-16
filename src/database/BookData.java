package database;

import java.sql.SQLException;

public class BookData extends GetConnection{
    public BookData(String url) throws SQLException, ClassNotFoundException {
        super(url);
    }
    public boolean exist(String bid){
        return false;
    }
}
